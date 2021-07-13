
function pool:classes/master/record

tag @s add swPool_shooting
execute as @e[type=arrow,distance=..5,nbt={life:0s}] if score @s swPool_player = @a[tag=swPool_shooting,limit=1] swPool_player run tag @s add swPool_sb


data modify entity @e[tag=swPool_pool,tag=swPool_cue,limit=1] Rotation[0] set from entity @s Rotation[0]
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



scoreboard players set @s swPool_var01 2000
#tellraw @a [{"text":" V00, "},{"score":{"objective":"swPool_var00","name":"@s"}}]
scoreboard players operation @s swPool_var00 *= @s swPool_var01
scoreboard players set @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest] swPool_T 0 
scoreboard players operation @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest] swPool_v = @s swPool_var00
execute as @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest] at @s run function pool:classes/cue/initialize
kill @e[type=arrow,tag=swPool_sb]

scoreboard players reset @s swPool_shoot
tag @s add swPool_hitcue
tag @s remove swPool_shooting