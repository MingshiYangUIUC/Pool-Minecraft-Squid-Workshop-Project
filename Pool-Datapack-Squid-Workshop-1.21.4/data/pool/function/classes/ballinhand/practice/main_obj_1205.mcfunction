scoreboard players set C-1 swPool_var00 -1

execute at @e[tag=swPool_pin] run particle witch ~ ~1 ~ 0 0 0 0 1 force

tag @e[type=area_effect_cloud,tag=swPool_rhp1] add swPool_cueplace

tp @e[type=area_effect_cloud,tag=swPool_cueplace] ~ ~1.62 ~
data modify entity @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] Rotation set from entity @s Rotation
execute store result score @s swPool_rot run data get entity @s Rotation[1] 10
execute if entity @s[scores={swPool_rot=..50}] as @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] at @s run tp @s ~ ~ ~ ~ 5
execute as @e[type=area_effect_cloud,tag=swPool_cueplace] at @s run function pool:classes/ballinhand/practice/tp_obj



execute if entity @e[tag=swPool_pooltable,limit=1] as @e[type=area_effect_cloud,tag=swPool_cueplace] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_pooltable,limit=1] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if entity @e[tag=swPool_pooltable,limit=1] as @e[type=area_effect_cloud,tag=swPool_cueplace] run scoreboard players operation @s swPool_posx -= @e[tag=swPool_pooltable,limit=1] swPool_posx

execute if entity @e[tag=swPool_pooltable,limit=1] as @e[type=area_effect_cloud,tag=swPool_cueplace] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_pooltable,limit=1] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if entity @e[tag=swPool_pooltable,limit=1] as @e[type=area_effect_cloud,tag=swPool_cueplace] run scoreboard players operation @s swPool_posz -= @e[tag=swPool_pooltable,limit=1] swPool_posz


execute if entity @e[tag=swPool_pooltable,tag=swPool_x] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1,scores={swPool_posz=..-1}] swPool_posz *= C-1 swPool_var00
execute if entity @e[tag=swPool_pooltable,tag=swPool_z] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1,scores={swPool_posx=..-1}] swPool_posx *= C-1 swPool_var00
execute if entity @e[tag=swPool_pooltable,tag=swPool_x] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1,scores={swPool_posx=..-1}] swPool_posx *= C-1 swPool_var00
execute if entity @e[tag=swPool_pooltable,tag=swPool_z] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1,scores={swPool_posz=..-1}] swPool_posz *= C-1 swPool_var00

execute if entity @e[tag=swPool_pooltable,tag=swPool_x] if score TABLE swPool_dl > @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] swPool_posx if score @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] swPool_posz < TABLE swPool_ds run tag @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] add swPool_valid

execute if entity @e[tag=swPool_pooltable,tag=swPool_z] if score TABLE swPool_dl > @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] swPool_posz if score @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] swPool_posx < TABLE swPool_ds run tag @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] add swPool_valid

execute as @e[tag=swPool_valid] at @s positioned ~ ~-0.6 ~ if entity @e[tag=swPool_pool,distance=..0.25] run tag @s remove swPool_valid

execute as @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid,limit=1] at @s run particle composter ~ ~ ~ 0 0 0 0 1 force

#execute if entity @s[scores={swPool_crtclk=1..}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run say valid

execute if entity @s[scores={swPool_crtclk=1..}] if entity @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run function pool:classes/master/record

#execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:custom_model_data"-99},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_red"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_red"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_yellow"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_yellow"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_green"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_green"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_brown"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_brown"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_blue"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_blue"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_pink"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_pink"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_black"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_black"],NoGravity:1,Small:1,Invisible:1}

execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_01"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_01"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_02"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_02"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_03"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_03"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_04"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_04"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_05"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_05"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_06"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_06"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_07"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_07"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_08"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_08"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_09"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_09"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_10"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_10"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_11"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_11"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_12"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_12"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_13"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_13"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_14"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_14"],NoGravity:1,Small:1,Invisible:1}
execute if entity @s[scores={swPool_crtclk=1..},nbt={SelectedItem:{components:{"minecraft:item_model":"swpool:object_ball_15"},id:"minecraft:carrot_on_a_stick"}}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_15"],NoGravity:1,Small:1,Invisible:1}

#execute as @e[tag=swPool_free,tag=swPool_cue] run data modify entity @s Pos[0] set from entity @e[tag=swPool_cueplace,limit=1] Pos[0]
#execute as @e[tag=swPool_free,tag=swPool_cue] run data modify entity @s Pos[2] set from entity @e[tag=swPool_cueplace,limit=1] Pos[2]
execute as @e[tag=swPool_free,tag=swPool_pool] store result score @s swPool_var00 run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_free,tag=swPool_pool] store result score @s swPool_var01 run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_free,tag=swPool_pool] store result score @s swPool_var02 run data get entity @e[tag=swPool_pooltable,limit=1] Pos[1] 10000

execute if entity @e[tag=swPool_pool,tag=swPool_free] run scoreboard players set @e[tag=swPool_pooltable] swPool_hittime 0
scoreboard players set @s swPool_crtclk 0
#execute if entity @e[tag=swPool_pool,tag=swPool_free] run clear @a[tag=swPool_ballinhand_obj] carrot_on_a_stick{"minecraft:custom_model_data"-99} 1
execute if entity @e[tag=swPool_free,tag=swPool_pool] run tag @a[tag=swPool_ballinhand_obj] remove swPool_given
#execute if entity @e[tag=swPool_free,tag=swPool_pool] run tag @a[tag=swPool_ballinhand_obj] remove swPool_ballinhand_obj
execute if entity @e[tag=swPool_free,tag=swPool_pool] as @e[tag=swPool_pooltable,limit=1] run function pool:classes/cue/reset


tag @e[tag=swPool_cueplace] remove swPool_valid
tag @e[tag=swPool_cueplace] remove swPool_cueplace
