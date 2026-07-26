execute if score #self swPool_vx matches ..-1 run function pool:classes/motion/new/nvx
execute if score #self swPool_vx matches 1.. run function pool:classes/motion/new/pvx

execute if score #self swPool_vz matches ..-1 run function pool:classes/motion/new/nvz
execute if score #self swPool_vz matches 1.. run function pool:classes/motion/new/pvz

scoreboard players set #self swPool_vx 0
scoreboard players set #self swPool_vz 0

# several common radius values
execute if score C_r swPool_C matches 1250 at @s if entity @e[type=armor_stand,tag=swPool_pool,distance=0.00001..0.25] run function pool:classes/motion/new_retreat
execute if score C_r swPool_C matches 1000 at @s if entity @e[type=armor_stand,tag=swPool_pool,distance=0.00001..0.2] run function pool:classes/motion/new_retreat
execute if score C_r swPool_C matches 750 at @s if entity @e[type=armor_stand,tag=swPool_pool,distance=0.00001..0.15] run function pool:classes/motion/new_retreat
execute if score C_r swPool_C matches 500 at @s if entity @e[type=armor_stand,tag=swPool_pool,distance=0.00001..0.1] run function pool:classes/motion/new_retreat
execute if score C_r swPool_C matches 250 at @s if entity @e[type=armor_stand,tag=swPool_pool,distance=0.00001..0.05] run function pool:classes/motion/new_retreat

execute at @s run function pool:classes/master/read_tmppos
