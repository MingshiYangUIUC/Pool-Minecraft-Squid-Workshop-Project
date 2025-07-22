# begin the game if another player is waiting, otherwise call the joinmpcn8ball function

tag @s add swPool_empty
execute as @a[tag=swPool_wait_cn8ball,limit=1] at @s if entity @a[tag=swPool_wait_cn8ball,distance=0.001..] run tag @a[tag=swPool_empty] remove swPool_empty

execute unless entity @s[tag=swPool_empty] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"This queue is full.","color":"red"}]
execute unless entity @s[tag=swPool_empty] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"此队列已满。","color":"red"}]

execute if entity @s[tag=swPool_empty] run tag @s add swPool_wait
execute if entity @s[tag=swPool_empty] run tag @s add swPool_wait_cn8ball
execute if entity @s[tag=swPool_empty] run tag @s remove swPool_wait_sp

execute if entity @s[tag=swPool_empty] run execute if entity @a[distance=0.001..,tag=swPool_wait_cn8ball] run tellraw @a[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[MP CN 8 Ball] "},{"selector":"@a[tag=swPool_wait_cn8ball,limit=1,sort=furthest]"},{"text":", "},{"selector":"@a[tag=swPool_wait_cn8ball,limit=1,sort=nearest]"},{"text":", "},{"text":"<BEGIN!>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cn8ball/start_helper"}}]
execute if entity @s[tag=swPool_empty] run execute if entity @a[distance=0.001..,tag=swPool_wait_cn8ball] run tellraw @a[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[多人中式八球] "},{"selector":"@a[tag=swPool_wait_cn8ball,limit=1,sort=furthest]"},{"text":"，"},{"selector":"@a[tag=swPool_wait_cn8ball,limit=1,sort=nearest]"},{"text":"，"},{"text":"<开始！>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cn8ball/start_helper"}}]
execute if entity @s[tag=swPool_empty] run execute unless entity @a[distance=0.001..,tag=swPool_wait_cn8ball] run function pool:classes/lobby/beginmpcn8ball

tag @s remove swPool_empty