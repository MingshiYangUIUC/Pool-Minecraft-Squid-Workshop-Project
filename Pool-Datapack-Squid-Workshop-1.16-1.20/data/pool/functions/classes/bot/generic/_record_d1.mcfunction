tag @s[tag=swPool_ballinhand] add swPool_placingcue

kill @e[tag=swPool_temppin_d1]

scoreboard players set @e[tag=swPool_pool] swPool_original 1
execute as @e[tag=swPool_pool] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_temppin_d1"],NoGravity:1b,Small:1b,Invisible:1b}

execute as @e[tag=swPool_temppin_d1] at @s run data modify entity @s Pose.Head set from entity @e[distance=..0.01,limit=1,tag=swPool_pool] Pose.Head
execute as @e[tag=swPool_temppin_d1] at @s run data modify entity @s Tags set from entity @e[distance=..0.001,limit=1,tag=swPool_pool] Tags



execute as @e[tag=swPool_pool] unless score @s swPool_original matches 1 run tag @s add swPool_temppin_d1

tag @e[tag=swPool_temppin_d1] remove swPool_pool

scoreboard players reset @e[tag=swPool_pool] swPool_original

execute as @a[tag=swPool_poolplay] run scoreboard players operation @s swPool_botTmp = @s swPool_Score
scoreboard players operation Opponent swPool_botTmp = Opponent swPool_Score
scoreboard players operation StrokeRec_d1 swPool_botTmp = Stroke swPool_hidScore
scoreboard players operation FirstHit_d1 swPool_botTmp = 000c2be1-0001-414d-0000-000000000000 swPool_firsthit
scoreboard players operation #freeball_target_d1 swPool_botTmp = #freeball_target swMath_V

scoreboard players operation #breakshot_d1 swPool_botTmp = #breakshot swPool_v

scoreboard players operation Pocketed_T_rec_d1 swPool_botTmp = Pocketed_Total swPool_hidScore
scoreboard players operation Pocketed_Turn_rec_d1 swPool_botTmp = Pocketed_Turn swPool_hidScore

tag @a remove swPool_redrec_d1
tag @a remove swPool_ylwrec_d1
tag @a remove swPool_blkrec_d1
tag @a remove swPool_stkrec_d1
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_awdrec_d1
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_edawdrec_d1

tag @a[tag=swPool_aimred] add swPool_redrec_d1
tag @a[tag=swPool_aimylw] add swPool_ylwrec_d1
tag @a[tag=swPool_aimblk] add swPool_blkrec_d1
tag @a[tag=swPool_streak] add swPool_stkrec_d1

tag @e[tag=swPool_awarded] add swPool_awdrec_d1
tag @e[tag=swPool_endaward] add swPool_edawdrec_d1

tag @a remove swPool_solidrec_d1
tag @a remove swPool_striperec_d1
tag @a remove swPool_08rec_d1

tag @a[tag=swPool_aimsolid] add swPool_solidrec_d1
tag @a[tag=swPool_aimstripe] add swPool_striperec_d1
tag @a[tag=swPool_aim08] add swPool_08rec_d1

tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ball_breakingrec_d1
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ball_openrec_d1
tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_breaking] add swPool_cn8ball_breakingrec_d1
tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_open] add swPool_cn8ball_openrec_d1

tag 000c2be1-0001-414d-0000-000000000000 remove swPool_freeball_turnrec_d1
tag @e[tag=swPool_pooltable,tag=swPool_freeball_turn] add swPool_freeball_turnrec_d1
