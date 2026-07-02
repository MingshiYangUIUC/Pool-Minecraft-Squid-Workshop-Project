gamerule maxCommandChainLength 999999999

# evaluate game scenario after a simulated shot

# executor is a fake entity called swPool_AI

# determine legal balls
tag @e[tag=swPool_pool] remove swPool_tmp_legal

#execute if entity @s[tag=swPool_aimsolid] run say swPool_aimsolid
#execute if entity @s[tag=swPool_aimstripe] run say i swPool_aimstripe
#execute if entity @s[tag=swPool_aim08] run say swPool_aim08

#tellraw @a [{"text":"switching? "},{"score":{"objective":"swPool_var00","name":"#switchplayer"}}]
# update target ball logic after a simulated shot (swPool_shooter)

# cn8ball criteria
# set legal balls if open
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode,tag=swPool_cn8ball_open] run tag @e[tag=swPool_pool,tag=!swPool_08] add swPool_tmp_legal
# if not switch
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 0 if entity @s[tag=swPool_aimsolid] run tag @e[tag=swPool_pool,tag=swPool_solid] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 0 if entity @s[tag=swPool_aimstripe] run tag @e[tag=swPool_pool,tag=swPool_stripe] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 0 if entity @s[tag=swPool_aim08] run tag @e[tag=swPool_pool,tag=swPool_08] add swPool_tmp_legal
# change if switch player
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 1 if entity @s[tag=swPool_aimsolid] if entity @e[tag=swPool_pool,tag=swPool_stripe] run tag @e[tag=swPool_pool,tag=swPool_stripe] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 1 if entity @s[tag=swPool_aimsolid] unless entity @e[tag=swPool_pool,tag=swPool_stripe] run tag @e[tag=swPool_pool,tag=swPool_08] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 1 if entity @s[tag=swPool_aimstripe] if entity @e[tag=swPool_pool,tag=swPool_solid] run tag @e[tag=swPool_pool,tag=swPool_solid] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 1 if entity @s[tag=swPool_aimstripe] unless entity @e[tag=swPool_pool,tag=swPool_solid] run tag @e[tag=swPool_pool,tag=swPool_08] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 1 if entity @s[tag=swPool_aim08] if entity @e[tag=swPool_pool,tag=swPool_solid] run tag @e[tag=swPool_pool,tag=swPool_solid] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 1 if entity @s[tag=swPool_aim08] if entity @e[tag=swPool_pool,tag=swPool_stripe] run tag @e[tag=swPool_pool,tag=swPool_stripe] add swPool_tmp_legal
execute if score swPool_cn8ballmode swMath_V matches 1 if score #switchplayer swPool_var00 matches 1 if entity @s[tag=swPool_aim08] unless entity @e[tag=swPool_pool,tag=swPool_solid] unless entity @e[tag=swPool_pool,tag=swPool_stripe] run tag @e[tag=swPool_pool,tag=swPool_08] add swPool_tmp_legal

# for testing
#tag @e[tag=swPool_pool,tag=!swPool_cue] add swPool_tmp_legal

# log ball locations
execute as @e[tag=swPool_pool] run function pool:classes/master/read_tmppos

# no need to re-summon
# create reference point for each pocket
# corner pocket: x=z= TABLE sizex/z: tip of rectangular playable area
# initialize pktid first
#scoreboard players set pktid swPool_pktid 0
#execute as @e[tag=swPool_cntr] at @s run function pool:classes/bot/generic/obtain_actions_summon_pocket_aims
# swPool_aim_pkt entities mark aim direction to make ball in a pocket.


# action counter, first two are doable actions, third are invalid actions
scoreboard players set #n_pkt_valid_aim swMath_V 0
scoreboard players set #n_pkt_blocked_aim swMath_V 0
scoreboard players set #n_pkt_blocked_cue swMath_V 0

# combine each pocket with target ball and these entities to log S. # #n_pkt_blocked_cue counted inside
execute as @e[tag=swPool_aim_pkt] at @s run function pool:classes/bot/generic/obtain_actions_combination_pkt

# this debug line print new score of each new action
#execute as @e[tag=swPool_aim_obj,tag=!swPool_pkt_blocked] run tellraw @a [{"text":"S_calc, "},{"score":{"objective":"swPool_calcScore","name":"@s"}}]

execute as @e[tag=swPool_aim_obj,tag=!swPool_pkt_blocked] run scoreboard players add #n_pkt_valid_aim swMath_V 1
execute as @e[tag=swPool_aim_obj,tag=swPool_pkt_blocked] run scoreboard players add #n_pkt_blocked_aim swMath_V 1

#tellraw @a [{"text":"n_pkt_valid_aim, "},{"score":{"objective":"swMath_V","name":"#n_pkt_valid_aim"}}]
#tellraw @a [{"text":"n_pkt_blocked_aim, "},{"score":{"objective":"swMath_V","name":"#n_pkt_blocked_aim"}}]


# rank
scoreboard players set #maxcalcscore swMath_V -1
execute as @e[tag=swPool_aim_obj] run function pool:classes/bot/generic/rank_calcscore

# so we currently know best score without link to the best target ball
#tellraw @a [{"text":"max_S d1-1, "},{"score":{"objective":"swMath_V","name":"#maxcalcscore"}}]

scoreboard players operation #best1calcscore swMath_V = #maxcalcscore swMath_V
# best id
scoreboard players set #bestobj swPool_objid -1
execute as @e[tag=swPool_aim_obj] if score @s swPool_calcScore = #best1calcscore swMath_V run scoreboard players operation #bestobj swPool_objid = @s swPool_objid

# get best score for second ball if exist
scoreboard players set #maxcalcscore swMath_V -1
execute at @e[tag=swPool_tmp_legal,limit=1] if entity @e[tag=swPool_tmp_legal,distance=0.001..] as @e[tag=swPool_aim_obj] unless score @s swPool_objid = #bestobj swPool_objid run function pool:classes/bot/generic/rank_calcscore

scoreboard players operation #best2calcscore swMath_V = #maxcalcscore swMath_V
#tellraw @a [{"text":"max_S d1-2, "},{"score":{"objective":"swMath_V","name":"#maxcalcscore"}}]

# no bonus if no valid second object
execute if score #best2calcscore swMath_V matches ..0 run scoreboard players set #best2calcscore swMath_V 0
scoreboard players operation #maxcalcscore swMath_V = #best1calcscore swMath_V
# weight by 1/3
scoreboard players operation #best2calcscore swMath_V /= #C_3 swMath_C
scoreboard players operation #maxcalcscore swMath_V += #best2calcscore swMath_V
#tellraw @a [{"text":"max_S d1-s, "},{"score":{"objective":"swMath_V","name":"#maxcalcscore"}}]

# if there is pocket blocked: minus points
# only deduct if simscore is 1 (self next turn) and set a cap
scoreboard players set #deduct_pktblkaim swMath_V 0
scoreboard players set #deduct_pktblkcue swMath_V 0

execute if score simstat swMath_V matches 1 run scoreboard players set #deduct_pktblkaim swMath_V 1000
execute if score simstat swMath_V matches 1 run scoreboard players operation #deduct_pktblkaim swMath_V *= #n_pkt_blocked_aim swMath_V
execute if score #deduct_pktblkaim swMath_V matches 2000.. run scoreboard players set #deduct_pktblkaim swMath_V 2000
execute if score simstat swMath_V matches 1 run scoreboard players operation #maxcalcscore swMath_V -= #deduct_pktblkaim swMath_V
#tellraw @a [{"text":"deduct 1, "},{"score":{"objective":"swMath_V","name":"#deduct_pktblkaim"}}]
execute if score simstat swMath_V matches 1 run scoreboard players set #deduct_pktblkcue swMath_V 2000
execute if score simstat swMath_V matches 1 run scoreboard players operation #deduct_pktblkcue swMath_V *= #n_pkt_blocked_cue swMath_V
execute if score #deduct_pktblkcue swMath_V matches 4000.. run scoreboard players set #deduct_pktblkcue swMath_V 4000
execute if score simstat swMath_V matches 1 run scoreboard players operation #maxcalcscore swMath_V -= #deduct_pktblkcue swMath_V
#tellraw @a [{"text":"deduct 2, "},{"score":{"objective":"swMath_V","name":"#deduct_pktblkcue"}}]

# minimum score if all actions are invalid (worst scenario)
execute if score #n_pkt_valid_aim swMath_V matches 0 if score #n_pkt_blocked_aim swMath_V matches 0 run scoreboard players set #maxcalcscore swMath_V -10000

# maximum score if no legal ball left (already win)
execute if score #simendgame swMath_V matches 1 run scoreboard players set #maxcalcscore swMath_V 20000

#tellraw @a [{"text":"max_S d1 adjust, "},{"score":{"objective":"swMath_V","name":"#maxcalcscore"}}]

# clean up 

# retain pocket indicators
# kill @e[tag=swPool_aim_pkt]

kill @e[tag=swPool_aim_obj]
tag @e[tag=swPool_tmp_legal] remove swPool_tmp_legal
