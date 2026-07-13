
# create a copy of items (this line will be updated when rewriting to 1.21)
execute as @e[tag=swPool_pool] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_tmprender"],NoGravity:1b,Small:1b,Invisible:1b}

# different files for different versions
#execute unless data storage minecraft:swpool {version:[1210]} run function pool:classes/bot/generic/__copy_unequip_120
#execute if data storage minecraft:swpool {version:[1210]} run function pool:classes/bot/generic/__copy_unequip_121

# 1.16-1.20
execute unless data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data modify entity @e[tag=swPool_tmprender,limit=1,sort=nearest] ArmorItems set from entity @s ArmorItems
execute unless data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data modify entity @e[tag=swPool_tmprender,limit=1,sort=nearest] Pose set from entity @s Pose
execute unless data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data merge entity @s {ArmorItems:[{},{},{},{}]}

# 1.21plus version=1210
execute if data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data modify entity @e[tag=swPool_tmprender,limit=1,sort=nearest] item set from entity @s item
execute if data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data modify entity @e[tag=swPool_tmprender,limit=1,sort=nearest] transformation set from entity @s transformation
execute if data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data merge entity @s {item:{}}
