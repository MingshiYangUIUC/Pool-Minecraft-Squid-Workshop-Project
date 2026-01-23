
scoreboard players operation #self swPool_vx = @s swPool_vex
scoreboard players operation #self swPool_vz = @s swPool_vez

scoreboard players operation #self swPool_vx /= C_20 swPool_C
scoreboard players operation #self swPool_vz /= C_20 swPool_C

scoreboard players operation #self swPool_vx *= @s swPool_var04
scoreboard players operation #self swPool_vz *= @s swPool_var04

function pool:classes/motion/new/_helper