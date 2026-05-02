tag @s add swPool_check_success

execute at @s unless block ~ ~ ~ air run tag @s remove swPool_check_success
execute at @s unless block ~ ~1 ~ air run tag @s remove swPool_check_success
execute at @s unless block ~ ~2 ~ air run tag @s remove swPool_check_success

execute unless entity @s[tag=swPool_check_success] run particle minecraft:dripping_lava ~ ~0.5 ~ 0.25 0.25 0.25 0 10 force

execute unless entity @s[tag=swPool_check_success] run tellraw @p[tag=swPool_checking,tag=swPool_CN] [{"text":"检测到非空气方块，空间不足！","color":"red"}]
execute unless entity @s[tag=swPool_check_success] run tellraw @p[tag=swPool_checking,tag=swPool_EN] [{"text":"Detected non-air block, insufficient empty space!","color":"red"}]

execute unless entity @s[tag=swPool_check_success] run tag @p[tag=swPool_checking] remove swPool_checking

tag @s remove swPool_check_success