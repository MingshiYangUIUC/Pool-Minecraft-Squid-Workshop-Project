#w = (n X v)/r

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
scoreboard players operation @s swPool_wy = O swPool_Vj
scoreboard players operation @s swPool_wz = O swPool_Vk

scoreboard players operation @s swPool_wx /= C_r swPool_C
scoreboard players operation @s swPool_wy /= C_r swPool_C
scoreboard players operation @s swPool_wz /= C_r swPool_C

scoreboard players operation @s swPool_wx *= C_10000 swPool_C
scoreboard players operation @s swPool_wy *= C_10000 swPool_C
scoreboard players operation @s swPool_wz *= C_10000 swPool_C
