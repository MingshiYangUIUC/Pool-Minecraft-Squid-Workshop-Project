tag 000c2be1-0001-414d-0000-000000000000 remove swPool_snookermode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_practicemode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_uk8ballmode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ballmode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_9ballmode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_8ball_aibreak
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_9ball_aibreak

scoreboard players set swPool_9ballmode swMath_V 0
scoreboard players set swPool_cn8ballmode swMath_V 0
scoreboard players set swPool_snookermode swMath_V 0
scoreboard players set swPool_uk8ballmode swMath_V 0
scoreboard players set swPool_practicemode swMath_V 0
scoreboard players set swPool_gameon swMath_V 0

scoreboard players set #shootanim swMath_V 0

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]
kill @e[tag=swPool_long_temppin]
kill @e[tag=swPool_spot]
kill @e[tag=swPool_poolplay,type=area_effect_cloud]
kill @e[tag=swPool_botmode]
tag @a remove swPool_spec
tag @e remove swPool_poolplay
tag @a remove swPool_ballinhand
tag @a remove swPool_ballinhand_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
tag @a remove swPool_given
tag @a remove swPool_hitcue
tag @a remove swPool_nextturn
tag @a remove swPool_foul

execute if entity @e[type=item_display,tag=swPool_pooltable,distance=..50] unless data storage minecraft:swpool {version:[1205]} run function pool:classes/lobby/terminate_game
execute if entity @e[type=item_display,tag=swPool_pooltable,distance=..50] if data storage minecraft:swpool {version:[1205]} run function pool:classes/lobby/terminate_game_1205

tag 000c2be1-0001-414d-0000-000000000000 remove swPool_fouled
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pocketing
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_foulcolor
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_foulred
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_hitrail
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_awarded
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_endaward
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_endgame
tag @a remove swPool_hitcue
tag @a remove swPool_aimred
tag @a remove swPool_aimylw
tag @a remove swPool_aimblk
tag @a remove swPool_redrec
tag @a remove swPool_ylwrec
tag @a remove swPool_blkrec
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_awdrec
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_edawdrec

tag @a remove swPool_aimsolid
tag @a remove swPool_aimstripe
tag @a remove swPool_aim08
tag @a remove swPool_solidrec
tag @a remove swPool_striperec
tag @a remove swPool_08rec

tag @a remove swPool_placingcue

tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ball_breaking
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ball_open
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ball_breakingrec
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ball_openrec
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pktcue
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pktsolid
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pktstripe
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pkt08
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pktred
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pktylw
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pktblk

scoreboard players reset @a[tag=swPool_poolplay] swPool_Score
scoreboard players reset @a swPool_Score
scoreboard players reset Opponent swPool_Score
scoreboard players reset Stroke swPool_hidScore
scoreboard players reset @a swPool_firsthit

function pool:classes/bot/generic/__kill_equip
function pool:classes/bot/generic/__cleanup
kill @e[tag=swPool_botmode]
scoreboard players operation #fastfwd swMath_V = #fastfwd_tmp swMath_V
scoreboard players operation #fastfwd_maxiter swMath_V = #fastfwd_maxiter_tmp swMath_V
scoreboard players set #fastfwd_bot swMath_V 0

execute if entity 000c2be1-0001-414d-0000-000000000000 unless entity @e[type=item_display,tag=swPool_pooltable,distance=..50] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please be near the table to turn off the game.","color":"red"}]
execute if entity 000c2be1-0001-414d-0000-000000000000 unless entity @e[type=item_display,tag=swPool_pooltable,distance=..50] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请在球桌边结束游戏。","color":"red"}]
