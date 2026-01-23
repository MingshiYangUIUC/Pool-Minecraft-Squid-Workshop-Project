tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] remove swPool_practicemode
tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode
tag @e[tag=swPool_pooltable] remove swPool_cn8ballmode

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]
tag @a remove swPool_ballinhand
tag @a remove swPool_ballinhand_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
tag @a remove swPool_given

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

tag @a remove swPool_poolplay
tag @a remove swPool_ballinhand
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

tag @a remove swPool_aimsolid
tag @a remove swPool_aimstripe
tag @a remove swPool_aim08
tag @a remove swPool_solidrec
tag @a remove swPool_striperec
tag @a remove swPool_08rec

tag @a remove swPool_placingcue

tag @e[tag=swPool_pooltable] remove swPool_cn8ball_breaking
tag @e[tag=swPool_pooltable] remove swPool_cn8ball_open
tag @e[tag=swPool_pooltable] remove swPool_cn8ball_breakingrec
tag @e[tag=swPool_pooltable] remove swPool_cn8ball_openrec
tag @e[tag=swPool_pooltable,limit=1] remove swPool_pktcue
tag @e[tag=swPool_pooltable,limit=1] remove swPool_pktsolid
tag @e[tag=swPool_pooltable,limit=1] remove swPool_pktstripe
tag @e[tag=swPool_pooltable,limit=1] remove swPool_pkt08
tag @e[tag=swPool_pooltable,limit=1] remove swPool_pktred
tag @e[tag=swPool_pooltable,limit=1] remove swPool_pktylw
tag @e[tag=swPool_pooltable,limit=1] remove swPool_pktblk

scoreboard players reset @a[tag=swPool_poolplay] swPool_Score
scoreboard players reset @a swPool_Score
scoreboard players reset Opponent swPool_Score
scoreboard players reset Stroke swPool_hidScore

#tag @a remove swPool_wait
#tag @a remove swPool_wait_snooker