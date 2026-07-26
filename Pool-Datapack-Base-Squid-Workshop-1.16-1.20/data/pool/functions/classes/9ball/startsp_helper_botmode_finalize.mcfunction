# additional bot settings
# make the pool table a fake opponent
execute if entity @a[tag=swPool_poolplay,tag=swPool_CN] at @e[tag=swPool_pooltable] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["swPool_botmode","swPool_poolplay"],CustomName:'"电脑玩家"'}
execute if entity @a[tag=swPool_poolplay,tag=swPool_EN,tag=!swPool_CN] at @e[tag=swPool_pooltable] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["swPool_botmode","swPool_poolplay"],CustomName:'"Bot Player"'}

execute as @a[tag=swPool_poolplay] at @s if entity @a[distance=0.001..,limit=1] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"red"},{"text":"您可能处在多人游戏中，电脑玩家可能造成卡顿！"}]
execute as @a[tag=swPool_poolplay] at @s if entity @a[distance=0.001..,limit=1] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"red"},{"text":"It seems like you are in a multiplayer game. The bot player may cause lag!"}]
execute as @a[tag=swPool_poolplay] at @s if entity @a[distance=0.001..,limit=1] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"red"},{"underlined":true,"color":"red","text":"<现在开启极速模式>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/bot/instant_mode_on"}}]
execute as @a[tag=swPool_poolplay] at @s if entity @a[distance=0.001..,limit=1] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"red"},{"underlined":true,"color":"red","text":"<Turn on instant mode now>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/bot/instant_mode_on"}}]

execute if score #bot_turn swMath_V matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"电脑玩家开球。"}]
execute if score #bot_turn swMath_V matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Bot Player's turn to break."}]
execute if score #bot_turn swMath_V matches 1 as @e[tag=swPool_botmode] at @s run function pool:classes/bot/generic/__run_ai
scoreboard players reset #bot_turn swMath_V
