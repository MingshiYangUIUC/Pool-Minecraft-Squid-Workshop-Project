

execute if entity @a[distance=0.001..,tag=swPool_wait_cn8ball] run tellraw @s[tag=!swPool_mute,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[DUO 8 ball] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_cn8ball,limit=1,sort=random]"},{"text":" is available for a multiplayer game. "},{"text":"<Join?>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 167"}}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[SP 8 ball] "},{"selector":"@s"},{"text":" Confirm single player? "},{"text":"<YES!>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 168"}}]
execute if entity @a[distance=0.001..,tag=swPool_wait_cn8ball] run tellraw @s[tag=!swPool_mute,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[双人八球] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_cn8ball,limit=1,sort=random]"},{"text":"准备进行一场双人游戏"},{"text":"<加入？>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 167"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[单人八球] "},{"selector":"@s"},{"text":" 确认单人游戏？"},{"text":"<好！>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 168"}}]

tag @s add swPool_wait
tag @s add swPool_wait_cn8ball
tag @s add swPool_wait_sp
