data merge storage minecraft:swpool {move_by_tp:1}
data remove storage minecraft:swpool move_by_nbt
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Motion is done by teleporting."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"使用传送移动球。"}]