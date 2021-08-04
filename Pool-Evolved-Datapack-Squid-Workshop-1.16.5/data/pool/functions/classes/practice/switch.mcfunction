execute as @e[tag=swPool_pooltable] at @s run function pool:classes/practice/boundary

execute unless entity @e[tag=swPool_pooltable] run tellraw @s [{"text":"Please place a table first.","color":"red"}]

#kill @e[tag=swPool_pool]
#kill @e[tag=swPool_pin]
#kill @e[tag=swPool_temppin]
#tag @a remove swPool_poolplay
tag @a remove swPool_freeball
tag @a remove swPool_freeball_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
clear @a carrot_on_a_stick{CustomModelData:99}
clear @a carrot_on_a_stick{CustomModelData:101}
clear @a carrot_on_a_stick{CustomModelData:102}
clear @a carrot_on_a_stick{CustomModelData:103}
clear @a carrot_on_a_stick{CustomModelData:104}
clear @a carrot_on_a_stick{CustomModelData:105}
clear @a carrot_on_a_stick{CustomModelData:106}
clear @a carrot_on_a_stick{CustomModelData:107}
scoreboard players set @a swPool_Score 0

tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode
tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] add swPool_practicemode



execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_freeball
execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_freeball_obj
execute as @a[tag=swPool_freeball] at @s run give @s carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
execute as @a[tag=swPool_freeball] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:101,display:{Name:"\"Red\""}}
execute as @a[tag=swPool_freeball] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:102,display:{Name:"\"Yellow\""}}
execute as @a[tag=swPool_freeball] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:103,display:{Name:"\"Green\""}}
execute as @a[tag=swPool_freeball] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:104,display:{Name:"\"Brown\""}}
execute as @a[tag=swPool_freeball] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:105,display:{Name:"\"Blue\""}}
execute as @a[tag=swPool_freeball] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:106,display:{Name:"\"Pink\""}}
execute as @a[tag=swPool_freeball] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:107,display:{Name:"\"Black\""}}

tag @a[tag=swPool_near] remove swPool_near
tag @e[tag=swPool_pooltable] add swPool_start
tag @e[tag=swPool_pooltable] remove swPool_fouled
tag @e[tag=swPool_pooltable] remove swPool_pocketing
tag @e[tag=swPool_pooltable] remove swPool_foulcolor
tag @e[tag=swPool_pooltable] remove swPool_foulred
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

#execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_poolplay
execute as @e[tag=swPool_pooltable] at @s run function pool:classes/cue/reset
tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"Switched to Practice Mode."}]
tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"切换至练习模式。"}]
