# begin the game if another player is waiting, otherwise call the joinmp9ball function

tag @s add swPool_empty
execute as @a[tag=swPool_wait_9ball,limit=1] at @s if entity @a[tag=swPool_wait_9ball,distance=0.001..] run tag @a[tag=swPool_empty] remove swPool_empty

execute unless entity @s[tag=swPool_empty] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"This queue is full.","color":"red"}]
execute unless entity @s[tag=swPool_empty] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"此队列已满。","color":"red"}]

execute if entity @s[tag=swPool_empty] run tag @s add swPool_wait
execute if entity @s[tag=swPool_empty] run tag @s add swPool_wait_9ball
execute if entity @s[tag=swPool_empty] run tag @s remove swPool_wait_sp

execute if entity @s[tag=swPool_empty] run execute if entity @a[distance=0.001..,tag=swPool_wait_9ball] run tellraw @a[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[DUO 8 ball] "},{"selector":"@a[tag=swPool_wait_9ball,limit=1,sort=furthest]"},{"text":", "},{"selector":"@a[tag=swPool_wait_9ball,limit=1,sort=nearest]"},{"text":", "},{"text":"<BEGIN!>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 179"}}]
execute if entity @s[tag=swPool_empty] run execute if entity @a[distance=0.001..,tag=swPool_wait_9ball] run tellraw @a[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[双人八球] "},{"selector":"@a[tag=swPool_wait_9ball,limit=1,sort=furthest]"},{"text":"，"},{"selector":"@a[tag=swPool_wait_9ball,limit=1,sort=nearest]"},{"text":"，"},{"text":"<开始！>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 179"}}]
execute if entity @s[tag=swPool_empty] run execute unless entity @a[distance=0.001..,tag=swPool_wait_9ball] run function pool:classes/lobby/beginmp9ball

tag @s remove swPool_empty