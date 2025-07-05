tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] remove swPool_practicemode
tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]
tag @a remove swPool_ballinhand
tag @a remove swPool_ballinhand_obj
tag @a remove swPool_streak
tag @a remove swPool_stkrec
tag @a remove swPool_given

clear @a carrot_on_a_stick[minecraft:custom_model_data=99]
clear @a carrot_on_a_stick[minecraft:custom_model_data=100]
clear @a carrot_on_a_stick[minecraft:custom_model_data=101]
clear @a carrot_on_a_stick[minecraft:custom_model_data=102]
clear @a carrot_on_a_stick[minecraft:custom_model_data=103]
clear @a carrot_on_a_stick[minecraft:custom_model_data=104]
clear @a carrot_on_a_stick[minecraft:custom_model_data=105]
clear @a carrot_on_a_stick[minecraft:custom_model_data=106]
clear @a carrot_on_a_stick[minecraft:custom_model_data=107]
clear @a carrot_on_a_stick[minecraft:custom_model_data=121]
clear @a carrot_on_a_stick[minecraft:custom_model_data=122]
clear @a carrot_on_a_stick[minecraft:custom_model_data=123]
clear @a carrot_on_a_stick[minecraft:custom_model_data=124]
clear @a carrot_on_a_stick[minecraft:custom_model_data=125]
clear @a carrot_on_a_stick[minecraft:custom_model_data=126]
clear @a carrot_on_a_stick[minecraft:custom_model_data=127]
clear @a carrot_on_a_stick[minecraft:custom_model_data=128]
clear @a carrot_on_a_stick[minecraft:custom_model_data=129]
clear @a carrot_on_a_stick[minecraft:custom_model_data=130]
clear @a carrot_on_a_stick[minecraft:custom_model_data=131]
clear @a carrot_on_a_stick[minecraft:custom_model_data=132]
clear @a carrot_on_a_stick[minecraft:custom_model_data=133]
clear @a carrot_on_a_stick[minecraft:custom_model_data=134]
clear @a carrot_on_a_stick[minecraft:custom_model_data=135]

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

scoreboard players reset @a[tag=swPool_poolplay] swPool_Score
scoreboard players reset @a swPool_Score
scoreboard players reset Opponent swPool_Score
scoreboard players reset Stroke swPool_hidScore

#tag @a remove swPool_wait
#tag @a remove swPool_wait_snooker