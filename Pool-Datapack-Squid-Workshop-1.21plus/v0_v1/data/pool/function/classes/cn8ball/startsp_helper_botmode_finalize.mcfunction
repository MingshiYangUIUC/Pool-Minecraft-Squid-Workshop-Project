# additional bot settings
# make the pool table a fake opponent
execute if entity @a[tag=swPool_poolplay,tag=swPool_CN] at @e[tag=swPool_pooltable] run summon item_display ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["swPool_botmode","swPool_poolplay"],CustomName:'"电脑玩家"',interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.727f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if entity @a[tag=swPool_poolplay,tag=swPool_EN,tag=!swPool_CN] at @e[tag=swPool_pooltable] run summon item_display ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["swPool_botmode","swPool_poolplay"],CustomName:'"Bot Player"',interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.727f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

execute if score #bot_turn swMath_V matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"电脑玩家开球。"}]
execute if score #bot_turn swMath_V matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Bot Player's turn to break."}]
execute if score #bot_turn swMath_V matches 1 as @e[tag=swPool_botmode] at @s run function pool:classes/bot/generic/__run_ai
