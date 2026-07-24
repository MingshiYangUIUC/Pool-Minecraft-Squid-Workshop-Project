data remove storage minecraft:swpool allowcheats
data merge storage minecraft:swpool {disallowcheats:1}
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Cheat is not allowed"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"不允许作弊"}]