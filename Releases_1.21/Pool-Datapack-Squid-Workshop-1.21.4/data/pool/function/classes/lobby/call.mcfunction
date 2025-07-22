# temporary for test
#tag @a remove swPool_wait
#tag @a remove swPool_wait_snooker

tag @s add swPool_calling

tellraw @s[tag=!swPool_wait_snooker,tag=!swPool_wait_uk8ball,tag=!swPool_wait_cn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"You are not in queue."}]
tellraw @s[tag=swPool_wait_snooker,tag=!swPool_wait_uk8ball,tag=!swPool_wait_cn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"You are in queue of Snooker."}]
tellraw @s[tag=!swPool_wait_snooker,tag=swPool_wait_uk8ball,tag=!swPool_wait_cn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"You are in queue of UK 8 Ball."}]
tellraw @s[tag=!swPool_wait_snooker,tag=!swPool_wait_uk8ball,tag=swPool_wait_cn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"You are in queue of CN 8 Ball."}]
tellraw @s[tag=swPool_wait_snooker,tag=swPool_wait_uk8ball,tag=!swPool_wait_cn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"You are in queue of Snooker and UK 8 Ball."}]
tellraw @s[tag=swPool_wait_snooker,tag=!swPool_wait_uk8ball,tag=swPool_wait_cn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"You are in queue of Snooker and CN 8 Ball."}]
tellraw @s[tag=!swPool_wait_snooker,tag=swPool_wait_uk8ball,tag=swPool_wait_cn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"You are in queue of UK 8 Ball and CN 8 Ball."}]
tellraw @s[tag=swPool_wait_snooker,tag=swPool_wait_uk8ball,tag=swPool_wait_cn8ball,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"You are in queue of Snooker, UK 8 Ball, and CN 8 Ball."}]

tellraw @s[tag=!swPool_wait_snooker,tag=!swPool_wait_uk8ball,tag=!swPool_wait_cn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"您不在队列中。"}]
tellraw @s[tag=swPool_wait_snooker,tag=!swPool_wait_uk8ball,tag=!swPool_wait_cn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"您在斯诺克队列中。"}]
tellraw @s[tag=!swPool_wait_snooker,tag=swPool_wait_uk8ball,tag=!swPool_wait_cn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"您在英式八球队列中。"}]
tellraw @s[tag=!swPool_wait_snooker,tag=!swPool_wait_uk8ball,tag=swPool_wait_cn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"您在中式八球队列中。"}]
tellraw @s[tag=swPool_wait_snooker,tag=swPool_wait_uk8ball,tag=!swPool_wait_cn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"您在斯诺克和英式八球队列中。"}]
tellraw @s[tag=swPool_wait_snooker,tag=!swPool_wait_uk8ball,tag=swPool_wait_cn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"您在斯诺克和中式八球队列中。"}]
tellraw @s[tag=!swPool_wait_snooker,tag=swPool_wait_uk8ball,tag=swPool_wait_cn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"您在英式八球和中式八球队列中。"}]
tellraw @s[tag=swPool_wait_snooker,tag=swPool_wait_uk8ball,tag=swPool_wait_cn8ball,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"您在斯诺克，英式八球和中式八球队列中。"}]


### Display @s's current queue here.


execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp] as @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"2 players are waiting for Snooker, they may begin."}]
execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp] as @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"1 player is waiting for Snooker."}]
execute if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"2 players are waiting for UK 8 Ball, they may begin."}]
execute if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"1 player is waiting for UK 8 Ball."}]
execute if entity @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"2 players are waiting for CN 8 Ball, they may begin."}]
execute if entity @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"1 player is waiting for CN 8 Ball."}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Join MP Snooker> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpsnooker"}},{"text":"<Join SP Snooker>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspsnooker"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Join MP UK8Ball> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpuk8ball"}},{"text":"<Join SP UK8Ball>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspuk8ball"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Join MP CN8Ball> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpcn8ball"}},{"text":"<Join SP CN8Ball>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspcn8ball"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Spectate>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add swPool_spec"}},{"text":" "},{"text":"<Stop Spectating>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s remove swPool_spec"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Leave Queue>","color":"dark_red","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/leave"}}]

execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp] as @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"已经有两位玩家等候斯诺克。"}]
execute if entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp] as @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_snooker,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"一位玩家在等候斯诺克。"}]
execute if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"已经有两位玩家等候英式八球。"}]
execute if entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_uk8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"一位玩家在等候英式八球。"}]
execute if entity @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp,limit=1] at @s if entity @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"已经有两位玩家等候中式八球。"}]
execute if entity @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp] as @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp,limit=1] at @s unless entity @a[tag=swPool_wait_cn8ball,tag=!swPool_wait_sp,distance=0.001..] run tellraw @a[tag=!swPool_mute,tag=swPool_calling,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"一位玩家在等候中式八球。"}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"< 加入多人斯诺克 > ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpsnooker"}},{"text":"< 加入单人斯诺克 >","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspsnooker"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<加入多人英式八球> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpuk8ball"}},{"text":"<加入单人英式八球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspuk8ball"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<加入多人中式八球> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpcn8ball"}},{"text":"<加入单人中式八球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginspcn8ball"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<观战>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add swPool_spec"}},{"text":" "},{"text":"<停止观战>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s remove swPool_spec"}}]
tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<离开队列>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/leave"}}]


tag @a remove swPool_calling