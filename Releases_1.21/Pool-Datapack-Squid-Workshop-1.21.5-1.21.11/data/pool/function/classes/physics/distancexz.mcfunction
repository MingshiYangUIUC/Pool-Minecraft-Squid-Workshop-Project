
#@s is tagged d1, only one d2 at a swPool_hittime


execute store result score @s swPool_var01 run data get entity @s Pos[0] 10000
execute store result score @s swPool_var02 run data get entity @s Pos[2] 10000

execute as @e[tag=swPool_d2,limit=1] store result score D2 swPool_var01 run data get entity @s Pos[0] 10000
execute as @e[tag=swPool_d2,limit=1] store result score D2 swPool_var02 run data get entity @s Pos[2] 10000

scoreboard players operation @s swPool_var01 -= D2 swPool_var01
scoreboard players operation @s swPool_var02 -= D2 swPool_var02

scoreboard players operation @s swPool_var01 *= @s swPool_var01
scoreboard players operation @s swPool_var02 *= @s swPool_var02

scoreboard players operation @s swPool_var00 = @s swPool_var01
scoreboard players operation @s swPool_var00 += @s swPool_var02

execute at @s run function pool:classes/physics/sqrt

execute unless entity @e[tag=swPool_d2,distance=..3,limit=1] run scoreboard players set @s swPool_dist 99999999
execute if entity @e[tag=swPool_d2,distance=..3,limit=1] run scoreboard players operation @s swPool_dist = @s swPool_var00