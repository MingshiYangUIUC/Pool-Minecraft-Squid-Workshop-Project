"""

by Mingshi Yang 2026/05/01
    Scan click events in the datapacks and replace normal command with trigger command, to bypass OP requirement.
    Save rewritten datapacks separately

"""

from pathlib import Path
import json
import math
import shutil
import os
import re

os.chdir(os.path.dirname(__file__))

def mcfunction_tree_ids(root):
    root = Path(root)
    ids = {}

    def width_for(n):
        return max(1, len(str(n)))

    def walk(folder, prefix=""):
        children = sorted(folder.iterdir(), key=lambda p: (p.name.lower(), p.is_file()))
        w = width_for(len(children))

        for i, child in enumerate(children, start=1):
            code = prefix + f"{i:0{w}d}"

            if child.is_dir():
                walk(child, code)
            elif child.suffix == ".mcfunction":
                ids[child.relative_to(root).as_posix()] = int(code)

    walk(root)
    return ids


ids = mcfunction_tree_ids("Pool-Datapack-Base-Squid-Workshop-1.16-1.20")

ids_mod = {}
all_vals = [ids[k] for k in ids.keys()]
for k in ids.keys():
    if '/app/' not in k and '/math/' not in k and '/pool/' not in k:
        continue
    v = ids[k]
    k2 = k.replace('/functions/',':').replace('.mcfunction','')
    if k2[:5] == 'data/':
        k2 = '/function ' + k2[5:]
    v2 = v
    if 'app:help/pool/commandwindow' in k2:
        v2 = 1
        if v2 in all_vals:
            print('Conflict! Revert to default.')
            v2 = v
    ids_mod[k2] = v2

with open("_dev_.mcfunction_tree_ids.json", "w", encoding="utf-8") as f:
    json.dump(ids_mod, f, indent=2, ensure_ascii=False)

def get_all_file_paths(root_dir, extension=None):
    file_paths = []
    for dirpath, _, filenames in os.walk(root_dir):
        for filename in filenames:
            if extension is None or filename.lower().endswith(extension.lower()):
                full_path = os.path.join(dirpath, filename)
                file_paths.append(full_path)
    return file_paths

def convert_function_call_to_triggers(pool_final_dir_version):

    print('  Setting click_event commands to triggers...')

    filenames = sorted(get_all_file_paths(pool_final_dir_version, 'mcfunction'))
    print(f'  {len(filenames)} mcfunction found.')

    print('  Checking and modifying files again...')

    occurred_funcs = {}      # func_str -> trigger id
    modified_files = []
    missing_funcs = set()

    for file in filenames:
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        changed = False
        new_lines = []

        for line in lines:
            if '"run_command","value":"/function ' not in line:
                new_lines.append(line)
                continue

            changed_this_line = [False]

            def replace_func(match):
                func_str = match.group(1)  # e.g. /function app:settings/pool/breakshot/breakpower

                if func_str not in ids_mod:
                    missing_funcs.add(func_str)
                    return match.group(0)

                occurred_funcs[func_str] = ids_mod[func_str]
                changed_this_line[0] = True

                return (
                    f'"run_command","value":'
                    f'"/trigger swPool__trigger set {ids_mod[func_str]}"'
                )

            newline = re.sub(
                r'"run_command","value":"(/function [^"]+)"',
                replace_func,
                line
            )

            if changed_this_line[0] and newline != line:
                changed = True

            new_lines.append(newline)

        if changed:
            modified_files.append(file)
            with open(file, 'w', encoding='utf-8') as f:
                f.writelines(new_lines)


    print('  Constructing listener in tick function')

    tickfile = os.path.join(
        pool_final_dir_version,
        'data', 'pool', 'functions', 'classes', 'main', 'tick.mcfunction'
    )

    with open(tickfile, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    lines.append('\nscoreboard players enable @a swPool__trigger\n')
    lines.append(
        'execute as @a[scores={swPool__trigger=1..}] '
        'at @s run function pool:classes/main/trigger\n'
    )

    with open(tickfile, 'w', encoding='utf-8') as f:
        f.writelines(lines)


    triggerfile = os.path.join(
        pool_final_dir_version,
        'data', 'pool', 'functions', 'classes', 'main', 'trigger.mcfunction'
    )

    with open(triggerfile, 'w', encoding='utf-8') as f:
        lines = []

        for func_str, idx in sorted(occurred_funcs.items(), key=lambda x: x[1]):
            lines.append(
                f'execute if score @s swPool__trigger matches {idx} run {func_str[1:]}\n'
            )

        lines.append('\nscoreboard players reset @s swPool__trigger\n')
        f.writelines(lines)


    print('  Logging all triggers and modified files')

    with open(os.path.join(pool_final_dir_version, 'dev_triggers.txt'), 'w', encoding='utf-8') as f:
        for func_str, idx in sorted(occurred_funcs.items(), key=lambda x: x[1]):
            f.write(f'{idx} {func_str}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_modified_files.txt'), 'w', encoding='utf-8') as f:
        for file in modified_files:
            f.write(f'{file}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_missing_triggers.txt'), 'w', encoding='utf-8') as f:
        for func_str in sorted(missing_funcs):
            f.write(f'{func_str}\n')

    print(f'  {len(occurred_funcs)} trigger functions used.')
    print(f'  {len(modified_files)} files modified.')
    print(f'  {len(missing_funcs)} function commands missing from ids_mod.')

def convert_scoreboard_set_to_triggers(pool_final_dir_version, variable_names):
    print('  Setting scoreboard click_event commands to triggers...')

    filenames = sorted(get_all_file_paths(pool_final_dir_version, 'mcfunction'))
    print(f'  {len(filenames)} mcfunction found.')

    if not variable_names:
        print('  No variable_names provided. Skipping scoreboard trigger conversion.')
        return

    variable_names = sorted(set(variable_names), key=len, reverse=True)
    var_pat = "|".join(re.escape(v) for v in variable_names)

    # Match:
    # "run_command","value":"/scoreboard players set @s variable_name value"
    pattern = re.compile(
        r'("(?:run_command|suggest_command)","value":")'
        r'/scoreboard players (?:set|add) @s '
        rf'({var_pat})'
        r'(?: (-?\d+)| )'
        r'(")'
    )

    modified_files = []
    occurred_vars = {}      # variable_name -> set(values)
    missing_or_skipped = []

    print('  Checking and modifying files again...')

    c_var_names = [v for v in variable_names if "swPool_C" in v]
    c_target_to_var = {v[7:]: v for v in c_var_names}  # swPool_C_mui -> C_mui

    if c_target_to_var:
        c_pattern = re.compile(
            r'("suggest_command","value":")'
            r'/scoreboard players set '
            r'(' + "|".join(re.escape(k) for k in c_target_to_var.keys()) + r') '
            r'swPool_C '
        )
    else:
        c_pattern = None

    for file in filenames:
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        changed = False
        new_lines = []

        for line in lines:
            
            is_normal = (
                '_command","value":"/scoreboard players set @s ' in line
                or '_command","value":"/scoreboard players add @s ' in line
            )
            is_swPool_C = (
                c_pattern is not None
                and '"suggest_command","value":"/scoreboard players set ' in line
                and 'swPool_C' in line
            )

            if not is_normal and not is_swPool_C:
                new_lines.append(line)
                continue

            if is_normal:
                def replace_scoreboard_set(match):
                    var_name = match.group(2)
                    value = match.group(3)

                    occurred_vars.setdefault(var_name, set()).add(value)

                    return (
                        f'{match.group(1)}'
                        f'/trigger {var_name}_trigger set {value}'
                        f'{match.group(4)}'
                    )

                newline = pattern.sub(replace_scoreboard_set, line)
                if 'None' in newline and 'suggest_command' in newline:
                    newline = newline.replace('None','')

            else:
                def replace_swPool_C_set(match):
                    c_name = match.group(2)              # e.g. C_mui
                    var_name = c_target_to_var[c_name]   # e.g. swPool_C_mui

                    occurred_vars.setdefault(var_name, set()).add("suggest")

                    return (
                        f'{match.group(1)}'
                        f'/trigger {var_name}_trigger set '
                    )

                newline = c_pattern.sub(replace_swPool_C_set, line)

            if newline != line:
                changed = True
            else:
                missing_or_skipped.append((file, line.strip()))

            new_lines.append(newline)

        if changed:
            modified_files.append(file)
            with open(file, 'w', encoding='utf-8') as f:
                f.writelines(new_lines)

    print('  Appending scoreboard trigger listeners to tick function')

    tickfile = os.path.join(
        pool_final_dir_version,
        'data', 'pool', 'functions', 'classes', 'main', 'tick.mcfunction'
    )

    with open(tickfile, 'r', encoding='utf-8') as f:
        tick_lines = f.readlines()

    def append_if_missing(lines, new_line):
        if new_line not in lines:
            lines.append(new_line)

    for var_name in variable_names:
        trigger_name = f'{var_name}_trigger'

        append_if_missing(
            tick_lines,
            f'\nscoreboard players enable @a {trigger_name}\n'
        )

        append_if_missing(
            tick_lines,
            (
                f'execute as @a[scores={{{trigger_name}=1..}}] '
                f'at @s run function pool:classes/main/triggers/{var_name.lower()}\n'
            )
        )

    with open(tickfile, 'w', encoding='utf-8') as f:
        f.writelines(tick_lines)

    print('  Constructing scoreboard trigger listener functions')

    trigger_dir = os.path.join(
        pool_final_dir_version,
        'data', 'pool', 'functions', 'classes', 'main', 'triggers'
    )

    os.makedirs(trigger_dir, exist_ok=True)

    for var_name in variable_names:
        trigger_name = f'{var_name}_trigger'

        triggerfile = os.path.join(trigger_dir, f'{var_name.lower()}.mcfunction')

        with open(triggerfile, 'w', encoding='utf-8') as f:
            lines = []
            lines.append(f'tellraw @s [{{"text":"Activating trigger {trigger_name}"}}]\n')
            if 'swPool_Score' in var_name: # add to Score, scoreboard players add @s ...
                lines.append(
                    f'scoreboard players operation @s {var_name} += @s {trigger_name}\n'
                )
            elif 'swPool_C' in var_name:
                vn = var_name[7:]
                lines.append(
                    f'scoreboard players operation {vn} swPool_C = @s {trigger_name}\n'
                )
            else:
                lines.append(
                    f'scoreboard players operation @s {var_name} = @s {trigger_name}\n'
                )
            lines.append(
                f'\nscoreboard players reset @s {trigger_name}\n'
            )
            f.writelines(lines)

    print('  Logging scoreboard trigger changes')

    with open(os.path.join(pool_final_dir_version, 'dev_scoreboard_triggers.txt'), 'w', encoding='utf-8') as f:
        for var_name in variable_names:
            values = occurred_vars.get(var_name, set())

            values = sorted(
                values,
                key=lambda x: int(x) if str(x).lstrip("-").isdigit() else 10**20
            )

            f.write(f'{var_name}_trigger -> {var_name}\n')
            f.write(f'  values: {", ".join(map(str, values)) if values else "(not used)"}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_scoreboard_trigger_modified_files.txt'), 'w', encoding='utf-8') as f:
        for file in modified_files:
            f.write(f'{file}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_scoreboard_trigger_skipped_lines.txt'), 'w', encoding='utf-8') as f:
        for file, line in missing_or_skipped:
            f.write(f'{file}: {line}\n')

    print(f'  {len(modified_files)} files modified.')
    print(f'  {len(occurred_vars)} scoreboard variables converted.')


def get_datapack_tree_roots(pool_final_dir_version):
    """
    Return all datapack tree roots:
      root/
      root/vx_vy/
    where each tree root contains its own data/ folder.
    """
    root = Path(pool_final_dir_version)
    tree_roots = []

    if (root / "data").is_dir():
        tree_roots.append(root)

    for child in sorted(root.iterdir(), key=lambda p: p.name.lower()):
        if child.is_dir() and (child / "data").is_dir():
            tree_roots.append(child)

    return tree_roots

def get_all_mcfunction_files_in_trees(pool_final_dir_version):
    filenames = []

    for tree_root in get_datapack_tree_roots(pool_final_dir_version):
        data_dir = tree_root / "data"
        filenames.extend(data_dir.rglob("*.mcfunction"))

    return sorted(str(p) for p in filenames)

def append_if_missing(lines, new_line):
    if new_line not in lines:
        lines.append(new_line)

def init_main_trigger_files(pool_final_dir_version, variable_names=None):
    """
    Create generated trigger listener files only in the main/base tree:
        root/data/pool/function/classes/main/...

    Do not create anything inside overlay trees like:
        root/v0_v1/data/...
        root/v2_v3/data/...
    """

    root = Path(pool_final_dir_version)

    main_dir = root / 'data' / 'pool' / 'function' / 'classes' / 'main'
    trigger_dir = main_dir / 'triggers'
    
    print(main_dir)
    print(trigger_dir)
    main_dir.mkdir(parents=True, exist_ok=True)
    trigger_dir.mkdir(parents=True, exist_ok=True)

    # Main function-call trigger listener
    triggerfile = main_dir / 'trigger.mcfunction'
    if not triggerfile.exists():
        triggerfile.write_text('', encoding='utf-8')

    # Scoreboard variable trigger listeners
    if variable_names is not None:
        for var_name in variable_names:
            triggerfile = trigger_dir / f'{var_name.lower()}.mcfunction'
            if not triggerfile.exists():
                triggerfile.write_text('', encoding='utf-8')

def convert_function_call_to_triggers_121(pool_final_dir_version):
    print('  Setting click_event function commands to triggers...')

    tree_roots = get_datapack_tree_roots(pool_final_dir_version)
    print(f'  {len(tree_roots)} datapack tree(s) found.')

    filenames = get_all_mcfunction_files_in_trees(pool_final_dir_version)
    print(f'  {len(filenames)} mcfunction found.')

    print('  Checking and modifying files again...')

    occurred_funcs = {}      # func_str -> trigger id
    modified_files = []
    missing_funcs = set()

    for file in filenames:
        #print(file)
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        changed = False
        new_lines = []

        for line in lines:
            if (
                '"run_command","value":"/function ' not in line
                and '"run_command","command":"/function ' not in line
                ):
                new_lines.append(line)
                continue

            changed_this_line = [False]

            def replace_func(match):
                func_str = match.group(2)  # e.g. /function app:settings/pool/breakshot/breakpower

                if func_str not in ids_mod:
                    missing_funcs.add(func_str)
                    return match.group(0)

                occurred_funcs[func_str] = ids_mod[func_str]
                changed_this_line[0] = True

                return (
                    f'{match.group(1)}'
                    f'/trigger swPool__trigger set {ids_mod[func_str]}'
                    f'{match.group(3)}'
                )

            newline = re.sub(
                r'("run_command","(?:value|command)":")(/function [^"]+)(")',
                replace_func,
                line
            )

            if changed_this_line[0] and newline != line:
                changed = True

            new_lines.append(newline)

        if changed:
            modified_files.append(file)
            with open(file, 'w', encoding='utf-8') as f:
                f.writelines(new_lines)

    print('  Constructing listener in tick function for each tree')

    for tree_root in tree_roots:
        tickfile = tree_root / 'data' / 'pool' / 'function' / 'classes' / 'main' / 'tick.mcfunction'

        if not tickfile.exists():
            print(f'  Skipping listener for missing tick file: {tickfile}')
            continue

        with open(tickfile, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        append_if_missing(lines, '\nscoreboard players enable @a swPool__trigger\n')
        append_if_missing(
            lines,
            (
                'execute as @a[scores={swPool__trigger=1..}] '
                'at @s run function pool:classes/main/trigger\n'
            )
        )

        with open(tickfile, 'w', encoding='utf-8') as f:
            f.writelines(lines)

        triggerfile = tree_root / 'data' / 'pool' / 'function' / 'classes' / 'main' / 'trigger.mcfunction'

        if not triggerfile.exists():
            print(f'  Skipping missing trigger listener file: {triggerfile}')
            continue

        with open(triggerfile, 'w', encoding='utf-8') as f:
            lines = []

            for func_str, idx in sorted(occurred_funcs.items(), key=lambda x: x[1]):
                lines.append(
                    f'execute if score @s swPool__trigger matches {idx} run {func_str[1:]}\n'
                )

            lines.append('\nscoreboard players reset @s swPool__trigger\n')
            f.writelines(lines)

    print('  Logging all triggers and modified files')

    with open(os.path.join(pool_final_dir_version, 'dev_triggers.txt'), 'w', encoding='utf-8') as f:
        for func_str, idx in sorted(occurred_funcs.items(), key=lambda x: x[1]):
            f.write(f'{idx} {func_str}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_scanned_files.txt'), 'w', encoding='utf-8') as f:
        for file in filenames:
            f.write(f'{file}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_modified_files.txt'), 'w', encoding='utf-8') as f:
        for file in modified_files:
            f.write(f'{file}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_missing_triggers.txt'), 'w', encoding='utf-8') as f:
        for func_str in sorted(missing_funcs):
            f.write(f'{func_str}\n')

    print(f'  {len(occurred_funcs)} trigger functions used.')
    print(f'  {len(modified_files)} files modified.')
    print(f'  {len(missing_funcs)} function commands missing from ids_mod.')

def convert_scoreboard_set_to_triggers_121(pool_final_dir_version, variable_names):
    print('  Setting scoreboard click_event commands to triggers...')

    tree_roots = get_datapack_tree_roots(pool_final_dir_version)
    print(f'  {len(tree_roots)} datapack tree(s) found.')

    filenames = get_all_mcfunction_files_in_trees(pool_final_dir_version)
    print(f'  {len(filenames)} mcfunction found.')

    if not variable_names:
        print('  No variable_names provided. Skipping scoreboard trigger conversion.')
        return

    variable_names = sorted(set(variable_names), key=len, reverse=True)
    var_pat = "|".join(re.escape(v) for v in variable_names)

    # Normal case:
    # "run_command","value":"/scoreboard players set @s variable value"
    # "suggest_command","value":"/scoreboard players set @s variable "
    # also supports add @s, e.g. swPool_Score
    pattern = re.compile(
        r'("(?:run_command|suggest_command)","(?:value|command)":")'
        r'/scoreboard players (?:set|add) @s '
        rf'({var_pat})'
        r'(?: (-?\d+)| )'
        r'(")'
    )

    modified_files = []
    occurred_vars = {}      # variable_name -> set(values)
    missing_or_skipped = []

    print('  Checking and modifying files again...')

    c_var_names = [v for v in variable_names if "swPool_C" in v]
    c_target_to_var = {v[7:]: v for v in c_var_names}  # swPool_C_mui -> C_mui

    if c_target_to_var:
        c_pattern = re.compile(
            r'("(?:run_command|suggest_command)","(?:value|command)":")'
            r'/scoreboard players set '
            r'(' + "|".join(re.escape(k) for k in c_target_to_var.keys()) + r') '
            r'swPool_C'
            r'(?: (-?\d+)| )'
            r'(")'
        )
    else:
        c_pattern = None

    for file in filenames:
        with open(file, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        changed = False
        new_lines = []

        for line in lines:
            is_normal = (
                '/scoreboard players set @s ' in line
                or '/scoreboard players add @s ' in line
            )

            is_swPool_C = (
                c_pattern is not None
                and '/scoreboard players set ' in line
                and 'swPool_C' in line
            )

            if not is_normal and not is_swPool_C:
                new_lines.append(line)
                continue

            if is_normal:
                def replace_scoreboard_set(match):
                    var_name = match.group(2)
                    value = match.group(3)

                    occurred_vars.setdefault(var_name, set()).add(
                        value if value is not None else "suggest"
                    )

                    if value is None:
                        return (
                            f'{match.group(1)}'
                            f'/trigger {var_name}_trigger set '
                            f'{match.group(4)}'
                        )

                    return (
                        f'{match.group(1)}'
                        f'/trigger {var_name}_trigger set {value}'
                        f'{match.group(4)}'
                    )

                newline = pattern.sub(replace_scoreboard_set, line)

            else:
                def replace_swPool_C_set(match):
                    c_name = match.group(2)              # e.g. C_mui
                    value = match.group(3)               # can be None
                    var_name = c_target_to_var[c_name]   # e.g. swPool_C_mui

                    occurred_vars.setdefault(var_name, set()).add(
                        value if value is not None else "suggest"
                    )

                    if value is None:
                        return (
                            f'{match.group(1)}'
                            f'/trigger {var_name}_trigger set '
                            f'{match.group(4)}'
                        )

                    return (
                        f'{match.group(1)}'
                        f'/trigger {var_name}_trigger set {value}'
                        f'{match.group(4)}'
                    )

                newline = c_pattern.sub(replace_swPool_C_set, line)

            if newline != line:
                changed = True
            else:
                missing_or_skipped.append((file, line.strip()))

            new_lines.append(newline)

        if changed:
            modified_files.append(file)
            with open(file, 'w', encoding='utf-8') as f:
                f.writelines(new_lines)

    print('  Appending scoreboard trigger listeners to tick function for each tree')

    for tree_root in tree_roots:
        tickfile = tree_root / 'data' / 'pool' / 'function' / 'classes' / 'main' / 'tick.mcfunction'

        if not tickfile.exists():
            print(f'  Skipping scoreboard listener for missing tick file: {tickfile}')
            continue

        with open(tickfile, 'r', encoding='utf-8') as f:
            tick_lines = f.readlines()

        for var_name in variable_names:
            trigger_name = f'{var_name}_trigger'

            append_if_missing(
                tick_lines,
                f'\nscoreboard players enable @a {trigger_name}\n'
            )

            append_if_missing(
                tick_lines,
                (
                    f'execute as @a[scores={{{trigger_name}=1..}}] '
                    f'at @s run function pool:classes/main/triggers/{var_name.lower()}\n'
                )
            )

        with open(tickfile, 'w', encoding='utf-8') as f:
            f.writelines(tick_lines)

    print('  Constructing scoreboard trigger listener functions for each tree')

    for tree_root in tree_roots:
        trigger_dir = tree_root / 'data' / 'pool' / 'function' / 'classes' / 'main' / 'triggers'

        if not trigger_dir.exists():
            print(f'  Skipping missing trigger dir: {trigger_dir}')
            continue

        for var_name in variable_names:
            trigger_name = f'{var_name}_trigger'
            triggerfile = trigger_dir / f'{var_name.lower()}.mcfunction'

            if not triggerfile.exists():
                print(f'  Skipping missing scoreboard trigger file: {triggerfile}')
                continue

            with open(triggerfile, 'w', encoding='utf-8') as f:
                lines = []
                lines.append(f'tellraw @s [{{"text":"Activating trigger {trigger_name}"}}]\n')

                if 'swPool_Score' in var_name:
                    lines.append(
                        f'scoreboard players operation @s {var_name} += @s {trigger_name}\n'
                    )
                elif 'swPool_C' in var_name:
                    vn = var_name[7:]
                    lines.append(
                        f'scoreboard players operation {vn} swPool_C = @s {trigger_name}\n'
                    )
                else:
                    lines.append(
                        f'scoreboard players operation @s {var_name} = @s {trigger_name}\n'
                    )

                lines.append(f'\nscoreboard players reset @s {trigger_name}\n')
                f.writelines(lines)

    print('  Logging scoreboard trigger changes')

    with open(os.path.join(pool_final_dir_version, 'dev_scoreboard_triggers.txt'), 'w', encoding='utf-8') as f:
        for var_name in variable_names:
            values = occurred_vars.get(var_name, set())

            values = sorted(
                values,
                key=lambda x: int(x) if str(x).lstrip("-").isdigit() else 10**20
            )

            f.write(f'{var_name}_trigger -> {var_name}\n')
            f.write(f'  values: {", ".join(map(str, values)) if values else "(not used)"}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_scoreboard_trigger_modified_files.txt'), 'w', encoding='utf-8') as f:
        for file in modified_files:
            f.write(f'{file}\n')

    with open(os.path.join(pool_final_dir_version, 'dev_scoreboard_trigger_skipped_lines.txt'), 'w', encoding='utf-8') as f:
        for file, line in missing_or_skipped:
            f.write(f'{file}: {line}\n')

    print(f'  {len(modified_files)} files modified.')
    print(f'  {len(occurred_vars)} scoreboard variables converted.')


### Define scoreboard objectives with a trigger variant

variable_names = [
     "swPool_pitch",
     "swPool_sizex",
     "swPool_sizez",
     "swPool_sticktype",
     "swPool_breakpower",
     "swPool_cueball_deflection",

     "swPool_C_muk",
     "swPool_C_mur",
     "swPool_C_mus",
     "swPool_C_mui",
     "swPool_C_table_rim_type",
     "swPool_C_table_cloth_color",
     "swPool_C_nn_complexity",
     "swPool_C_tp_dur",

     'swPool_Score'
]


rp_0 = "Pool-Datapack-Base-Squid-Workshop-1.16-1.20"
rp_0_out = "Pool-Datapack-Squid-Workshop-1.16-1.20"

print('Working on ',rp_0_out)

if os.path.isdir(rp_0_out):
    shutil.rmtree(rp_0_out)
shutil.copytree(rp_0, rp_0_out)

convert_function_call_to_triggers(rp_0_out)

convert_scoreboard_set_to_triggers(rp_0_out, variable_names)


# make a new dir 1.21
rp_1 = "Pool-Datapack-Base-Squid-Workshop-1.21plus"
rp_1_out = "Pool-Datapack-Squid-Workshop-1.21plus"

print('Working on ',rp_1_out)

if os.path.isdir(rp_1_out):
    shutil.rmtree(rp_1_out)
shutil.copytree(rp_1, rp_1_out)

init_main_trigger_files(rp_1_out, variable_names)

convert_function_call_to_triggers_121(rp_1_out)

convert_scoreboard_set_to_triggers_121(rp_1_out,variable_names)
