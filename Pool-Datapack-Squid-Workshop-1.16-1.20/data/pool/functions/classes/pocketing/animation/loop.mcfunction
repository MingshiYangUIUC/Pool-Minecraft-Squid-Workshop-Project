function pool:classes/pose/w2dpdt_iterative
scoreboard players remove @s swPool_T 1

scoreboard players operation #self swPool_vx = @s swPool_vex
scoreboard players operation #self swPool_vz = @s swPool_vez
#tellraw @a [{"text":" vx, "},{"score":{"objective":"swPool_vx","name":"#self"}}]
#tellraw @a [{"text":" vz, "},{"score":{"objective":"swPool_vz","name":"#self"}}]
scoreboard players operation #self swPool_vx *= C_500 swPool_C
scoreboard players operation #self swPool_vz *= C_500 swPool_C

function pool:classes/motion/new/_helper

execute if score @s swPool_T matches -1 at @s run tp @s ~ ~-0.01 ~
execute if score @s swPool_T matches -2 at @s run tp @s ~ ~-0.02 ~
execute if score @s swPool_T matches -3 at @s run tp @s ~ ~-0.03 ~
execute if score @s swPool_T matches -4 at @s run tp @s ~ ~-0.04 ~
execute if score @s swPool_T matches -5 at @s run tp @s ~ ~-0.05 ~
execute if score @s swPool_T matches -6 at @s run tp @s ~ ~-0.06 ~
execute if score @s swPool_T matches -7 at @s run tp @s ~ ~-0.07 ~
execute if score @s swPool_T matches -8 at @s run tp @s ~ ~-0.08 ~
execute if score @s swPool_T matches -9 at @s run tp @s ~ ~-0.09 ~
execute if score @s swPool_T matches -10 at @s run tp @s ~ ~-0.1 ~
execute if score @s swPool_T matches -10 run kill @s