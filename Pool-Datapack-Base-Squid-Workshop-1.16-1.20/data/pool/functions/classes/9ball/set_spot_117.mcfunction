execute as @e[tag=swPool_pool,tag=swPool_01,limit=1] at @s unless entity @e[tag=swPool_spot,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["swPool_spot"]}
