tag @s[tag=swPool_ballinhand] add swPool_placingcue

kill @e[tag=swPool_temppin]

execute as @e[tag=swPool_pool] at @s run summon armor_stand ~ ~ ~ {Tags:["swPool_temppin"],NoGravity:1b,Small:1b,Invisible:1b}
execute as @e[tag=swPool_temppin] at @s run data modify entity @s Tags set from entity @e[distance=0,limit=1,tag=swPool_pool] Tags




execute as @e[tag=swPool_pool] unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:acacia_button"}]}] run tag @s add swPool_temppin

tag @e[tag=swPool_temppin] remove swPool_pool

execute as @a[tag=swPool_poolplay] run scoreboard players operation @s swPool_hidScore = @s swPool_Score
scoreboard players operation Opponent swPool_hidScore = Opponent swPool_Score
scoreboard players operation StrokeRec swPool_hidScore = Stroke swPool_hidScore
scoreboard players operation FirstHit swPool_hidScore = @e[tag=swPool_pooltable,limit=1] swPool_firsthit

scoreboard players operation V_addon swPool_hidScore = V_addon swPool_v

scoreboard players operation Pocketed_T_rec swPool_hidScore = Pocketed_Total swPool_hidScore

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