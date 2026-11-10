tag @a remove swPool_on_tutorial
tag @s add swPool_on_tutorial

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Tutorial started! Follow the instructions in chat to learn how to play!","color":"aqua"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"教程开始了！ 跟着聊天栏里的提示，一起来学习怎么打台球吧！","color":"aqua"}]

function pool:classes/table/clear

scoreboard players set #tutorial_step swMath_V 1
scoreboard players set #tutorial_step_complete swMath_V 0
