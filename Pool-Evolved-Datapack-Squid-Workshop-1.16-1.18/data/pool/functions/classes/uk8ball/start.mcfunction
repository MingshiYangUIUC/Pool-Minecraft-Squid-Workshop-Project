tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

execute unless entity @e[tag=swPool_pooltable] run tellraw @s [{"text":"Please place a table first.","color":"red"}]

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]
tag @a remove swPool_poolplay
tag @a remove swPool_freeball
tag @a remove swPool_freeball_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
clear @a carrot_on_a_stick{CustomModelData:99}
execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/uk8ball/balls

execute as @e[tag=swPool_pooltable] at @s run tag @a[sort=nearest,limit=2] add swPool_near
tag @a[tag=swPool_near,limit=1,sort=random] add swPool_freeball
give @a[tag=swPool_freeball] carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
tag @a[tag=swPool_near] remove swPool_near
tag @e[tag=swPool_pooltable] add swPool_start
tag @e[tag=swPool_pooltable] remove swPool_fouled
tag @e[tag=swPool_pooltable] remove swPool_pocketing
tag @e[tag=swPool_pooltable] remove swPool_foulcolor
tag @e[tag=swPool_pooltable] remove swPool_foulred
tag @e[tag=swPool_pooltable] remove swPool_hitrail
tag @e[tag=swPool_pooltable] remove swPool_awarded
tag @e[tag=swPool_pooltable] remove swPool_endaward
tag @e[tag=swPool_pooltable] remove swPool_endgame
tag @a remove swPool_hitcue
tag @a remove swPool_aimred
tag @a remove swPool_aimylw
tag @a remove swPool_aimblk
tag @a remove swPool_redrec
tag @a remove swPool_ylwrec
tag @a remove swPool_blkrec
tag @e[tag=swPool_pooltable] remove swPool_awdrec
tag @e[tag=swPool_pooltable] remove swPool_edawdrec


tag @a[limit=1,sort=random] add swPool_poolplay
execute if entity @e[tag=swPool_pooltable] unless entity @a[tag=!swPool_poolplay] run tellraw @s [{"text":"Not enough players, you pretend to be two players!","color":"red"}]
execute unless entity @a[tag=!swPool_poolplay] run scoreboard players set Opponent swPool_Score 0
execute if entity @a[tag=!swPool_poolplay] run tag @a[limit=1,sort=random,tag=!swPool_poolplay] add swPool_poolplay
scoreboard players set @a[tag=swPool_poolplay] swPool_Score 0
#scoreboard objectives setdisplay sidebar swPool_Score

scoreboard players set V_addon swPool_v 40000000
scoreboard players set Stroke swPool_hidScore 0

scoreboard players set Pocketed_Total swPool_hidScore 0
scoreboard players set Pocketed_Turn swPool_hidScore 0

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.01..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.01..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_freeball]"},{"text":", place the cue ball and target any except black."}]
tellraw @a[tag=swPool_poolplay] [{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]