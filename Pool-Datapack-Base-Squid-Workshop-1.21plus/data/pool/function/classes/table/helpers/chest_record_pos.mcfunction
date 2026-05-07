kill @e[tag=swPool_table_core]

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_table_core"],Duration:1200,Radius:0.0f,Potion:"minecraft:strong_harming",Particle:"block air"}

execute store result score @s swPool_posx run data get entity @s Pos[0] 1
execute store result score @s swPool_posy run data get entity @s Pos[1] 1
execute store result score @s swPool_posz run data get entity @s Pos[2] 1

scoreboard players operation @s swPool_posx += #chestplaced_x swMath_V
scoreboard players operation @s swPool_posy += #chestplaced_y swMath_V
scoreboard players operation @s swPool_posz += #chestplaced_z swMath_V

execute store result entity @e[tag=swPool_table_core,limit=1,sort=nearest] Pos[0] double 1 run scoreboard players get @s swPool_posx
execute store result entity @e[tag=swPool_table_core,limit=1,sort=nearest] Pos[1] double 1 run scoreboard players get @s swPool_posy
execute store result entity @e[tag=swPool_table_core,limit=1,sort=nearest] Pos[2] double 1 run scoreboard players get @s swPool_posz

function pool:classes/table/clear

# log score
execute at @e[tag=swPool_table_core,limit=1,sort=nearest] store result score C_tcc swPool_C run data get block ~ ~ ~ components.minecraft:custom_data.swPool_cloth_type 1
execute at @e[tag=swPool_table_core,limit=1,sort=nearest] store result score C_trt swPool_C run data get block ~ ~ ~ components.minecraft:custom_data.swPool_rim_type 1

# log lore
execute at @e[tag=swPool_table_core,limit=1,sort=nearest] run data modify storage minecraft:swpool table_lore set from block ~ ~ ~ components.minecraft:lore

# put a copy of chest item in the chest
execute at @e[tag=swPool_table_core,limit=1,sort=nearest] run item replace block ~ ~ ~ container.0 with minecraft:chest[minecraft:custom_name="\"Pool Table\"",minecraft:custom_data={swPool_table_core:1b}]

# set score
execute at @e[tag=swPool_table_core,limit=1,sort=nearest] store result block ~ ~ ~ Items[0].components.minecraft:custom_data.swPool_cloth_type byte 1 run scoreboard players get C_tcc swPool_C
execute at @e[tag=swPool_table_core,limit=1,sort=nearest] store result block ~ ~ ~ Items[0].components.minecraft:custom_data.swPool_rim_type byte 1 run scoreboard players get C_trt swPool_C
execute at @e[tag=swPool_table_core,limit=1,sort=nearest] run data modify block ~ ~ ~ Items[0].components.minecraft:lore set from storage minecraft:swpool table_lore

execute as @p run function pool:classes/table/helpers/chest_start_success
