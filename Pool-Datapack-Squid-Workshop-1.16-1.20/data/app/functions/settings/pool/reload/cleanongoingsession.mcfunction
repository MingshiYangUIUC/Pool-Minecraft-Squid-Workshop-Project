data remove storage minecraft:swpool keepsession
data merge storage minecraft:swpool {cleansession:1}
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Active table and game are cleared when reloading"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"重新加载时清除当前球桌和游戏"}]