data merge storage minecraft:swpool {keepsession:1}
data remove storage minecraft:swpool cleansession
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Active table and game are kept when reloading"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"重新加载时保留当前球桌和游戏"}]