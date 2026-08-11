#w = (n X v)/r

# unit of ve: same as v: 100000000 -> 1m/tick
# unit of final ve: 200000 -> 1m/tick -> 20 m/s -> 25.46 spins per second -> 160 rad / s
# unit of w: m/s / r -> rad/s

#function pool:classes/physics/vseparate_1

#scoreboard players operation @s swPool_vex /= C_500 swPool_C
#scoreboard players operation @s swPool_vez /= C_500 swPool_C

scoreboard players operation #vIn swPool_Vi = @s swPool_v
scoreboard players operation #vIn swPool_Vk = #vIn swPool_Vi

scoreboard players operation #vIn swPool_Vi /= C_-10000 swPool_C
scoreboard players operation #vIn swPool_Vi *= @s swPool_sin
scoreboard players operation #vIn swPool_Vk /= C_10000 swPool_C
scoreboard players operation #vIn swPool_Vk *= @s swPool_cos

scoreboard players operation #vIn swPool_Vi /= C_500 swPool_C
scoreboard players operation #vIn swPool_Vk /= C_500 swPool_C

scoreboard players operation @s swPool_vex = #vIn swPool_Vi
scoreboard players operation @s swPool_vez = #vIn swPool_Vk

#tellraw @a [{"text":"Vex "},{"score":{"objective":"swPool_vex","name":"@s"}}]
#tellraw @a [{"text":"Vex2 "},{"score":{"objective":"swPool_Vi","name":"#vIn"}}]

#tellraw @a [{"text":"Vez "},{"score":{"objective":"swPool_vez","name":"@s"}}]
#tellraw @a [{"text":"Vez2 "},{"score":{"objective":"swPool_Vk","name":"#vIn"}}]

scoreboard players set A swPool_Vi 0
scoreboard players set A swPool_Vj 1
scoreboard players set A swPool_Vk 0

scoreboard players operation B swPool_Vi = #vIn swPool_Vi
scoreboard players set B swPool_Vj 0
scoreboard players operation B swPool_Vk = #vIn swPool_Vk

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
