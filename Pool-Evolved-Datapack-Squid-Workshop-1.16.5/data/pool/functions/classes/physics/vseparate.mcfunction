#separate swPool_v and facing direction to x,z component

execute store result score @s swPool_rot run data get entity @s Rotation[0] 10000

scoreboard players operation @s swPool_var00 = @s swPool_rot
function pool:classes/physics/cosdeg
#scoreboard players set @s swPool_var01 10000
scoreboard players operation @s swPool_vz = @s swPool_v
scoreboard players operation @s swPool_vz /= C_10000 swPool_C
scoreboard players operation @s swPool_vz *= @s swPool_var00

scoreboard players operation @s swPool_var00 = @s swPool_rot
function pool:classes/physics/sindeg
#scoreboard players set @s swPool_var01 -10000
scoreboard players operation @s swPool_vx = @s swPool_v
scoreboard players operation @s swPool_vx /= C_-10000 swPool_C
scoreboard players operation @s swPool_vx *= @s swPool_var00
