tag @s[tag=swPool_ballinhand] add swPool_placingcue

kill @e[tag=swPool_temppin]

execute as @e[tag=swPool_pool] at @s run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_temppin"],NoGravity:1b,Small:1b,Invisible:1b,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

execute as @e[tag=swPool_temppin] at @s run data modify entity @s transformation.right_rotation set from entity @e[distance=..0.01,limit=1,tag=swPool_pool] transformation.right_rotation
execute as @e[tag=swPool_temppin] at @s run data modify entity @s Tags set from entity @e[distance=..0.001,limit=1,tag=swPool_pool] Tags



execute as @e[tag=swPool_pool] unless entity @s[nbt={item:{id:"minecraft:acacia_button"}}] run tag @s add swPool_temppin

tag @e[tag=swPool_temppin] remove swPool_pool

execute as @a[tag=swPool_poolplay] run scoreboard players operation @s swPool_hidScore = @s swPool_Score
scoreboard players operation Opponent swPool_hidScore = Opponent swPool_Score
scoreboard players operation StrokeRec swPool_hidScore = Stroke swPool_hidScore
scoreboard players operation FirstHit swPool_hidScore = @e[tag=swPool_pooltable,limit=1] swPool_firsthit

scoreboard players operation #breakshot swPool_hidScore = #breakshot swPool_v

scoreboard players operation Pocketed_T_rec swPool_hidScore = Pocketed_Total swPool_hidScore
scoreboard players operation Pocketed_Turn_rec swPool_hidScore = Pocketed_Turn swPool_hidScore

tag @a remove swPool_redrec
tag @a remove swPool_ylwrec
tag @a remove swPool_blkrec
tag @a remove swPool_stkrec
tag @e[tag=swPool_pooltable] remove swPool_awdrec
tag @e[tag=swPool_pooltable] remove swPool_edawdrec

tag @a[tag=swPool_aimred] add swPool_redrec
tag @a[tag=swPool_aimylw] add swPool_ylwrec
tag @a[tag=swPool_aimblk] add swPool_blkrec
tag @a[tag=swPool_streak] add swPool_stkrec

tag @e[tag=swPool_awarded] add swPool_awdrec
tag @e[tag=swPool_endaward] add swPool_edawdrec

tag @a remove swPool_solidrec
tag @a remove swPool_striperec
tag @a remove swPool_08rec

tag @a[tag=swPool_aimsolid] add swPool_solidrec
tag @a[tag=swPool_aimstripe] add swPool_striperec
tag @a[tag=swPool_aim08] add swPool_08rec

tag @e[tag=swPool_pooltable] remove swPool_cn8ball_breakingrec
tag @e[tag=swPool_pooltable] remove swPool_cn8ball_openrec
tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_breaking] add swPool_cn8ball_breakingrec
tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_open] add swPool_cn8ball_openrec