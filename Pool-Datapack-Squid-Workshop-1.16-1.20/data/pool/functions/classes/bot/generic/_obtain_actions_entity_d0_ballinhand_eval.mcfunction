#say ball in hand eval

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

#execute as @e[tag=swPool_aim_obj,tag=!swPool_pkt_blocked] run tellraw @a[tag=swPool_debug] [{"text":"S_calc, "},{"score":{"objective":"swPool_calcScore","name":"@s"}}]

# count actions
scoreboard players set #n_pkt_valid_aim swMath_V 0
scoreboard players set #n_pkt_blocked_aim swMath_V 0

execute as @e[tag=swPool_aim_obj,tag=!swPool_pkt_blocked] run scoreboard players add #n_pkt_valid_aim swMath_V 1
execute as @e[tag=swPool_aim_obj,tag=swPool_pkt_blocked] run scoreboard players add #n_pkt_blocked_aim swMath_V 1

#tellraw @a[tag=swPool_debug] [{"text":"n_pkt_valid_aim, "},{"score":{"objective":"swMath_V","name":"#n_pkt_valid_aim"}}]
#tellraw @a[tag=swPool_debug] [{"text":"n_pkt_blocked_aim, "},{"score":{"objective":"swMath_V","name":"#n_pkt_blocked_aim"}}]


# rank
scoreboard players set #maxcalcscore swMath_V -1
execute as @e[tag=swPool_aim_obj] run function pool:classes/bot/generic/rank_calcscore

# so we currently know best score without link to the best target ball
tellraw @a[tag=swPool_debug] [{"text":"max_S d1-1, "},{"score":{"objective":"swMath_V","name":"#maxcalcscore"}}]

scoreboard players operation #best1calcscore swMath_V = #maxcalcscore swMath_V
# best id
scoreboard players set #bestobj swPool_objid -1
execute as @e[tag=swPool_aim_obj] if score @s swPool_calcScore = #best1calcscore swMath_V run scoreboard players operation #bestobj swPool_objid = @s swPool_objid

# get best score for second ball if exist, not for 9 ball
scoreboard players set #maxcalcscore swMath_V -1
# not for 9 ball game
execute unless score swPool_9ballmode swMath_V matches 1 at @e[tag=swPool_tmp_legal,limit=1] if entity @e[tag=swPool_tmp_legal,distance=0.001..] as @e[tag=swPool_aim_obj] unless score @s swPool_objid = #bestobj swPool_objid run function pool:classes/bot/generic/rank_calcscore

scoreboard players operation #best2calcscore swMath_V = #maxcalcscore swMath_V
tellraw @a[tag=swPool_debug] [{"text":"max_S d1-2, "},{"score":{"objective":"swMath_V","name":"#maxcalcscore"}}]

# set to best1 if there is no best2 at all, then average score
execute if score #best2calcscore swMath_V matches ..0 run scoreboard players operation #best2calcscore swMath_V = #best1calcscore swMath_V
scoreboard players operation #maxcalcscore swMath_V = #best1calcscore swMath_V

scoreboard players operation #maxcalcscore swMath_V += #best2calcscore swMath_V
scoreboard players operation #maxcalcscore swMath_V /= #C_2 swMath_C

scoreboard players operation #placescore swMath_V = #maxcalcscore swMath_V



kill @e[tag=swPool_aim_pkt]
kill @e[tag=swPool_aim_obj]
kill @e[tag=swPool_aim_obj_d0]
kill @e[tag=swPool_aim_obj_rand]
tag @e[tag=swPool_tmp_legal] remove swPool_tmp_legal