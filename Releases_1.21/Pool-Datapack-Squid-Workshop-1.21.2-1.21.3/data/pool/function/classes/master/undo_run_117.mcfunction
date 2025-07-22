#scoreboard players remove RedoTime swPool_hidScore 1



kill @e[tag=swPool_pool]

tag @e[tag=swPool_temppin] add swPool_pool


execute if data storage minecraft:swpool cueballreddot run item replace entity @e[tag=swPool_cue,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:1}
execute unless data storage minecraft:swpool cueballreddot run item replace entity @e[tag=swPool_cue,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:36}
item replace entity @e[tag=swPool_red,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:2}
item replace entity @e[tag=swPool_yellow,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:3}
item replace entity @e[tag=swPool_green,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:4}
item replace entity @e[tag=swPool_brown,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:5}
item replace entity @e[tag=swPool_blue,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:6}
item replace entity @e[tag=swPool_pink,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:7}
item replace entity @e[tag=swPool_black,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:8}

item replace entity @e[tag=swPool_01,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:21}
item replace entity @e[tag=swPool_02,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:22}
item replace entity @e[tag=swPool_03,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:23}
item replace entity @e[tag=swPool_04,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:24}
item replace entity @e[tag=swPool_05,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:25}
item replace entity @e[tag=swPool_06,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:26}
item replace entity @e[tag=swPool_07,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:27}
item replace entity @e[tag=swPool_08,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:28}
item replace entity @e[tag=swPool_09,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:29}
item replace entity @e[tag=swPool_10,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:30}
item replace entity @e[tag=swPool_11,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:31}
item replace entity @e[tag=swPool_12,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:32}
item replace entity @e[tag=swPool_13,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:33}
item replace entity @e[tag=swPool_14,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:34}
item replace entity @e[tag=swPool_15,tag=swPool_temppin] armor.head with minecraft:acacia_button{CustomModelData:35}

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

scoreboard players operation V_addon swPool_v = V_addon swPool_hidScore

scoreboard players operation Pocketed_Total swPool_hidScore = Pocketed_T_rec swPool_hidScore
scoreboard players operation Pocketed_Turn swPool_hidScore = Pocketed_Turn_rec swPool_hidScore

tag @a remove swPool_ballinhand
tag @a remove swPool_aimred
tag @a remove swPool_aimylw
tag @a remove swPool_aimblk
tag @a remove swPool_aimsolid
tag @a remove swPool_aimstripe
tag @a remove swPool_aim08
tag @a remove swPool_streak
tag @e[tag=swPool_pooltable] remove swPool_awarded
tag @e[tag=swPool_pooltable] remove swPool_endaward

tag @a[tag=swPool_redrec] add swPool_aimred
tag @a[tag=swPool_ylwrec] add swPool_aimylw
tag @a[tag=swPool_blkrec] add swPool_aimblk
tag @a[tag=swPool_solidrec] add swPool_aimsolid
tag @a[tag=swPool_striperec] add swPool_aimstripe
tag @a[tag=swPool_08rec] add swPool_aim08
tag @a[tag=swPool_stkrec] add swPool_streak

tag @e[tag=swPool_awdrec] add swPool_awarded
tag @e[tag=swPool_edawdrec] add swPool_endaward

tag @a remove swPool_redrec
tag @a remove swPool_ylwrec
tag @a remove swPool_blkrec
tag @a remove swPool_solidrec
tag @a remove swPool_striperec
tag @a remove swPool_08rec
tag @a remove swPool_stkrec
tag @e[tag=swPool_pooltable] remove swPool_awdrec
tag @e[tag=swPool_pooltable] remove swPool_edawdrec

tag @e[tag=swPool_pooltable] remove swPool_cn8ball_breaking
tag @e[tag=swPool_pooltable] remove swPool_cn8ball_open
tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_breakingrec] add swPool_cn8ball_breaking
tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_openrec] add swPool_cn8ball_open
tag @e[tag=swPool_pooltable] remove swPool_cn8ball_breakingrec
tag @e[tag=swPool_pooltable] remove swPool_cn8ball_openrec

scoreboard players set @e[limit=1,tag=swPool_pooltable] swPool_nred 0
scoreboard players set @e[limit=1,tag=swPool_pooltable] swPool_ncolor 0
#score counter var05
scoreboard players set @e[limit=1,tag=swPool_pooltable] swPool_var05 0
tag @a[tag=swPool_poolplay] remove swPool_fouled
scoreboard players set @a[tag=swPool_poolplay] swPool_foul 0
scoreboard players reset @a[tag=swPool_hitcue] swPool_firsthit
tag @a[tag=swPool_hitcue] remove swPool_hitcue

execute if entity @e[tag=!swPool_practicemode,tag=swPool_pooltable] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Done. Backed to the previous turn. The last player, please try again."}]

execute if entity @e[tag=!swPool_practicemode,tag=swPool_pooltable] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"完成回到上一回合。上回合击球方请重新击球。"}]

function pool:classes/master/record


tag @a[tag=swPool_placingcue] add swPool_ballinhand
tag @a[tag=swPool_placingcue] remove swPool_placingcue

execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a remove swPool_ballinhand

tag @e[tag=swPool_pooltable,limit=1] remove swPool_pktblk
tag @e[tag=swPool_pooltable,limit=1] remove swPool_rerack
tag @e[tag=swPool_pooltable,limit=1] remove swPool_endgame