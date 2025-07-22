#execute if score #self swPool_vx matches ..-1 at @s run tp @s ~0.0005 ~ ~
#execute if score #self swPool_vx matches 1.. at @s run tp @s ~-0.0005 ~ ~

#execute if score #self swPool_vz matches ..-1 at @s run tp @s ~ ~ ~0.0005
#execute if score #self swPool_vz matches 1.. at @s run tp @s ~ ~ ~-0.0005
#say rr
tp @e[tag=swPool_rhp1,limit=1] @s
tag @s add swPool_retreating
execute store result entity @e[tag=swPool_rhp1,limit=1,distance=..0.01] Rotation[0] float 0.0001 run scoreboard players get @s swPool_Rotation

execute as @e[tag=swPool_rhp1,limit=1] at @s run function pool:classes/motion/retreat
tp @s @e[tag=swPool_rhp1,limit=1]
data modify entity @s Rotation[0] set value 0.0f
tag @s remove swPool_retreating
#execute at @s if entity @e[tag=swPool_pool,distance=0.0001..0.25] run function pool:classes/motion/new_retreat