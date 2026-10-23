
scoreboard players operation #self swPool_vx = @s swPool_vex
scoreboard players operation #self swPool_vz = @s swPool_vez
scoreboard players operation #self swPool_vx *= C_500 swPool_C
scoreboard players operation #self swPool_vz *= C_500 swPool_C

execute if entity @s[tag=swPool_potting] run function pool:classes/motion/new/_helper
execute unless entity @s[tag=swPool_potting] run function pool:classes/motion/direct/_helper

function pool:classes/spin/change_of_motion

