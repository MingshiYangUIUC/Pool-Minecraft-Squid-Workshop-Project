#say main

# execute unless score #muteall swPool_C matches 1 run 

# generate all legal actions and 
#   rule out unphysical action (cut angle > 90)
#   rule out undoable action (other balls blocking cue ball path / other balls blocking object ball path)

# executor is a fake entity called swPool_AI

# determine legal balls
tag @e[tag=swPool_pool] remove swPool_tmp_legal

# cn8ball criteria
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode,tag=swPool_cn8ball_open] run tag @e[tag=swPool_pool,tag=!swPool_08] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if entity @s[tag=swPool_aimsolid] run tag @e[tag=swPool_pool,tag=swPool_solid] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if entity @s[tag=swPool_aimstripe] run tag @e[tag=swPool_pool,tag=swPool_stripe] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if entity @s[tag=swPool_aim08] run tag @e[tag=swPool_pool,tag=swPool_08] add swPool_tmp_legal

# 9ball criteria
# smallest ball is always legal ball
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_09,limit=1] run scoreboard players set #least_survival swPool_var00 9
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_08,limit=1] run scoreboard players set #least_survival swPool_var00 8
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_07,limit=1] run scoreboard players set #least_survival swPool_var00 7
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_06,limit=1] run scoreboard players set #least_survival swPool_var00 6
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_05,limit=1] run scoreboard players set #least_survival swPool_var00 5
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_04,limit=1] run scoreboard players set #least_survival swPool_var00 4
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_03,limit=1] run scoreboard players set #least_survival swPool_var00 3
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_02,limit=1] run scoreboard players set #least_survival swPool_var00 2
execute if score swPool_9ballmode swMath_V matches 1 if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_01,limit=1] run scoreboard players set #least_survival swPool_var00 1
# tag the lowest-numbered ball
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 1 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_01] add swPool_tmp_legal
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 2 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_02] add swPool_tmp_legal
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 3 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_03] add swPool_tmp_legal
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 4 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_04] add swPool_tmp_legal
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 5 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_05] add swPool_tmp_legal
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 6 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_06] add swPool_tmp_legal
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 7 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_07] add swPool_tmp_legal
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 8 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_08] add swPool_tmp_legal
execute if score swPool_9ballmode swMath_V matches 1 if score #least_survival swPool_var00 matches 9 run tag @e[type=armor_stand,tag=swPool_pool,tag=swPool_09] add swPool_tmp_legal

# for testing
#tag @e[tag=swPool_pool,tag=!swPool_cue] add swPool_tmp_legal

# log ball locations
execute as @e[tag=swPool_pool] run function pool:classes/master/read_tmppos

# create reference point for each pocket
# corner pocket: x=z= TABLE sizex/z: tip of rectangular playable area
# initialize pktid first
scoreboard players set pktid swPool_pktid 0
execute as @e[tag=swPool_cntr] at @s run function pool:classes/bot/generic/obtain_actions_summon_pocket_aims
# swPool_aim_pkt entities mark aim direction to make ball in a pocket.

# combine each pocket with target ball and these entities to log S.
execute as @e[tag=swPool_aim_pkt] at @s run function pool:classes/bot/generic/obtain_actions_combination_pkt

#execute as @e[tag=swPool_aim_obj,tag=!swPool_pkt_blocked] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force

execute as @e[tag=swPool_aim_obj,tag=!swPool_pkt_blocked] run tellraw @a[tag=swPool_debug] [{"text":"S_calc, "},{"score":{"objective":"swPool_calcScore","name":"@s"}}]

# count actions
scoreboard players set #n_pkt_valid_aim swMath_V 0
scoreboard players set #n_pkt_blocked_aim swMath_V 0

execute as @e[tag=swPool_aim_obj,tag=!swPool_pkt_blocked] run scoreboard players add #n_pkt_valid_aim swMath_V 1
execute as @e[tag=swPool_aim_obj,tag=swPool_pkt_blocked] run scoreboard players add #n_pkt_blocked_aim swMath_V 1

tellraw @a[tag=swPool_debug] [{"text":"n_pkt_valid_aim, "},{"score":{"objective":"swMath_V","name":"#n_pkt_valid_aim"}}]
tellraw @a[tag=swPool_debug] [{"text":"n_pkt_blocked_aim, "},{"score":{"objective":"swMath_V","name":"#n_pkt_blocked_aim"}}]


# rank
scoreboard players set #maxcalcscore swMath_V -99999
execute as @e[tag=swPool_aim_obj] run function pool:classes/bot/generic/rank_calcscore

tellraw @a[tag=swPool_debug] [{"text":"max_S, "},{"score":{"objective":"swMath_V","name":"#maxcalcscore"}}]

# store d0
scoreboard players operation #maxcalcscore_d0 swMath_V = #maxcalcscore swMath_V

#execute as @e[tag=swPool_aim_obj] if score @s swPool_calcScore = #maxcalcscore swMath_V at @s run particle minecraft:witch ~ ~1 ~ 0.02 0.02 0.02 0 27 force

# if has valid action: do main_normal
# if no valid action: do main_blocked

# if no valid actions, summon one thing at the obj
#execute if score #maxcalcscore swMath_V matches -99999 run  sayfallback
#execute if score #maxcalcscore_d0 swMath_V matches -99999 at @e[tag=swPool_tmp_legal,limit=1,sort=random] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_aim_obj","swPool_aim_obj_rand"],Duration:1200}
#execute if score #maxcalcscore_d0 swMath_V matches -99999 run scoreboard players set @e[tag=swPool_aim_obj_rand,limit=1] swPool_calcScore -1

scoreboard players set #maxshotscore_d0 swMath_V -99999

execute unless score #maxcalcscore_d0 swMath_V matches -99999 run function pool:classes/bot/generic/_obtain_actions_entity_d0_main_normal
execute if score #maxcalcscore_d0 swMath_V matches -99999 run function pool:classes/bot/generic/_obtain_actions_entity_d0_main_blocked

