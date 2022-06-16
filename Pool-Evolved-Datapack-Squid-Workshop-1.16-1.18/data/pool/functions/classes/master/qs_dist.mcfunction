#see physics/distance1 for explanation


execute if entity @e[type=armor_stand,tag=swPool_d2,limit=1] store result score D1 swPool_var01 run data get entity @s Pos[0] 10000
execute if entity @e[type=armor_stand,tag=swPool_d2,limit=1] store result score D1 swPool_var02 run data get entity @s Pos[2] 10000

execute as @e[type=armor_stand,tag=swPool_d2,limit=1] store result score D2 swPool_var01 run data get entity @s Pos[0] 10000
execute as @e[type=armor_stand,tag=swPool_d2,limit=1] store result score D2 swPool_var02 run data get entity @s Pos[2] 10000

scoreboard players operation D1 swPool_var01 -= D2 swPool_var01
scoreboard players operation D1 swPool_var02 -= D2 swPool_var02

scoreboard players operation D1 swPool_var01 *= D1 swPool_var01
scoreboard players operation D1 swPool_var02 *= D1 swPool_var02

scoreboard players operation @s swPool_var00 = D1 swPool_var01
scoreboard players operation @s swPool_var00 += D1 swPool_var02

execute at @s run function pool:classes/physics/sqrt
scoreboard players operation QSD swPool_dist = @s swPool_var00
