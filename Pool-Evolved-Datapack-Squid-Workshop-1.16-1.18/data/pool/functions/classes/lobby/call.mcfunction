# temporary for test
#tag @a remove swPool_wait
#tag @a remove swPool_wait_snooker

tag @s add swPool_calling

tellraw @s [{"text":"➇"}]
### Display @s's current queue here.


execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp] as @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"2 players are waiting for Snooker, they may begin."}]
execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp] as @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"1 player is waiting for Snooker."}]
execute if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"2 players are waiting for UK 8 Ball, they may begin."}]
execute if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"1 player is waiting for UK 8 Ball."}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"<Join MP Snooker> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpsnooker"}},{"text":"<Join MP UK 8 Ball>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpuk8ball"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"<Join SP Snooker> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspsnooker"}},{"text":"<Join SP UK 8 Ball>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspuk8ball"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"<Spectate>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add swPool_spec"}},{"text":" "},{"text":"<Stop Spectating>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s remove swPool_spec"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"<Leave Queue>","color":"dark_red","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/leave"}}]

execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp] as @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"已经有两位玩家等候斯诺克。"}]
execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp] as @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"一位玩家在等候斯诺克。"}]
execute if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"已经有两位玩家等候英式八球。"}]
execute if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"一位玩家在等候英式八球。"}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"<加入多人斯诺克> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpsnooker"}},{"text":"<加入多人英式八球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpuk8ball"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"<加入单人斯诺克> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspsnooker"}},{"text":"<加入单人英式八球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspuk8ball"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"<观战>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add swPool_spec"}},{"text":" "},{"text":"<停止观战>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s remove swPool_spec"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"<离开队列>","color":"dark_red","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/leave"}}]


tag @a remove swPool_calling