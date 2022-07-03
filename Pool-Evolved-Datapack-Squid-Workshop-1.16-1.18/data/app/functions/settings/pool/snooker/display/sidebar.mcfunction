# show score in sidebar of all players
#also modify the tag of pooltable, and reload the display
data merge storage minecraft:swpool {displayscore:'sidebar'}
tag @e[tag=swPool_pooltable] remove swPool_dialogue
tag @e[tag=swPool_pooltable] add swPool_sidebar

execute if entity @e[tag=swPool_pooltable,tag=swPool_snookermode] run scoreboard objectives setdisplay sidebar swPool_Score

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Score will be displayed in the sidebar.","color":"gray"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"将在侧边栏显示分数。","color":"gray"}]