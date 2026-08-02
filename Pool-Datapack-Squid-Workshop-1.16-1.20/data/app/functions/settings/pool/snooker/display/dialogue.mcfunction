#show score in dialogue of poolplay players
#also modify the tag of pooltable, and reload the display
data merge storage minecraft:swpool {displayscore:'dialogue'}
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_sidebar
tag 000c2be1-0001-414d-0000-000000000000 add swPool_dialogue

scoreboard objectives setdisplay sidebar

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"text":"Score will be displayed in the dialogue area.","color":"gray"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"text":"将在聊天栏显示分数。","color":"gray"}]
