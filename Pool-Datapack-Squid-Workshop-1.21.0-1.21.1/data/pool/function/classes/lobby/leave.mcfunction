tag @s remove swPool_wait
tag @s remove swPool_wait_snooker
tag @s remove swPool_wait_uk8ball
tag @s remove swPool_wait_sp

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Successfully left the queues."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"成功离开队列。"}]