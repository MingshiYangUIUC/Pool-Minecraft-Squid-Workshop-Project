
execute unless data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data modify entity @s ArmorItems set from entity @e[tag=swPool_tmprender,limit=1,sort=nearest] ArmorItems
execute unless data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data modify entity @s Pose set from entity @e[tag=swPool_tmprender,limit=1,sort=nearest] Pose

execute if data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data modify entity @s item set from entity @e[tag=swPool_tmprender,limit=1,sort=nearest] item
execute if data storage minecraft:swpool {version:[1210]} as @e[tag=swPool_pool] at @s run data modify entity @s transformation set from entity @e[tag=swPool_tmprender,limit=1,sort=nearest] transformation

kill @e[tag=swPool_tmprender]
