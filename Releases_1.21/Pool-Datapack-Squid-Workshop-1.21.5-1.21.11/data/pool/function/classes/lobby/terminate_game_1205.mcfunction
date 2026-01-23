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

clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_cueball"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_red"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_yellow"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_green"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_brown"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_blue"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_pink"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_black"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_01"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_02"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_03"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_04"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_05"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_06"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_07"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_08"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_09"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_10"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_11"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_12"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_13"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_14"]
clear @a carrot_on_a_stick[minecraft:item_model="swpool:object_ball_15"]

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