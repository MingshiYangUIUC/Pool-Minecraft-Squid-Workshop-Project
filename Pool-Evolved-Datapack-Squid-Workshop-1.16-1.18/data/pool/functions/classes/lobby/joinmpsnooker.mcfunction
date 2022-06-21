## MP Snooker
#say MP Snooker

tag @s add swPool_wait
tag @s add swPool_wait_snooker

execute if entity @a[distance=0.001..,tag=swPool_wait_snooker] run tellraw @a[tag=!swPool_mute] [{"text":"[MP Snooker] "},{"selector":"@a[tag=swPool_wait_snooker,limit=1,sort=furthest]"},{"text":", "},{"selector":"@a[tag=swPool_wait_snooker,limit=1,sort=nearest]"},{"text":", "},{"text":"<BEGIN!>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/start_helper"}}]
execute unless entity @a[distance=0.001..,tag=swPool_wait_snooker] run tellraw @a[tag=!swPool_mute] [{"text":"[MP Snooker] "},{"selector":"@a[tag=swPool_wait_snooker,limit=1,sort=random]"},{"text":" is waiting. "},{"text":"<Join>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpsnooker"}}]
