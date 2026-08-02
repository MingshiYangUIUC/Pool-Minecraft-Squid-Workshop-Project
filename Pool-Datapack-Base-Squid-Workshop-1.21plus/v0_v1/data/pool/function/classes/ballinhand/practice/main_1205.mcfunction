
scoreboard players set C-1 swPool_var00 -1

execute at @e[tag=swPool_pin] run particle witch ~ ~0.5 ~ 0 0 0 0 1 force

tag 000c2be1-0006-a619-0000-000000000004 add swPool_cueplace

tp 000c2be1-0006-a619-0000-000000000004 ~ ~1.62 ~
data modify entity 000c2be1-0006-a619-0000-000000000004 Rotation set from entity @s Rotation
execute store result score #table_y swPool_posy run data get entity 000c2be1-0001-414d-0000-000000000000 Pos[1] 1
scoreboard players operation #table_y swPool_posy *= #C_100 swMath_C
scoreboard players add #table_y swPool_posy 100
scoreboard players set #bih_ntp swMath_V 0
execute as 000c2be1-0006-a619-0000-000000000004 at @s run function pool:classes/ballinhand/practice/tp

#execute at @e[tag=swPool_brown,tag=swPool_pin] at @s run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.727f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}




execute if entity 000c2be1-0001-414d-0000-000000000000 as 000c2be1-0006-a619-0000-000000000004 store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as 000c2be1-0001-414d-0000-000000000000 store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if entity 000c2be1-0001-414d-0000-000000000000 as 000c2be1-0006-a619-0000-000000000004 run scoreboard players operation @s swPool_posx -= 000c2be1-0001-414d-0000-000000000000 swPool_posx

execute if entity 000c2be1-0001-414d-0000-000000000000 as 000c2be1-0006-a619-0000-000000000004 store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as 000c2be1-0001-414d-0000-000000000000 store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if entity 000c2be1-0001-414d-0000-000000000000 as 000c2be1-0006-a619-0000-000000000004 run scoreboard players operation @s swPool_posz -= 000c2be1-0001-414d-0000-000000000000 swPool_posz


execute if entity @e[tag=swPool_pooltable,tag=swPool_x] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1,scores={swPool_posz=..-1}] swPool_posz *= C-1 swPool_var00
execute if entity @e[tag=swPool_pooltable,tag=swPool_z] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1,scores={swPool_posx=..-1}] swPool_posx *= C-1 swPool_var00
execute if entity @e[tag=swPool_pooltable,tag=swPool_x] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1,scores={swPool_posx=..-1}] swPool_posx *= C-1 swPool_var00
execute if entity @e[tag=swPool_pooltable,tag=swPool_z] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1,scores={swPool_posz=..-1}] swPool_posz *= C-1 swPool_var00

execute if entity @e[tag=swPool_pooltable,tag=swPool_x] if score TABLE swPool_dl > 000c2be1-0006-a619-0000-000000000004 swPool_posx if score 000c2be1-0006-a619-0000-000000000004 swPool_posz < TABLE swPool_ds run tag 000c2be1-0006-a619-0000-000000000004 add swPool_valid

execute if entity @e[tag=swPool_pooltable,tag=swPool_z] if score TABLE swPool_dl > 000c2be1-0006-a619-0000-000000000004 swPool_posz if score 000c2be1-0006-a619-0000-000000000004 swPool_posx < TABLE swPool_ds run tag 000c2be1-0006-a619-0000-000000000004 add swPool_valid

scoreboard players operation C_2r swMath_V = C_r swPool_C
scoreboard players operation C_2r swMath_V += C_r swPool_C
#execute as @e[tag=swPool_valid] at @s positioned ~ ~-0.6 ~ if entity @e[tag=swPool_pool,distance=..0.25] run tag @s remove swPool_valid
execute as @e[tag=swPool_valid] at @s positioned ~ ~-0.6 ~ run function pool:classes/ballinhand/helper/find_nearest_ball
execute as @e[tag=swPool_valid] if score @s swPool_dist < C_2r swMath_V run tag @s remove swPool_valid

execute as @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid,limit=1] at @s run particle composter ~ ~ ~ 0 0 0 0 1 force
#execute as @e[type=area_effect_cloud,tag=swPool_cueplace,tag=!swPool_valid,limit=1] at @s run particle witch ~ ~ ~ 0 0 0 0 1 force

execute if entity @s[scores={swPool_crtclk=1..}] if entity @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run function pool:classes/master/record

#execute if entity @s[scores={swPool_crtclk=1..}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run say valid
execute if entity @s[scores={swPool_crtclk=1..}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.727f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

#execute as @e[tag=swPool_free,tag=swPool_cue] run data modify entity @s Pos[0] set from entity @e[tag=swPool_cueplace,limit=1] Pos[0]
#execute as @e[tag=swPool_free,tag=swPool_cue] run data modify entity @s Pos[2] set from entity @e[tag=swPool_cueplace,limit=1] Pos[2]
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var00 run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var01 run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var02 run data get entity 000c2be1-0001-414d-0000-000000000000 Pos[1] 10000

execute if entity @e[tag=swPool_cue,tag=swPool_free] run scoreboard players set 000c2be1-0001-414d-0000-000000000000 swPool_lifetime 0
scoreboard players set @s swPool_crtclk 0

execute if entity @e[tag=swPool_pooltable,tag=!swPool_practicemode] if data storage minecraft:swpool cueballreddot if entity @e[tag=swPool_cue,tag=swPool_free] run clear @a[tag=swPool_ballinhand] carrot_on_a_stick[minecraft:custom_model_data=99] 1
execute if entity @e[tag=swPool_pooltable,tag=!swPool_practicemode] unless data storage minecraft:swpool cueballreddot if entity @e[tag=swPool_cue,tag=swPool_free] run clear @a[tag=swPool_ballinhand] carrot_on_a_stick[minecraft:custom_model_data=100] 1

execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_ballinhand] remove swPool_given
execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_ballinhand] remove swPool_ballinhand
execute if entity @e[tag=swPool_cue,tag=swPool_pool] as 000c2be1-0001-414d-0000-000000000000 run function pool:classes/cue/reset

tag @e[tag=swPool_cueplace] remove swPool_valid
tag @e[tag=swPool_cueplace] remove swPool_cueplace
