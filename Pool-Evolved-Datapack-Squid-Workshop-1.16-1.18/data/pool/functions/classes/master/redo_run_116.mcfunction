#scoreboard players remove RedoTime swPool_hidScore 1



kill @e[tag=swPool_pool]

tag @e[tag=swPool_temppin] add swPool_pool


replaceitem entity @e[tag=swPool_cue,tag=swPool_temppin] armor.head minecraft:acacia_button{CustomModelData:1}
replaceitem entity @e[tag=swPool_red,tag=swPool_temppin] armor.head minecraft:acacia_button{CustomModelData:2}
replaceitem entity @e[tag=swPool_yellow,tag=swPool_temppin] armor.head minecraft:acacia_button{CustomModelData:3}
replaceitem entity @e[tag=swPool_green,tag=swPool_temppin] armor.head minecraft:acacia_button{CustomModelData:4}
replaceitem entity @e[tag=swPool_brown,tag=swPool_temppin] armor.head minecraft:acacia_button{CustomModelData:5}
replaceitem entity @e[tag=swPool_blue,tag=swPool_temppin] armor.head minecraft:acacia_button{CustomModelData:6}
replaceitem entity @e[tag=swPool_pink,tag=swPool_temppin] armor.head minecraft:acacia_button{CustomModelData:7}
replaceitem entity @e[tag=swPool_black,tag=swPool_temppin] armor.head minecraft:acacia_button{CustomModelData:8}


scoreboard players set @e[tag=swPool_yellow,tag=swPool_temppin] swPool_rank 2
scoreboard players set @e[tag=swPool_green,tag=swPool_temppin] swPool_rank 3
scoreboard players set @e[tag=swPool_brown,tag=swPool_temppin] swPool_rank 4
scoreboard players set @e[tag=swPool_blue,tag=swPool_temppin] swPool_rank 5
scoreboard players set @e[tag=swPool_pink,tag=swPool_temppin] swPool_rank 6
scoreboard players set @e[tag=swPool_black,tag=swPool_temppin] swPool_rank 7

execute as @e[scores={swPool_rank=2}] run data merge entity @s {CustomName:"\"2 Pts\""}
execute as @e[scores={swPool_rank=3}] run data merge entity @s {CustomName:"\"3 Pts\""}
execute as @e[scores={swPool_rank=4}] run data merge entity @s {CustomName:"\"4 Pts\""}
execute as @e[scores={swPool_rank=5}] run data merge entity @s {CustomName:"\"5 Pts\""}
execute as @e[scores={swPool_rank=6}] run data merge entity @s {CustomName:"\"6 Pts\""}
execute as @e[scores={swPool_rank=7}] run data merge entity @s {CustomName:"\"7 Pts\""}

scoreboard players set @e[tag=swPool_pool] swPool_D100 100000
scoreboard players set @e[tag=swPool_pool] swPool_DXX 99000

tag @e[tag=swPool_temppin] remove swPool_temppin


execute as @a[tag=swPool_poolplay] run scoreboard players operation @s swPool_Score = @s swPool_hidScore

scoreboard players operation Opponent swPool_Score = Opponent swPool_hidScore

scoreboard players operation Stroke swPool_hidScore = StrokeRec swPool_hidScore

scoreboard players operation @e[tag=swPool_pooltable,limit=1] swPool_firsthit = FirstHit swPool_hidScore

scoreboard players operation Pocketed_Total swPool_hidScore = Pocketed_T_rec swPool_hidScore

tag @a remove swPool_freeball
tag @a remove swPool_aimred
tag @a remove swPool_aimylw
tag @a remove swPool_aimblk
tag @a remove swPool_streak
tag @e[tag=swPool_pooltable] remove swPool_awarded
tag @e[tag=swPool_pooltable] remove swPool_endaward

tag @a[tag=swPool_redrec] add swPool_aimred
tag @a[tag=swPool_ylwrec] add swPool_aimylw
tag @a[tag=swPool_blkrec] add swPool_aimblk
tag @a[tag=swPool_stkrec] add swPool_streak

tag @e[tag=swPool_awdrec] add swPool_awarded
tag @e[tag=swPool_edawdrec] add swPool_endaward

tag @a remove swPool_redrec
tag @a remove swPool_ylwrec
tag @a remove swPool_blkrec
tag @a remove swPool_stkrec
tag @e[tag=swPool_pooltable] remove swPool_awdrec
tag @e[tag=swPool_pooltable] remove swPool_edawdrec

scoreboard players set @e[limit=1,tag=swPool_pooltable] swPool_nred 0
scoreboard players set @e[limit=1,tag=swPool_pooltable] swPool_ncolor 0
#score counter var05
scoreboard players set @e[limit=1,tag=swPool_pooltable] swPool_var05 0
tag @a[tag=swPool_poolplay] remove swPool_fouled
scoreboard players set @a[tag=swPool_poolplay] swPool_foul 0
scoreboard players reset @a[tag=swPool_hitcue] swPool_firsthit
tag @a[tag=swPool_hitcue] remove swPool_hitcue

execute if entity @e[tag=!swPool_practicemode,tag=swPool_pooltable] run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"Done. Backed to the previous turn. The last player, please try again."}]

execute if entity @e[tag=!swPool_practicemode,tag=swPool_pooltable] run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"完成回到上一回合。上回合击球方请重新击球。"}]

function pool:classes/master/record


tag @a[tag=swPool_placingcue] add swPool_freeball
tag @a[tag=swPool_placingcue] remove swPool_placingcue

execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a remove swPool_freeball