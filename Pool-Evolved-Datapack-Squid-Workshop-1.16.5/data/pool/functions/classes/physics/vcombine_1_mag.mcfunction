#combine x z velocities to one vector with direction and magnitude
#not applicable to swPool_player which is weird

#constant used for calculation: 1000

scoreboard players operation @s swPool_var00 = @s swPool_vex
scoreboard players operation @s swPool_var01 = @s swPool_vez
scoreboard players operation @s swPool_var00 /= C_10 swPool_C
scoreboard players operation @s swPool_var01 /= C_10 swPool_C
scoreboard players operation @s swPool_var00 *= @s swPool_var00
scoreboard players operation @s swPool_var01 *= @s swPool_var01
scoreboard players operation @s swPool_var00 += @s swPool_var01
execute at @s run function pool:classes/physics/sqrt
scoreboard players operation @s swPool_v = @s swPool_var00
scoreboard players operation @s swPool_v *= C_10 swPool_C
