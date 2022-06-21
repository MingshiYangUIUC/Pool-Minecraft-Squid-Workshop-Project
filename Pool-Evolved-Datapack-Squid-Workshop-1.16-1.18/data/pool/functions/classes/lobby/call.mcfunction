# temporary for test
#tag @a remove swPool_wait
#tag @a remove swPool_wait_snooker

execute if entity @a[tag=swPool_wait_snooker] as @a[tag=swPool_wait_snooker,limit=1] at @s if entity @a[tag=swPool_wait_snooker,distance=0.001..] run tellraw @a[tag=!swPool_mute] [{"text":"2 players are waiting for Snooker, they may begin."}]
execute if entity @a[tag=swPool_wait_snooker] as @a[tag=swPool_wait_snooker,limit=1] at @s unless entity @a[tag=swPool_wait_snooker,distance=0.001..] run tellraw @a[tag=!swPool_mute] [{"text":"1 player is waiting for Snooker."}]

tellraw @a[tag=!swPool_mute,tag=swPool_EN] [{"text":"<Join MP Snooker> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/joinmpsnooker"}},{"text":"<Join SP Snooker>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/joinspsnooker"}}]

tellraw @a[tag=!swPool_mute,tag=swPool_EN] [{"text":"<Spectate>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add swPool_spec"}},{"text":" "},{"text":"<Opt Out>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s remove swPool_spec"}}]