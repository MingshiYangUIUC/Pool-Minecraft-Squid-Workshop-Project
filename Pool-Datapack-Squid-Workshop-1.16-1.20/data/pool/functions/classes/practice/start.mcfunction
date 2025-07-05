function pool:classes/lobby/terminate_helper

execute as @e[tag=swPool_pooltable] at @s run function pool:classes/practice/boundary

execute unless entity @e[tag=swPool_pooltable] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please place a table first.","color":"red"}]
execute unless entity @e[tag=swPool_pooltable] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请先放置球桌。","color":"red"}]

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]
tag @a remove swPool_poolplay
tag @a remove swPool_ballinhand
tag @a remove swPool_ballinhand_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
clear @a carrot_on_a_stick{CustomModelData:99}
clear @a carrot_on_a_stick{CustomModelData:100}
clear @a carrot_on_a_stick{CustomModelData:101}
clear @a carrot_on_a_stick{CustomModelData:102}
clear @a carrot_on_a_stick{CustomModelData:103}
clear @a carrot_on_a_stick{CustomModelData:104}
clear @a carrot_on_a_stick{CustomModelData:105}
clear @a carrot_on_a_stick{CustomModelData:106}
clear @a carrot_on_a_stick{CustomModelData:107}
clear @a carrot_on_a_stick{CustomModelData:121}
clear @a carrot_on_a_stick{CustomModelData:122}
clear @a carrot_on_a_stick{CustomModelData:123}
clear @a carrot_on_a_stick{CustomModelData:124}
clear @a carrot_on_a_stick{CustomModelData:125}
clear @a carrot_on_a_stick{CustomModelData:126}
clear @a carrot_on_a_stick{CustomModelData:127}
clear @a carrot_on_a_stick{CustomModelData:128}
clear @a carrot_on_a_stick{CustomModelData:129}
clear @a carrot_on_a_stick{CustomModelData:130}
clear @a carrot_on_a_stick{CustomModelData:131}
clear @a carrot_on_a_stick{CustomModelData:132}
clear @a carrot_on_a_stick{CustomModelData:133}
clear @a carrot_on_a_stick{CustomModelData:134}
clear @a carrot_on_a_stick{CustomModelData:135}

scoreboard players set @a swPool_Score 0

tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode
tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] add swPool_practicemode



execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_ballinhand
execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_ballinhand_obj
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cueball\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:101,display:{Name:"\"Red\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:102,display:{Name:"\"Yellow\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:103,display:{Name:"\"Green\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:104,display:{Name:"\"Brown\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:105,display:{Name:"\"Blue\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:106,display:{Name:"\"Pink\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:107,display:{Name:"\"Black\""}}

execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:121,display:{Name:"\"01\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:122,display:{Name:"\"02\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:123,display:{Name:"\"03\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:124,display:{Name:"\"04\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:125,display:{Name:"\"05\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:126,display:{Name:"\"06\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:127,display:{Name:"\"07\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:128,display:{Name:"\"08\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:129,display:{Name:"\"09\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:130,display:{Name:"\"10\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:131,display:{Name:"\"11\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:132,display:{Name:"\"12\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:133,display:{Name:"\"13\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:134,display:{Name:"\"14\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:135,display:{Name:"\"15\""}}


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

execute as @e[tag=swPool_pooltable] at @s run tag @a[distance=..20] add swPool_poolplay
tag @s add swPool_spec
execute as @e[tag=swPool_pooltable] at @s run function pool:classes/cue/reset
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Practice mode is on! No rules, just have fun."}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"练习模式开启。没有规则，请随意摆球击打。"}]