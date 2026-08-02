execute as 000c2be1-0001-414d-0000-000000000000 at @s run function pool:classes/practice/boundary

execute unless entity 000c2be1-0001-414d-0000-000000000000 run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please place a table first.","color":"red"}]
execute unless entity 000c2be1-0001-414d-0000-000000000000 run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请先放置球桌。","color":"red"}]

#kill @e[tag=swPool_pool]
#kill @e[tag=swPool_pin]
#kill @e[tag=swPool_temppin]
#tag @a remove swPool_poolplay
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

tag 000c2be1-0001-414d-0000-000000000000 remove swPool_uk8ballmode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_snookermode
tag 000c2be1-0001-414d-0000-000000000000 add swPool_practicemode
scoreboard players set swPool_practicemode swMath_V 1
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ballmode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_9ballmode



execute as 000c2be1-0001-414d-0000-000000000000 at @s run tag @a[distance=..20] add swPool_ballinhand
execute as 000c2be1-0001-414d-0000-000000000000 at @s run tag @a[distance=..20] add swPool_ballinhand_obj
execute if data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cue Ball\""}}
execute unless data storage minecraft:swpool cueballreddot as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cue Ball\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:101,display:{Name:"\"Red\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:102,display:{Name:"\"Yellow\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:103,display:{Name:"\"Green\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:104,display:{Name:"\"Brown\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:105,display:{Name:"\"Blue\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:106,display:{Name:"\"Pink\""}}
execute as @a[tag=swPool_ballinhand] at @s run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:107,display:{Name:"\"Black\""}}


#tag 000c2be1-0001-414d-0000-000000000000 add swPool_start
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_fouled
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pocketing
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_foulcolor
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_foulred
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
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pktsolid
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pktstripe
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_pkt08

#execute as 000c2be1-0001-414d-0000-000000000000 at @s run tag @a[distance=..20] add swPool_poolplay
tag @s add swPool_spec
execute as 000c2be1-0001-414d-0000-000000000000 at @s run function pool:classes/cue/reset
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Switched to Practice Mode."}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"切换至练习模式。"}]
tag @a[tag=swPool_spec] add swPool_poolplay
scoreboard players set swPool_gameon swMath_V 1