
scoreboard players set C-1 swPool_var00 -1

execute at @e[tag=swPool_pin] run particle witch ~ ~1 ~ 0 0 0 0 1 force

tag @e[type=area_effect_cloud,tag=swPool_rhp1] add swPool_cueplace

tp @e[type=area_effect_cloud,tag=swPool_cueplace] ~ ~1.62 ~
data modify entity @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] Rotation set from entity @s Rotation
execute store result score @s swPool_rot run data get entity @s Rotation[1] 10
execute if entity @s[scores={swPool_rot=..50}] as @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] at @s run tp @s ~ ~ ~ ~ 5
execute as @a[tag=swPool_ballinhand,limit=1] at @s store result score @s swPool_posy run data get entity @s Pos[1] 100
execute as @e[type=area_effect_cloud,tag=swPool_cueplace] at @s run function pool:classes/ballinhand/practice/tp


#execute at @e[tag=swPool_brown,tag=swPool_pin] at @s run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}




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
#execute as @e[type=area_effect_cloud,tag=swPool_cueplace,tag=!swPool_valid,limit=1] at @s run particle witch ~ ~ ~ 0 0 0 0 1 force

execute if entity @s[scores={swPool_crtclk=1..}] if entity @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run function pool:classes/master/record

#execute if entity @s[scores={swPool_crtclk=1..}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run say valid
execute if entity @s[scores={swPool_crtclk=1..}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

#execute as @e[tag=swPool_free,tag=swPool_cue] run data modify entity @s Pos[0] set from entity @e[tag=swPool_cueplace,limit=1] Pos[0]
#execute as @e[tag=swPool_free,tag=swPool_cue] run data modify entity @s Pos[2] set from entity @e[tag=swPool_cueplace,limit=1] Pos[2]
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var00 run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var01 run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var02 run data get entity @e[tag=swPool_pooltable,limit=1] Pos[1] 10000

execute if entity @e[tag=swPool_cue,tag=swPool_free] run scoreboard players set @e[tag=swPool_pooltable] swPool_hittime 0
scoreboard players set @s swPool_crtclk 0

execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if data storage minecraft:swpool cueballreddot if entity @e[tag=swPool_cue,tag=swPool_free] run clear @a[tag=swPool_ballinhand] carrot_on_a_stick[minecraft:item_model="swpool:object_cueball"] 1
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] unless data storage minecraft:swpool cueballreddot if entity @e[tag=swPool_cue,tag=swPool_free] run clear @a[tag=swPool_ballinhand] carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean"] 1

execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_ballinhand] remove swPool_given
execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_ballinhand] remove swPool_ballinhand
execute if entity @e[tag=swPool_cue,tag=swPool_pool] as @e[tag=swPool_pooltable,limit=1] run function pool:classes/cue/reset

tag @e[tag=swPool_cueplace] remove swPool_valid
tag @e[tag=swPool_cueplace] remove swPool_cueplace
