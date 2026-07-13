scoreboard players operation @e[tag=swPool_table_core,limit=1,sort=nearest] swPool_sizex = @s swPool_sizex
scoreboard players operation @e[tag=swPool_table_core,limit=1,sort=nearest] swPool_sizez = @s swPool_sizez

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"","color":"white"},{"underlined":true,"text":"<View Lobby>","color":"gold","click_event":{"action":"run_command","command":"/function pool:classes/lobby/call"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"","color":"white"},{"underlined":true,"text":"<打开游戏大厅>","color":"gold","click_event":{"action":"run_command","command":"/function pool:classes/lobby/call"}}]

execute as @e[tag=swPool_table_core,limit=1,sort=nearest] at @s run function pool:classes/table/set_item_display

kill @e[tag=swPool_table_core,limit=1,sort=nearest]

execute at @s if entity @e[tag=swPool_cloth,distance=..0.8] run tp @s ~ ~1 ~
