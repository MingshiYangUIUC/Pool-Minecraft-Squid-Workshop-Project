

execute if entity @a[distance=0.001..,tag=swPool_wait_snooker] run tellraw @s[tag=!swPool_mute] [{"text":"[MP Snooker] "},{"selector":"@a[tag=swPool_wait_snooker,limit=1,sort=random]"},{"text":" is available for a multiplayer game. "},{"text":"<Join?>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpsnooker"}}]

tellraw @s [{"text":"[SP Snooker] "},{"selector":"@s"},{"text":": Confirm single player? "},{"text":"<YES!>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/startsp_helper"}}]

tag @s add swPool_wait
tag @s add swPool_wait_snooker