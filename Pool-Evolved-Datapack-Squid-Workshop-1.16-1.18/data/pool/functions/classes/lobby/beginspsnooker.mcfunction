

execute if entity @a[distance=0.001..,tag=swPool_wait_snooker] run tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[MP Snooker] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_snooker,limit=1,sort=random]"},{"text":" is available for a multiplayer game. "},{"text":"<Join?>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpsnooker"}}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[SP Snooker] "},{"selector":"@s"},{"text":" Confirm singleplayer game? "},{"text":"<YES!>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/startsp_helper"}}]
execute if entity @a[distance=0.001..,tag=swPool_wait_snooker] run tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[多人斯诺克] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_snooker,limit=1,sort=random]"},{"text":"准备进行一场多人游戏"},{"text":"<加入？>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpsnooker"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[单人斯诺克] "},{"selector":"@s"},{"text":" 确认单人游戏？"},{"text":"<好！>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/startsp_helper"}}]

tag @s add swPool_wait
tag @s add swPool_wait_snooker
tag @s add swPool_wait_sp