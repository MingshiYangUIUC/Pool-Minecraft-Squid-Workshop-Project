## MP snooker
#say MP snooker

tag @s add swPool_empty
execute as @a[tag=swPool_wait_snooker,limit=1] at @s if entity @a[tag=swPool_wait_snooker,distance=0.001..] run tag @a[tag=swPool_empty] remove swPool_empty

execute unless entity @s[tag=swPool_empty] run tellraw @s [{"text":"This queue is full.","color":"red"}]

execute if entity @s[tag=swPool_empty] run tag @s add swPool_wait
execute if entity @s[tag=swPool_empty] run tag @s add swPool_wait_snooker
execute if entity @s[tag=swPool_empty] run tag @s remove swPool_wait_sp

execute if entity @s[tag=swPool_empty] run execute if entity @a[distance=0.001..,tag=swPool_wait_snooker,tag=!swPool_wait_sp] run tellraw @a[tag=!swPool_mute] [{"text":"[MP Snooker] "},{"selector":"@a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1,sort=furthest]"},{"text":", "},{"selector":"@a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1,sort=nearest]"},{"text":", "},{"text":"<BEGIN!>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/start_helper"}}]
execute if entity @s[tag=swPool_empty] run execute unless entity @a[distance=0.001..,tag=swPool_wait_snooker] run tellraw @a[tag=!swPool_mute] [{"text":"[MP Snooker] "},{"selector":"@a[tag=swPool_wait_snooker,limit=1,sort=random]"},{"text":" is waiting. "},{"text":"<Join>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/joinmpsnooker"}}]

tag @s remove swPool_empty