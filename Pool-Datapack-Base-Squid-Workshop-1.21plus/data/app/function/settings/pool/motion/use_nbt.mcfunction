data merge storage minecraft:swpool {move_by_nbt:1}
data remove storage minecraft:swpool move_by_tp
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Motion is done by NBT writes."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"使用 NBT写入 移动球。"}]