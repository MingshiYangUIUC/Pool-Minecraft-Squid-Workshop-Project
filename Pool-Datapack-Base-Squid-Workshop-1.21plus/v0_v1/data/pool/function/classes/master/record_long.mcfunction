tag @s[tag=swPool_ballinhand] add swPool_long_placingcue

kill @e[tag=swPool_long_temppin]

execute as @e[tag=swPool_pool] at @s run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_long_temppin"],NoGravity:1b,Small:1b,Invisible:1b,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.727f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

execute as @e[tag=swPool_long_temppin] at @s run data modify entity @s transformation.right_rotation set from entity @e[distance=..0.01,limit=1,tag=swPool_pool] transformation.right_rotation
execute as @e[tag=swPool_long_temppin] at @s run data modify entity @s Tags set from entity @e[distance=..0.001,limit=1,tag=swPool_pool] Tags



execute as @e[tag=swPool_pool] unless entity @s[nbt={item:{id:"minecraft:acacia_button"}}] run tag @s add swPool_long_temppin

tag @e[tag=swPool_long_temppin] remove swPool_pool

execute as @a[tag=swPool_poolplay] run scoreboard players operation @s swPool_long_hidScore = @s swPool_Score
scoreboard players operation Opponent swPool_long_hidScore = Opponent swPool_Score
scoreboard players operation StrokeRec swPool_long_hidScore = Stroke swPool_long_hidScore
scoreboard players operation FirstHit swPool_long_hidScore = @e[tag=swPool_pooltable,limit=1] swPool_firsthit

scoreboard players operation #breakshot swPool_long_hidScore = #breakshot swPool_v

scoreboard players operation Pocketed_T_rec swPool_long_hidScore = Pocketed_Total swPool_long_hidScore
scoreboard players operation Pocketed_Turn_rec swPool_long_hidScore = Pocketed_Turn swPool_long_hidScore

tag @a remove swPool_long_redrec
tag @a remove swPool_long_ylwrec
tag @a remove swPool_long_blkrec
tag @a remove swPool_long_stkrec
tag @e[tag=swPool_pooltable] remove swPool_long_awdrec
tag @e[tag=swPool_pooltable] remove swPool_long_edawdrec

tag @a[tag=swPool_aimred] add swPool_long_redrec
tag @a[tag=swPool_aimylw] add swPool_long_ylwrec
tag @a[tag=swPool_aimblk] add swPool_long_blkrec
tag @a[tag=swPool_streak] add swPool_long_stkrec

tag @e[tag=swPool_awarded] add swPool_long_awdrec
tag @e[tag=swPool_endaward] add swPool_long_edawdrec

tag @a remove swPool_long_solidrec
tag @a remove swPool_long_striperec
tag @a remove swPool_long_08rec

tag @a[tag=swPool_aimsolid] add swPool_long_solidrec
tag @a[tag=swPool_aimstripe] add swPool_long_striperec
tag @a[tag=swPool_aim08] add swPool_long_08rec

tag @e[tag=swPool_pooltable] remove swPool_long_cn8ball_breakingrec
tag @e[tag=swPool_pooltable] remove swPool_long_cn8ball_openrec
tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_breaking] add swPool_long_cn8ball_breakingrec
tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_open] add swPool_long_cn8ball_openrec