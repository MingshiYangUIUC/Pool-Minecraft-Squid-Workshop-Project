#say shoot


function pool:classes/master/record

tag @s add swPool_shooting
execute as @e[type=arrow,distance=..5,nbt={life:0s}] if score @s swPool_player = @a[tag=swPool_shooting,limit=1] swPool_player run tag @s add swPool_sb

execute store result score cuerot swPool_rot run data get entity @s Rotation[0] 10000
scoreboard players remove cuerot swPool_rot 600
#execute store result entity @e[tag=swPool_pool,tag=swPool_cue,limit=1,sort=nearest] Rotation[0] float 0.0001 run scoreboard players get cuerot swPool_rot
scoreboard players operation @e[tag=swPool_pool,tag=swPool_cue,limit=1,sort=nearest] swPool_Rotation = cuerot swPool_rot
#execute as @e[tag=swPool_pool,tag=swPool_cue,limit=1] at @s run tp @s ~ ~ ~ ~-0.06 ~


scoreboard players operation @e[tag=swPool_pool,tag=swPool_cue,limit=1] swPool_player = @s swPool_player
stopsound @a * minecraft:entity.arrow.shoot
#execute at @p rotated as @s run tp @p ~ ~ ~ ~ 0

execute as @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest] at @s run playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1

execute store result score @s swPool_var00 run data get entity @e[type=arrow,tag=swPool_sb,limit=1] Motion[0] 10000
execute store result score @s swPool_var01 run data get entity @e[type=arrow,tag=swPool_sb,limit=1] Motion[1] 10000
execute store result score @s swPool_var02 run data get entity @e[type=arrow,tag=swPool_sb,limit=1] Motion[2] 10000

scoreboard players operation @s swPool_var00 *= @s swPool_var00
scoreboard players operation @s swPool_var01 *= @s swPool_var01
scoreboard players operation @s swPool_var02 *= @s swPool_var02
scoreboard players operation @s swPool_var00 += @s swPool_var01
scoreboard players operation @s swPool_var00 += @s swPool_var02

function pool:classes/physics/sqrt
# max is around 30000


scoreboard players set @s swPool_var01 2200
#tellraw @a [{"text":" V00, "},{"score":{"objective":"swPool_var00","name":"@s"}}]
scoreboard players operation v_stick swPool_var00 = @s swPool_var00
#scoreboard players operation v_stick swPool_var00 /= C_2 swPool_C
#tellraw @a [{"text":" vstick, "},{"score":{"objective":"swPool_var00","name":"v_stick"}}]
scoreboard players operation @s swPool_var00 *= @s swPool_var01
scoreboard players set @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest] swPool_T 0 
scoreboard players operation @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest] swPool_v = @s swPool_var00


#execute as @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest] at @s run function pool:classes/cue/initialize


execute as @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest] at @s run function pool:classes/spin/strike


execute if score @e[tag=swPool_cue,tag=swPool_pool,limit=1] swPool_v matches 1.. run kill @e[type=arrow,tag=swPool_sb]

scoreboard players reset @s swPool_shoot
tag @s add swPool_hitcue
tag @s remove swPool_shooting
#tag @e[tag=swPool_pooltable] remove swPool_resetcue


#tellraw @a [{"text":" v, "},{"score":{"objective":"swPool_v","name":"@e[tag=swPool_pool,tag=swPool_cue,limit=1]"}}]

execute if score V_addon swPool_v matches 1.. run scoreboard players operation @e[type=armor_stand,tag=swPool_pool,tag=swPool_cue,limit=1] swPool_v += V_addon swPool_v
execute if score V_addon swPool_v matches 1.. run scoreboard players set V_addon swPool_v 0