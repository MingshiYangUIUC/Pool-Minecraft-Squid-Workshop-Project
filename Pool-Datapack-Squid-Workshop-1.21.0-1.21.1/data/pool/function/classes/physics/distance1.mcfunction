#get HORIZONTAL distance from tag d1 to tag d2 with    2    as    upper limit     4 sig figs
#@s is tagged d1, only one d2 at a time


execute store result score D1 swPool_var01 run data get entity @s Pos[0] 10000
execute store result score D1 swPool_var02 run data get entity @s Pos[2] 10000

execute store result score D2 swPool_var01 run data get entity @e[type=armor_stand,tag=swPool_d2,distance=..3,limit=1] Pos[0] 10000
execute store result score D2 swPool_var02 run data get entity @e[type=armor_stand,tag=swPool_d2,distance=..3,limit=1] Pos[2] 10000

scoreboard players operation D1 swPool_var01 -= D2 swPool_var01
scoreboard players operation D1 swPool_var02 -= D2 swPool_var02

scoreboard players operation D1 swPool_var01 *= D1 swPool_var01
scoreboard players operation D1 swPool_var02 *= D1 swPool_var02

scoreboard players operation @s swPool_var00 = D1 swPool_var01
scoreboard players operation @s swPool_var00 += D1 swPool_var02

execute at @s run function pool:classes/physics/sqrt
execute unless entity @e[type=armor_stand,tag=swPool_d2,distance=..3,limit=1] run scoreboard players set @s swPool_dist 99999999
execute if entity @e[type=armor_stand,tag=swPool_d2,distance=..3,limit=1] run scoreboard players operation @s swPool_dist = @s swPool_var00
#execute if entity @e[tag=swPool_d2] run scoreboard players operation @s swPool_dist = @s swPool_var00