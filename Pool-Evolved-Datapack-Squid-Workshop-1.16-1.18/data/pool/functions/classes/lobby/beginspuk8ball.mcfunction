

execute if entity @a[distance=0.001..,tag=swPool_wait_uk8ball] run tellraw @s[tag=!swPool_mute] [{"text":"[MP UK 8 Ball] "},{"selector":"@a[distance=0.001..,tag=swPool_wait_uk8ball,limit=1,sort=random]"},{"text":" is available for a multiplayer game. "},{"text":"<Join?>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/beginmpuk8ball"}}]

tellraw @s [{"text":"[SP UK 8 Ball] "},{"selector":"@s"},{"text":": Confirm single player? "},{"text":"<YES!>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/uk8ball/startsp_helper"}}]

tag @s add swPool_wait
tag @s add swPool_wait_uk8ball
tag @s add swPool_wait_sp
