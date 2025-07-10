

execute if entity @a[distance=0.001..,tag=swPool_wait_uk8ball] run tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[MP UK 8 Ball] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_uk8ball,limit=1,sort=random]"},{"text":" is available for a multiplayer game. "},{"text":"<Join?>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 115"}}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[SP UK 8 Ball] "},{"selector":"@s"},{"text":" Confirm single player? "},{"text":"<YES!>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 116"}}]
execute if entity @a[distance=0.001..,tag=swPool_wait_uk8ball] run tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[多人英式八球] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_uk8ball,limit=1,sort=random]"},{"text":"准备进行一场多人游戏"},{"text":"<加入？>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 115"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[单人英式八球] "},{"selector":"@s"},{"text":" 确认单人游戏？"},{"text":"<好！>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 116"}}]

tag @s add swPool_wait
tag @s add swPool_wait_uk8ball
tag @s add swPool_wait_sp
