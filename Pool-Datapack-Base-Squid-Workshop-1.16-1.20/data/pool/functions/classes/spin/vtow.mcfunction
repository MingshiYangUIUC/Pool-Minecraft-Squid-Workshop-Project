#w = (n X v)/r

# unit of ve: same as v: 100000000 -> 1m/tick
# unit of final ve: 200000 -> 1m/tick -> 20 m/s -> 25.46 spins per second -> 160 rad / s
# unit of w: m/s / r -> rad/s

function pool:classes/physics/vseparate_1

scoreboard players operation @s swPool_vex /= C_500 swPool_C
scoreboard players operation @s swPool_vez /= C_500 swPool_C

scoreboard players set A swPool_Vi 0
scoreboard players set A swPool_Vj 1
scoreboard players set A swPool_Vk 0

scoreboard players operation B swPool_Vi = @s swPool_vex
scoreboard players operation B swPool_Vj = @s swPool_vey
scoreboard players operation B swPool_Vk = @s swPool_vez

function pool:classes/physics/vacrossvb

scoreboard players operation @s swPool_wx = O swPool_Vi
#scoreboard players operation @s swPool_wy = O swPool_Vj
scoreboard players operation @s swPool_wz = O swPool_Vk

scoreboard players operation @s swPool_wx *= C_100 swPool_C
#scoreboard players operation @s swPool_wy *= C_100 swPool_C
scoreboard players operation @s swPool_wz *= C_100 swPool_C

scoreboard players operation @s swPool_wx /= C_r swPool_C
#scoreboard players operation @s swPool_wy /= C_r swPool_C
scoreboard players operation @s swPool_wz /= C_r swPool_C

scoreboard players operation @s swPool_wx *= C_100 swPool_C
#scoreboard players operation @s swPool_wy *= C_100 swPool_C
scoreboard players operation @s swPool_wz *= C_100 swPool_C
