
scoreboard players operation #self swPool_vx = @s swPool_vex
scoreboard players operation #self swPool_vz = @s swPool_vez
#tellraw @a [{"text":" vx, "},{"score":{"objective":"swPool_vx","name":"#self"}}]
scoreboard players operation #self swPool_vx *= C_500 swPool_C
scoreboard players operation #self swPool_vz *= C_500 swPool_C

function pool:classes/motion/new/_helper

function pool:classes/spin/change_of_motion

