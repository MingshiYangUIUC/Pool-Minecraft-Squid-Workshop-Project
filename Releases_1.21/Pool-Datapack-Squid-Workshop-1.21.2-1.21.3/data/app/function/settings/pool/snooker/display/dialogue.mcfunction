#show score in dialogue of poolplay players
#also modify the tag of pooltable, and reload the display
data merge storage minecraft:swpool {displayscore:'dialogue'}
tag @e[tag=swPool_pooltable] remove swPool_sidebar
tag @e[tag=swPool_pooltable] add swPool_dialogue

scoreboard objectives setdisplay sidebar

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"Score will be displayed in the dialogue area.","color":"gray"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"text":"将在聊天栏显示分数。","color":"gray"}]