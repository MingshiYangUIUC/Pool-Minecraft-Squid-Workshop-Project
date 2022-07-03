
#collide first

execute if entity @s[scores={swPool_v=1..},tag=!swPool_colliding] run function pool:classes/motion/move_evolved
#one drag is contained in motion/moved