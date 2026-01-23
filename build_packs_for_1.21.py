"""

by Mingshi Yang 2025/07/10
    Convert Pool datapack, resourcepack, and Math datapack from 1.16-1.20 version to 1.21 version.
    Run this script using python. The working directory should be where the datapacks and resourcepack are located.
    NO guarantee this will successfully convert any other datapacks or resourcepacks.

"""

import os
import shutil
import re
import glob
import json
import math
from collections import defaultdict
import gc
import sys

gc.collect()

# desired version
try:
    pool_major_version = int(sys.argv[1])
    pool_minor_version = int(sys.argv[2])
except:
    pool_major_version = 21
    pool_minor_version = 11

output_dir = 'Releases_1.21'
if not os.path.isdir(output_dir):
    os.mkdir(output_dir)


print('Running Compatibility Checker...')

preset_version = pool_major_version == 21 and pool_minor_version >= 0
modify_scale_armor_stand = pool_major_version == 21 and pool_minor_version >= 2
modify_height_armor_stand = pool_major_version == 21 and pool_minor_version >= 2
modify_custom_model_data = pool_major_version == 21 and pool_minor_version >= 4
modify_pool_clickevent = pool_major_version == 21 and pool_minor_version >= 5

if pool_minor_version <= 1:
    data_version_range = [0,1]
    data_packfmt = 48
elif pool_minor_version <= 3:
    data_version_range = [2,3]
    data_packfmt = 57
elif pool_minor_version == 4:
    data_version_range = [4,4]
    data_packfmt = 61
elif pool_minor_version >= 5:
    data_version_range = [5,11]
    data_packfmt = 71

if pool_minor_version <= 1:
    res_version_range = [0,1]
    res_packfmt = 15
elif pool_minor_version <= 3:
    res_version_range = [2,3]
    res_packfmt = 18
elif pool_minor_version >= 4:
    res_version_range = [4,11]
    res_packfmt = 22



math_initial_dir = 'Math-Datapack-Squid-Workshop'
math_final_dir = os.path.join(output_dir,'Math-Datapack-Squid-Workshop-1.21')

resource_initial_dir = 'Pool-ResourcepackFolder-Squid-Workshop-1.16-1.20'
resource_final_dir = os.path.join(output_dir,'Pool-ResourcepackFolder-Squid-Workshop-1.21-build')

pool_initial_dir ='Pool-Datapack-Squid-Workshop-1.16-1.20'
pool_final_dir = os.path.join(output_dir,'Pool-Datapack-Squid-Workshop-1.21-build')

remove_built_packs = False
overwrite_built_packs = True

def get_all_file_paths(root_dir, extension=None):
    file_paths = []
    for dirpath, _, filenames in os.walk(root_dir):
        for filename in filenames:
            if extension is None or filename.lower().endswith(extension.lower()):
                full_path = os.path.join(dirpath, filename)
                file_paths.append(full_path)
    return file_paths

def process_line(line):
    if not '"clickEvent"' in line:
        return line
    # Step 1: Replace all "clickEvent" with "click_event"
    line = line.replace('"clickEvent"', '"click_event"')

    # Step 2: Initialize output and position cursor
    output = ""
    pos = 0

    while True:
        # Find next "click_event"
        click_idx = line.find('"click_event"', pos)
        if click_idx == -1:
            output += line[pos:]  # Add the rest of the line
            break

        # Add everything before "click_event"
        output += line[pos:click_idx]
        pos = click_idx

        # Find the end of the click_event object (e.g., the next "}")
        # To be safe, just copy up to and including the colon after "click_event"
        key_end = line.find(':', pos)
        if key_end == -1:
            output += line[pos:]
            break

        output += line[pos:key_end+1]
        pos = key_end+1

        # Now from current pos, find the next "value":"..." and everything in between
        next_value_match = re.search(r'"value"\s*:\s*"([^"]*)"', line[pos:])
        if not next_value_match:
            output += line[pos:]
            break

        between = line[pos:pos + next_value_match.start()]
        value_str = next_value_match.group(1)
        value_start = pos + next_value_match.start()
        value_end = pos + next_value_match.end()

        # Determine replacement key based on keywords in between
        action = "value"
        if 'run_command' in between or 'suggest_command' in between:
            action = "command"
        elif 'open_url' in between:
            action = "url"

        # Add intermediate content and the modified key
        output += between
        output += f'"{action}":"{value_str}"'

        # Move position after the old "value"
        pos = value_end
    #print('      Modified line:',output[:-1])
    return output

def is_close(vec1, vec2, tol=1e-3):
    return all(math.isclose(a, b, abs_tol=tol) for a, b in zip(vec1, vec2))

def modify_json_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # Only proceed if "display" → "head" → "scale" is safely present
    if (
        isinstance(data, dict)
        and 'display' in data
        and isinstance(data['display'], dict)
        and 'head' in data['display']
        and isinstance(data['display']['head'], dict)
        and 'scale' in data['display']['head']
    ):
        scale = data['display']['head']['scale']
        if is_close(scale, TARGET):
            print(f'    Modifying {filepath}')
            data['display']['head']['scale'] = REPLACEMENT

            with open(filepath, 'w', encoding='utf-8') as f:
                json.dump(data, f, indent=4)


print('Running Datapack and Resourcepack Builder in Directory:', os.getcwd(), '\n')
print('Copying Files...')

if os.path.isdir(math_initial_dir):
    print('  Detected Math Datapack, copying and fixing directory structures...')

    # remove
    print('  Removing',math_final_dir)
    if os.path.isdir(math_final_dir):
        shutil.rmtree(math_final_dir)

    # copy 
    print('  Creating',math_final_dir)
    shutil.copytree(math_initial_dir, math_final_dir)

    # rename
    print('  Fixing Names',math_final_dir)
    for dirpath, dirnames, filenames in os.walk(math_final_dir, topdown=False):
        for dirname in dirnames:
            if dirname == 'functions':
                old_path = os.path.join(dirpath, dirname)
                new_path = os.path.join(dirpath, 'function')
                print(f"    Renaming: {old_path} -> {new_path}")
                os.rename(old_path, new_path)
    
    print('  Success!\n')
else:
    print('  Directory Not Found:', math_initial_dir, '\n')
    pass


if os.path.isdir(resource_initial_dir):
    print('  Detected Pool Resourcepack, copying...')

    # remove
    print('  Removing all dirs')
    if remove_built_packs:
        alldirs = glob.glob('Pool-ResourcepackFolder-Squid-Workshop-1.21*')
    else:
        alldirs = [resource_final_dir]
    for final_dirs in alldirs:
        if os.path.isdir(final_dirs):
            shutil.rmtree(final_dirs)

    # copy 
    print('  Creating',resource_final_dir)
    shutil.copytree(resource_initial_dir, resource_final_dir)

    print('  Success!\n')
else:
    print('  Directory Not Found:',resource_initial_dir,'\n')
    pass


if os.path.isdir(pool_initial_dir):
    print('  Detected Pool Datapack, copying and fixing directory structures...')

    # remove
    print('  Removing all built versions')
    if remove_built_packs:
        alldirs = glob.glob('Pool-Datapack-Squid-Workshop-1.21*')
    else:
        alldirs = [pool_final_dir]
    for final_dirs in alldirs:
        if os.path.isdir(final_dirs):
            shutil.rmtree(final_dirs)

    # copy 
    print('  Creating',pool_final_dir)
    shutil.copytree(pool_initial_dir, pool_final_dir)

    # rename
    print('  Fixing Names',pool_final_dir)
    for dirpath, dirnames, filenames in os.walk(pool_final_dir, topdown=False):
        for dirname in dirnames:
            if dirname == 'functions':
                old_path = os.path.join(dirpath, dirname)
                new_path = os.path.join(dirpath, 'function')
                print(f"    Renaming: {old_path} -> {new_path}")
                os.rename(old_path, new_path)

    print('  Success!\n')
else:
    print('  Directory Not Found:',pool_initial_dir,'\n')
    pass


print('Building Pool Dapapack')

data_version_name = f'1.{pool_major_version}.{data_version_range[0]}' if len(set(data_version_range)) == 1 else \
                    f'1.{pool_major_version}.{data_version_range[0]}-1.{pool_major_version}.{data_version_range[1]}'
res_version_name = f'1.{pool_major_version}.{res_version_range[0]}' if len(set(res_version_range)) == 1 else \
                    f'1.{pool_major_version}.{res_version_range[0]}-1.{pool_major_version}.{res_version_range[1]}'


print(f'Target Version: Minecraft 1.{pool_major_version}.{pool_minor_version}')
print(f'  Suitable Datapack: {data_version_name}')
print(f'  Suitable Resourcepack: {res_version_name}')


pool_final_dir_version = os.path.join(output_dir,f'Pool-Datapack-Squid-Workshop-{data_version_name}')
if remove_built_packs:
    print('  Removing built D packs')
    if os.path.isdir(pool_final_dir_version):
        shutil.rmtree(pool_final_dir_version)
    os.rename(pool_final_dir, pool_final_dir_version)
else:
    if not os.path.isdir(pool_final_dir_version):
        os.rename(pool_final_dir, pool_final_dir_version)
    else:
        if overwrite_built_packs:
            print('  Removing built D packs due to overwrite')
            shutil.rmtree(pool_final_dir_version)
            os.rename(pool_final_dir, pool_final_dir_version)
        else:
            shutil.rmtree(pool_final_dir)

resource_final_dir_version = os.path.join(output_dir,f'Pool-ResourcepackFolder-Squid-Workshop-{res_version_name}')
if remove_built_packs:
    print('  Removing built R packs')
    if os.path.isdir(resource_final_dir_version):
        shutil.rmtree(resource_final_dir_version)
    os.rename(resource_final_dir, resource_final_dir_version)
else:
    if not os.path.isdir(resource_final_dir_version):
        os.rename(resource_final_dir, resource_final_dir_version)
    else:
        if overwrite_built_packs:
            print('  Removing built R packs due to overwrite')
            shutil.rmtree(resource_final_dir_version)
            os.rename(resource_final_dir, resource_final_dir_version)
        else:
            shutil.rmtree(resource_final_dir)

preset_version_status = 'Failed'
modify_scale_armor_stand_status = 'Failed'
modify_height_armor_stand_status = 'Failed'
modify_custom_model_data_status = 'Failed'
modify_pool_clickevent_status = 'Failed'

print(f'Required Modifications: \n' +
      f'  Configure Game Version: {preset_version}\n' + 
      f'  Rescale Armor Stand:    {modify_scale_armor_stand}\n' + 
      f'  Rise Armor Stand:       {modify_height_armor_stand}\n' + 
      f'  Fix Custom Model Data:  {modify_custom_model_data}\n'
      f'  Modify Click Event:     {modify_pool_clickevent}\n'
      )


if preset_version:
    print('  Configuring game version in Datapack for 1.21...')
    
    loadfile = os.path.join(pool_final_dir_version,'data','pool','function','classes','main','load.mcfunction')
    with open(loadfile, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    lines = [f'data merge storage minecraft:swpool {{version:[1205,1]}}\n\n'] + lines
    with open(loadfile, 'w', encoding='utf-8') as f:
        f.writelines(lines)
    
    version_settingdir = os.path.join(pool_final_dir_version,'data','app','function','settings','pool','version')
    if os.path.isdir(version_settingdir):
        shutil.rmtree(version_settingdir)
    print('  Success!\n')
    preset_version_status = 'Completed'
else:
    print('  Skipped configurating game version in Dapapack.\n')
    preset_version_status = 'Skipped'


if modify_scale_armor_stand:
    # need to fix resource pack. armor grow larger...
    print('  Fixing armor stand scale factor in Resourcepack for 1.21.2+...',)
    
    TARGET = [1.142857, 1.142857, 1.142857]
    REPLACEMENT = [1.068376, 1.068376, 1.068376]

    filenames = sorted(get_all_file_paths(resource_final_dir_version,'json'))
    print(f'  {len(filenames)} json files found.')

    for file in filenames:
        modify_json_file(file)

    print('  Success!\n')
    modify_scale_armor_stand_status = 'Completed'
else:
    print('  Skipped fixing armor stand scale factor for 1.21.2+...\n')
    modify_scale_armor_stand_status = 'Skipped'


if modify_height_armor_stand:
    print('  Fixing armor stand y position in Datapack for 1.21.3+...')

    filenames = sorted(get_all_file_paths(pool_final_dir_version,'mcfunction'))
    print(f'  {len(filenames)} mcfunction found.')

    for file in filenames:
        if 'place_1205.mcfunction' in file and 'replace_1205' not in file:
            with open(file, 'r', encoding='utf-8') as f:
                lines = f.readlines()
            lines = ['execute as @e[tag=swPool_pool,tag=!swPool_placed] at @s run tp @s ~ ~0.02 ~\n',
                     'execute as @e[tag=swPool_pool,tag=swPool_free] run scoreboard players add @s swPool_var02 200\n\n'] + lines
            with open(file, 'w', encoding='utf-8') as f:
                f.writelines(lines)
    print('  Success!\n')
    modify_height_armor_stand_status = 'Completed'
else:
    print('  Skipped fixing armor stand y position for 1.21.3+...\n')
    modify_height_armor_stand_status = 'Skipped'


if modify_custom_model_data:
    print('  Fixing custom model data for Datapack and Resourcepack for 1.21.4+...')
    minecraft_dir = os.path.join(resource_final_dir_version, 'assets', 'minecraft')
    swpool_dir = os.path.join(resource_final_dir_version, 'assets', 'swpool')

    if os.path.exists(minecraft_dir):
        print(f'  Renaming: {minecraft_dir} → {swpool_dir}')
        os.rename(minecraft_dir, swpool_dir)
    else:
        print(f'  {minecraft_dir} does not exist.')
    items_dir = os.path.join(swpool_dir, 'items')
    os.makedirs(items_dir, exist_ok=True)
    print(f'  Created Folder: {items_dir}')

    filenames = sorted(get_all_file_paths(resource_final_dir_version,'json'))
    print(f'  {len(filenames)} json files found.')

    model_item_dir = os.path.join(resource_final_dir_version,'assets','swpool','models','item')
    model_declare_dir = os.path.join(resource_final_dir_version,'assets','swpool','items')

    # get render models
    print('  Creating render items')
    with open(os.path.join(model_item_dir, 'acacia_button.json'), 'r', encoding='utf-8') as f:
        data = json.load(f)

    # find and link items
    cmd_link_render = {}
    for ovr in data['overrides'][1:-1]:
        #print(ovr)
        cmd = ovr['predicate']['custom_model_data']
        path = ovr['model']
        #print(cmd, path)
        modelname = path.split("/")[1]
        print(f'    model: {modelname}')
        cmd_link_render[cmd] = f'swpool:render_{modelname}'

        declare_file = {"model": {
                "type": "minecraft:model", "model": f"swpool:{path}"}}

        with open(os.path.join(model_declare_dir, f'render_{modelname}.json'), 'w', encoding='utf-8') as f:
            json.dump(declare_file, f, indent=4)

        # walk through directory
        modelname_edit = modelname
        depth = 0
        while True and depth < 999:
            depth += 1
            print(f'      depth = {depth}, file = {modelname_edit}')
            with open(os.path.join(model_item_dir, f'{modelname_edit}.json'), 'r', encoding='utf-8') as f:
                modeldata = json.load(f)
            if 'parent' in modeldata.keys():
                if 'swpool:' not in modeldata['parent']:
                    modeldata['parent'] = 'swpool:' + modeldata['parent']
            if 'textures' in modeldata.keys():
                for k in modeldata['textures'].keys():
                    if 'swpool:' not in modeldata['textures'][k]:
                        modeldata['textures'][k] = 'swpool:' + modeldata['textures'][k]
            with open(os.path.join(model_item_dir, f'{modelname_edit}.json'), 'w', encoding='utf-8') as f:
                json.dump(modeldata, f, indent=4)
            if 'parent' not in modeldata.keys():
                break
            else:
                modelname_edit = modeldata['parent'].split('/')[-1]


    # get object models
    print('  Creating object items')
    with open(os.path.join(model_item_dir, 'carrot_on_a_stick.json'), 'r', encoding='utf-8') as f:
        data = json.load(f)

    # find and link items
    cmd_link_object = {}
    for ovr in data['overrides'][1:-1]:
        #print(ovr)
        cmd = ovr['predicate']['custom_model_data']
        path = ovr['model']
        #print(cmd, path)
        modelname = path.split("/")[1]
        print(f'    model: {modelname}')
        cmd_link_object[cmd] = f'swpool:object_{modelname}'

        declare_file = {"model": {
                "type": "minecraft:model", "model": f"swpool:{path}"}}

        with open(os.path.join(model_declare_dir, f'object_{modelname}.json'), 'w', encoding='utf-8') as f:
            json.dump(declare_file, f, indent=4)
        # no need to walk through directory, because we have already done so

    # get cuestick model
    # modify default model
    print('  Modifying Cue stick model')
    with open(os.path.join(model_item_dir, f'bow_1.21.4.json'), 'r', encoding='utf-8') as f:
        data = json.load(f)

    thresh = [0.01,0.18,0.36,0.54,0.72,0.9]
    entries = [{'model': {'type': 'minecraft:model',
                'model': f'swpool:item/cuestick{i+1}'},
                'threshold': t} for i, t in enumerate(thresh)]
    modelnames = tuple([f'cuestick{i}' for i in range(0,7)])
    data['model']['on_false']['model'] = 'swpool:item/cuestick0'
    data['model']['on_true']['entries'] = entries

    with open(os.path.join(model_declare_dir, f'cuestick.json'), 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=4)
    
    # walk though the model files
    for modelname in modelnames:
        modelname_edit = modelname
        print(f'    model: {modelname}')
        depth = 0
        while True and depth < 999:
            depth += 1
            print(f'      depth = {depth}, file = {modelname_edit}')
            with open(os.path.join(model_item_dir, f'{modelname_edit}.json'), 'r', encoding='utf-8') as f:
                modeldata = json.load(f)
            if 'parent' in modeldata.keys():
                if 'swpool:' not in modeldata['parent']:
                    modeldata['parent'] = 'swpool:' + modeldata['parent']
            if 'textures' in modeldata.keys():
                for k in modeldata['textures'].keys():
                    if 'swpool:' not in modeldata['textures'][k]:
                        modeldata['textures'][k] = 'swpool:' + modeldata['textures'][k]
            with open(os.path.join(model_item_dir, f'{modelname_edit}.json'), 'w', encoding='utf-8') as f:
                json.dump(modeldata, f, indent=4)
            if 'parent' not in modeldata.keys():
                break
            else:
                modelname_edit = modeldata['parent'].split('/')[-1]

    #print(cmd_link_render)
    #print(cmd_link_object)

    print('  Fixing namespace for sounds')
    with open(os.path.join(model_declare_dir, '..', f'sounds.json'), 'r', encoding='utf-8') as f:
        sounddata = json.load(f)
    for k in sounddata.keys():
        sounddata[k]['sounds'][0] = 'swpool:' + sounddata[k]['sounds'][0]
    with open(os.path.join(model_declare_dir, '..', f'sounds.json'), 'w', encoding='utf-8') as f:
        json.dump(sounddata, f, indent=4)

    print('  Modifying Datapack (model and sounds)...')
    filenames = sorted(get_all_file_paths(pool_final_dir_version,'mcfunction'))
    print(f'  {len(filenames)} mcfunction found.')
    for file in filenames:
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        for i, line in enumerate(lines):
            if 'custom_model_data' in line and line[0] != '#':
                if 'bow' in line: # cue stick
                    #print(line)
                    if 'SelectedItem' in line: # nbt detection
                        parse = 'components:{'
                        d1 = line.find(parse) + len(parse)
                        d2 = line[d1:].find('}') + d1
                        newline = line[:d1] + '"minecraft:item_model":"swpool:cuestick"' + line[d2:]
                        #print(newline)
                        lines[i] = newline
                        # /execute if entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:bow",components:{"minecraft:item_model":"swpool:cuestick"}}}]
                    elif 'give' in line: # obtain item
                        parse = 'custom_model_data='
                        d1 = line.find(parse) + len(parse)
                        d2 = d1
                        while line[d2] in '0123456789':
                            d2 += 1
                        newline = line[:line.find(parse)] + 'item_model="swpool:cuestick"' + line[d2:]
                        #print(newline)
                        lines[i] = newline
                        # /give YMS2001 bow[minecraft:item_model="swpool:cuestick"]
                elif 'acacia_button' in line: # render model
                    # change to item model
                    parse1 = 'custom_model_data='
                    parse2 = 'custom_model_data":'
                    if parse1 in line:
                        d1 = line.find(parse1) + len(parse1)
                        d2 = d1
                        while line[d2] in '0123456789':
                            d2 += 1
                        itemid = int(line[d1:d2])
                        newline = line[:line.find(parse1)] + f'item_model="{cmd_link_render[itemid]}"' + line[d2:]
                        lines[i] = newline
                    elif parse2 in line:
                        d1 = line.find(parse2) + len(parse2)
                        d2 = d1
                        while line[d2] in '0123456789':
                            d2 += 1
                        itemid = int(line[d1:d2])
                        newline = line[:line.find(parse2)] + f'item_model":"{cmd_link_render[itemid]}"' + line[d2:]
                        lines[i] = newline
                    elif 'custom_model_data' in line:
                        print('    !!!! Undealt case for acacia_button',line)
                elif 'carrot_on_a_stick' in line: # object model
                    # change to item model
                    parse1 = 'custom_model_data='
                    parse2 = 'custom_model_data":'
                    if parse1 in line:
                        d1 = line.find(parse1) + len(parse1)
                        d2 = d1
                        while line[d2] in '0123456789':
                            d2 += 1
                        itemid = int(line[d1:d2])
                        newline = line[:line.find(parse1)] + f'item_model="{cmd_link_object[itemid]}"' + line[d2:]
                        lines[i] = newline
                    elif parse2 in line:
                        d1 = line.find(parse2) + len(parse2)
                        d2 = d1
                        while line[d2] in '0123456789':
                            d2 += 1
                        itemid = int(line[d1:d2])
                        newline = line[:line.find(parse2)] + f'item_model":"{cmd_link_object[itemid]}"' + line[d2:]
                        lines[i] = newline
                    elif 'custom_model_data' in line:
                        print('    !!!! Undealt case for carrot_on_a_stick',line)
        
            if 'playsound minecraft:custom' in line:
                newline = str(line)
                newline = newline.replace('playsound minecraft:custom','playsound swpool:custom')
                lines[i] = newline
        
        with open(file, 'w', encoding='utf-8') as f:
            f.writelines(lines)

    '''print('  TEMPORARY: Moving Final Files')
    resourcepacks_dir = os.path.abspath(os.path.join(resource_final_dir_version, '../../../../resourcepacks'))
    matching_folders = glob.glob(os.path.join(resourcepacks_dir, '*Pool*-1.21.4'))
    for folder in matching_folders:
        if os.path.isdir(folder):
            print(f'    Removing: {folder}')
            shutil.rmtree(folder)

    target_path = os.path.join(resourcepacks_dir, os.path.basename(resource_final_dir_version))
    print(f'    Copying: {resource_final_dir_version} → {target_path}')
    shutil.copytree(resource_final_dir_version, target_path)'''
    print('  Success!\n')
    modify_custom_model_data_status = 'Completed'
else:
    print('  Skipped fixing custom model data for Datapack and Resourcepack for 1.21.4+...\n')
    modify_custom_model_data_status = 'Skipped'


if modify_pool_clickevent:
    print('  Fixing click event related commands in Datapack for 1.21.5+...')

    filenames = sorted(get_all_file_paths(pool_final_dir_version,'mcfunction'))
    print(f'  {len(filenames)} mcfunction found.')

    print('  Checking files...')
    files_modifying = []
    for file in filenames:
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()
            if any('"clickEvent"' in line for line in lines):
                files_modifying.append(file)
    print(f'  {len(files_modifying)} files need modification.')

    print('  Modifying files...')
    for file in files_modifying:
        print('    Modifying file:',file)
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        modified_lines = [process_line(line) for line in lines]
        with open(file, 'w', encoding='utf-8') as f:
            f.writelines(modified_lines)

    print('  Setting click_event commands to triggers...')

    filenames = sorted(get_all_file_paths(pool_final_dir_version,'mcfunction'))
    print(f'  {len(filenames)} mcfunction found.')

    print('  Checking and modifying files again...')
    occurred_funcs = {}
    counter = 1

    for file in filenames:
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        new_lines = []
        for line in lines:
            if '"command":"/' not in line:
                new_lines.append(line)
                continue
            
            def replace_func(match):
                global counter
                func_str = match.group(1)  # e.g., /function xyz
                if func_str not in occurred_funcs:
                    occurred_funcs[func_str] = counter
                    counter += 1
                return f'"run_command","command":"/trigger swPool_trigger set {occurred_funcs[func_str]}"'

            # Replace all "command":"/function xxx" in line
            newline = re.sub(r'"run_command","command":"(/[^"]+)"', replace_func, line)
            new_lines.append(newline)

        with open(file, 'w', encoding='utf-8') as f:
            f.writelines(new_lines)


    print('  Constructing listener in tick function')
    tickfile = os.path.join(pool_final_dir_version,'data','pool','function','classes','main','tick.mcfunction')
    with open(tickfile, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    lines.append(f'\nscoreboard players enable @a swPool_trigger\n')
    lines.append(f'execute as @a[scores={{swPool_trigger=1..}}] at @s run function pool:classes/main/trigger\n')
    with open(tickfile, 'w', encoding='utf-8') as f:
        f.writelines(lines)

    triggerfile = os.path.join(pool_final_dir_version,'data','pool','function','classes','main','trigger.mcfunction')
    with open(triggerfile, 'w', encoding='utf-8') as f:
        lines = []
        for func_str, idx in occurred_funcs.items():
            lines.append(f'execute if score @s swPool_trigger matches {idx} run {func_str[1:]}\n')
        lines.append(f'\nscoreboard players reset @s swPool_trigger\n')
        f.writelines(lines)

    print('  Logging all triggers and modified files')
    with open(os.path.join(pool_final_dir_version,'dev_triggers.txt'), 'w', encoding='utf-8') as f:
        for func_str, idx in occurred_funcs.items():
            f.write(f'{idx} {func_str}\n')
    
    with open(os.path.join(pool_final_dir_version,'dev_modified_files.txt'), 'w', encoding='utf-8') as f:
        for file in filenames:
            f.write(f'{file}\n')


    print('  Modify area_effect_cloud data')
    for file in filenames:
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        for i, line in enumerate(lines):
            if 'summon area_effect_cloud' in line or 'summon minecraft:area_effect_cloud' in line:
                lastbracket = len(line) - line[::-1].find('}') - 1
                newline = line[:lastbracket]+',Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"' + line[lastbracket:]
                #newline = ''.join(line.splitlines())[-1] + ',Potion:"minecraft:strong_harming",Particle:"block air"}'
                lines[i] = newline
        with open(file, 'w', encoding='utf-8') as f:
            f.writelines(lines)

    print('  Modify armor items criteria')
    for file in filenames:
        if 'master' in file and 'record.mcfunction' in file:
            with open(file, 'r', encoding='utf-8') as f:
                content = f.read()
            content = content.replace('@s[nbt={ArmorItems:[{},{},{},{id:"minecraft:acacia_button"}]}]',
                                      '@s[nbt={equipment:{head:{id:"minecraft:acacia_button"}}}]')
            with open(file, 'w', encoding='utf-8') as f:
                f.write(content)


    print('  Success!\n')
    modify_pool_clickevent_status = 'Completed'
else:
    print('  Skipped fixing command syntax for 1.21.5+\n')
    modify_pool_clickevent_status = 'Skipped'


print(f'Completed Modifications: \n' +
      f'  Configure Game Version: {preset_version_status}\n' + 
      f'  Rescale Armor Stand:    {modify_scale_armor_stand_status}\n' + 
      f'  Rise Armor Stand:       {modify_height_armor_stand_status}\n' + 
      f'  Fix Custom Model Data:  {modify_custom_model_data_status}\n' +
      f'  Modify Click Event:     {modify_pool_clickevent_status}\n'
      )

print('Editing Datapack pack.mcmeta')
with open(os.path.join(pool_final_dir_version,'pack.mcmeta'), 'r', encoding='utf-8') as f:
    data = json.load(f)
data['pack']['pack_format'] = data_packfmt
data['pack']['description'] = f'[{data_version_name}' + data['pack']['description'][data['pack']['description'].find(']'):]
with open(os.path.join(pool_final_dir_version,'pack.mcmeta'), 'w', encoding='utf-8') as f:
    json.dump(data, f, indent=4)

print('Editing Resourcepack pack.mcmeta')
with open(os.path.join(resource_final_dir_version,'pack.mcmeta'), 'r', encoding='utf-8') as f:
    data = json.load(f)
data['pack']['pack_format'] = res_packfmt
data['pack']['description'] = f'[{res_version_name}' + data['pack']['description'][data['pack']['description'].find(']'):]
with open(os.path.join(resource_final_dir_version,'pack.mcmeta'), 'w', encoding='utf-8') as f:
    json.dump(data, f, indent=4)

print('Finished Making Datapack', pool_final_dir_version)
print('Finished Making Resourcepack', resource_final_dir_version)

print('Finished Running Datapack and Resourcepack Builder in Directory:', os.getcwd())