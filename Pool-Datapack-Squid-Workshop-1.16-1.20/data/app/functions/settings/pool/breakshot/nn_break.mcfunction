data remove storage minecraft:swpool def_break
data merge storage minecraft:swpool {nn_break:1}
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Use neural network during breakshot"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"开球时使用神经网络"}]
