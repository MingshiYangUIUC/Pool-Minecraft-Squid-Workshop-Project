

execute if entity @a[distance=0.001..,tag=swPool_wait_cn8ball] run tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[MP CN 8 Ball] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_cn8ball,limit=1,sort=random]"},{"text":" is available for a multiplayer game. "},{"text":"<Join?>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 117"}}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[SP CN 8 Ball] "},{"selector":"@s"},{"text":" Confirm single player? "},{"text":"<YES!>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 118"}}]
execute if entity @a[distance=0.001..,tag=swPool_wait_cn8ball] run tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[多人中式八球] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_cn8ball,limit=1,sort=random]"},{"text":"准备进行一场多人游戏"},{"text":"<加入？>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 117"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[单人中式八球] "},{"selector":"@s"},{"text":" 确认单人游戏？"},{"text":"<好！>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 118"}}]

tag @s add swPool_wait
tag @s add swPool_wait_cn8ball
tag @s add swPool_wait_sp
