
execute at @e[tag=swPool_pin] run particle witch ~ ~1 ~ 0 0 0 0 1 force

tag @e[type=area_effect_cloud,tag=swPool_rhp1] add swPool_cueplace

tp @e[type=area_effect_cloud,tag=swPool_cueplace] ~ ~1.62 ~
data modify entity @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] Rotation set from entity @s Rotation
execute store result score @s swPool_rot run data get entity @s Rotation[1] 10
execute if entity @s[scores={swPool_rot=..50}] as @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] at @s run tp @s ~ ~ ~ ~ 5
execute as @e[type=area_effect_cloud,tag=swPool_cueplace] at @s run function pool:classes/ballinhand/snooker/tp


#execute at @e[tag=swPool_brown,tag=swPool_pin] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1}

#x table: get x distance from pooltable and compare with 3/5 * swPool_dl, swPool_dist from brown and compare with 1/3 * swPool_ds
#z table: get z distance from pooltable and compare with 3/5 * swPool_dl, swPool_dist from brown and compare with 1/3 * swPool_ds
scoreboard players set @s swPool_var00 3
scoreboard players set @s swPool_var01 5
scoreboard players operation @s swPool_dl = TABLE swPool_dl
scoreboard players operation @s swPool_ds = TABLE swPool_ds
scoreboard players operation @s swPool_dl /= @s swPool_var01
scoreboard players operation @s swPool_dl *= @s swPool_var00
scoreboard players operation @s swPool_ds /= @s swPool_var00


execute if entity @e[tag=swPool_pooltable,tag=swPool_x,limit=1] as @e[type=area_effect_cloud,tag=swPool_cueplace] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_pooltable,tag=swPool_x,limit=1] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute if entity @e[tag=swPool_pooltable,tag=swPool_x,limit=1] as @e[type=area_effect_cloud,tag=swPool_cueplace] run scoreboard players operation @s swPool_posx -= @e[tag=swPool_pooltable,limit=1] swPool_posx

execute if entity @e[tag=swPool_pooltable,tag=swPool_z,limit=1] as @e[type=area_effect_cloud,tag=swPool_cueplace] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_pooltable,tag=swPool_z,limit=1] store result score @s swPool_posz run data get entity @s Pos[2] 10000
execute if entity @e[tag=swPool_pooltable,tag=swPool_z,limit=1] as @e[type=area_effect_cloud,tag=swPool_cueplace] run scoreboard players operation @s swPool_posz -= @e[tag=swPool_pooltable,limit=1] swPool_posz

tag @e[type=area_effect_cloud,tag=swPool_cueplace] add swPool_d1
tag @e[tag=swPool_pin,tag=swPool_brown] add swPool_d2
execute as @e[type=area_effect_cloud,tag=swPool_d1] at @s run function pool:classes/physics/distancexz
tag @e[type=area_effect_cloud,tag=swPool_d1] remove swPool_d1
tag @e[tag=swPool_d2] remove swPool_d2

execute if entity @e[tag=swPool_pooltable,tag=swPool_x] if score @s swPool_dl <= @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] swPool_posx if score @s swPool_ds > @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] swPool_dist run tag @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] add swPool_valid

execute if entity @e[tag=swPool_pooltable,tag=swPool_z] if score @s swPool_dl <= @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] swPool_posz if score @s swPool_ds > @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] swPool_dist run tag @e[type=area_effect_cloud,tag=swPool_cueplace,limit=1] add swPool_valid

execute as @e[tag=swPool_valid] at @s positioned ~ ~-0.6 ~ if entity @e[tag=swPool_pool,distance=..0.25] run tag @s remove swPool_valid

execute as @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid,limit=1] at @s run particle composter ~ ~ ~ 0 0 0 0 1 force
#execute as @e[type=area_effect_cloud,tag=swPool_cueplace,tag=!swPool_valid,limit=1] at @s run particle witch ~ ~ ~ 0 0 0 0 1 force

execute if entity @s[scores={swPool_crtclk=1..}] at @e[type=area_effect_cloud,tag=swPool_cueplace,tag=swPool_valid] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_free","swPool_cue"],NoGravity:1,Small:1,Invisible:1}

#execute as @e[tag=swPool_free,tag=swPool_cue] run data modify entity @s Pos[0] set from entity @e[tag=swPool_cueplace,limit=1] Pos[0]
#execute as @e[tag=swPool_free,tag=swPool_cue] run data modify entity @s Pos[2] set from entity @e[tag=swPool_cueplace,limit=1] Pos[2]
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var00 run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var01 run data get entity @s Pos[2] 10000
execute as @e[tag=swPool_free,tag=swPool_cue] store result score @s swPool_var02 run data get entity @e[tag=swPool_pooltable,limit=1] Pos[1] 10000

execute if entity @e[tag=swPool_cue,tag=swPool_free] run scoreboard players set @e[tag=swPool_pooltable] swPool_hittime 0
scoreboard players set @s swPool_crtclk 0
execute if data storage minecraft:swpool cueballreddot if entity @e[tag=swPool_cue,tag=swPool_free] run clear @a[tag=swPool_ballinhand] carrot_on_a_stick[minecraft:custom_model_data=99] 1
execute unless data storage minecraft:swpool cueballreddot if entity @e[tag=swPool_cue,tag=swPool_free] run clear @a[tag=swPool_ballinhand] carrot_on_a_stick[minecraft:custom_model_data=100] 1
execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_ballinhand] remove swPool_given
execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_ballinhand] remove swPool_ballinhand
execute if entity @e[tag=swPool_cue,tag=swPool_pool] as @e[tag=swPool_pooltable,limit=1] run function pool:classes/cue/reset

tag @e[tag=swPool_cueplace] remove swPool_valid
tag @e[tag=swPool_cueplace] remove swPool_cueplace