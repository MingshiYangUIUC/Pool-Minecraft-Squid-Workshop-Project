# calculate scores
# execute as (self) object ball @e[tag=swPool_tmp_legal,distance=..0.001,limit=1]
#   get distance from object ball to pocket
#   get distance from object ball to cue ball
# result is unit 1000
scoreboard players operation #tmp swPool_pktid = @s swPool_pktid
execute as @e[tag=swPool_tmp_legal,tag=swPool_pool,distance=..0.001,limit=1] run function pool:classes/bot/generic/compute_distance_cue_obj_pkt

# get cut angle (already calculated) but divide by 10 to be unit 1000
scoreboard players operation #acut swMath_V = cut_angle swPool_rot
scoreboard players operation #acut swMath_V /= #C_10 swMath_C

# execute as pocket
#   get pocket-specific alignment angle unit 1000
execute as @e[tag=swPool_aim_pkt] if score @s swPool_pktid = #tmp swPool_pktid run function pool:classes/bot/generic/compute_pkt_alignment_angle

# adjust if using fake center, set apkt to -1
execute if score #usefakecenter swMath_V matches 1 run scoreboard players set #pktdrot swMath_V -1

# calculate pocket-specific swPool_calcScore using logistic model, unit become 10000 (*10000 and round to integer)

# weights if corner
execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w1 swMath_V -329
execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w2 swMath_V -167
execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w3 swMath_V -425
execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w4 swMath_V -357
execute if score #cornerpot swMath_V matches 1 run scoreboard players set #vIn swMath_V 39307

#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w1 swMath_V -974
#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w2 swMath_V -204
#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w3 swMath_V 144
#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w4 swMath_V -185
#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w5 swMath_V 484
#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w6 swMath_V 87
#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w7 swMath_V -573
#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #w8 swMath_V -518
#execute if score #cornerpot swMath_V matches 1 run scoreboard players set #vIn swMath_V 55411

# weights if side
execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w1 swMath_V -578
execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w2 swMath_V -172
execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w3 swMath_V -522
execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w4 swMath_V -521
execute if score #cornerpot swMath_V matches 0 run scoreboard players set #vIn swMath_V 56589

#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w1 swMath_V -1525
#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w2 swMath_V -789
#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w3 swMath_V 495
#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w4 swMath_V 820
#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w5 swMath_V 1358
#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w6 swMath_V 426
#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w7 swMath_V -1062
#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #w8 swMath_V -1844
#execute if score #cornerpot swMath_V matches 0 run scoreboard players set #vIn swMath_V 74934

scoreboard players reset #cornerpot swMath_V

# z += w1 * dcue
scoreboard players operation #tmp swMath_V = #dcue swMath_V
scoreboard players operation #tmp swMath_V *= #w1 swMath_V
scoreboard players operation #tmp swMath_V /= #C_1000 swMath_C
scoreboard players operation #vIn swMath_V += #tmp swMath_V

# z += w2 * dpkt
scoreboard players operation #tmp swMath_V = #dpkt swMath_V
scoreboard players operation #tmp swMath_V *= #w2 swMath_V
scoreboard players operation #tmp swMath_V /= #C_1000 swMath_C
scoreboard players operation #vIn swMath_V += #tmp swMath_V

# z += w3 * acut
scoreboard players operation #tmp swMath_V = #acut swMath_V
scoreboard players operation #tmp swMath_V *= #w3 swMath_V
scoreboard players operation #tmp swMath_V /= #C_1000 swMath_C
scoreboard players operation #vIn swMath_V += #tmp swMath_V

# z += w4 * apkt
scoreboard players operation #tmp swMath_V = #pktdrot swMath_V
scoreboard players operation #tmp swMath_V *= #w4 swMath_V
scoreboard players operation #tmp swMath_V /= #C_1000 swMath_C
scoreboard players operation #vIn swMath_V += #tmp swMath_V

# squared values
# z += w5 * dcue^2
#scoreboard players operation #tmp swMath_V = #dcue swMath_V
#scoreboard players operation #tmp swMath_V /= #C_10 swMath_C
#scoreboard players operation #tmp swMath_V *= #tmp swMath_V
#scoreboard players operation #tmp swMath_V /= #C_100 swMath_C
#scoreboard players operation #tmp swMath_V *= #w5 swMath_V
#scoreboard players operation #tmp swMath_V /= #C_10000 swMath_C
#scoreboard players operation #vIn swMath_V += #tmp swMath_V

# z += w6 * dpkt^2
#scoreboard players operation #tmp swMath_V = #dpkt swMath_V
#scoreboard players operation #tmp swMath_V /= #C_10 swMath_C
#scoreboard players operation #tmp swMath_V *= #tmp swMath_V
#scoreboard players operation #tmp swMath_V /= #C_100 swMath_C
#scoreboard players operation #tmp swMath_V *= #w6 swMath_V
#scoreboard players operation #tmp swMath_V /= #C_10000 swMath_C
#scoreboard players operation #vIn swMath_V += #tmp swMath_V

# z += w7 * acut^2
#scoreboard players operation #tmp swMath_V = #acut swMath_V
#scoreboard players operation #tmp swMath_V /= #C_10 swMath_C
#scoreboard players operation #tmp swMath_V *= #tmp swMath_V
#scoreboard players operation #tmp swMath_V /= #C_100 swMath_C
#scoreboard players operation #tmp swMath_V *= #w7 swMath_V
#scoreboard players operation #tmp swMath_V /= #C_10000 swMath_C
#scoreboard players operation #vIn swMath_V += #tmp swMath_V

# z += w8 * apkt^2
#scoreboard players operation #tmp swMath_V = #pktdrot swMath_V
#scoreboard players operation #tmp swMath_V /= #C_10 swMath_C
#scoreboard players operation #tmp swMath_V *= #tmp swMath_V
#scoreboard players operation #tmp swMath_V /= #C_100 swMath_C
#scoreboard players operation #tmp swMath_V *= #w8 swMath_V
#scoreboard players operation #tmp swMath_V /= #C_10000 swMath_C
#scoreboard players operation #vIn swMath_V += #tmp swMath_V

# sigmoid and record score
function pool:classes/bot/sigmoid
scoreboard players operation #S swMath_V = #vOut swMath_V
execute if score #pkt_blocked swMath_V matches 1 run scoreboard players set #S swMath_V 0

# add small randomness
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= #C_10 swMath_C
scoreboard players operation #S swMath_V += #vOut swMath_V

scoreboard players operation @e[tag=swPool_aim_obj_new,limit=1] swPool_calcScore = #S swMath_V

# remove new tag to wrap up
tag @e[tag=swPool_aim_obj_new,limit=1] remove swPool_aim_obj_new

#execute if score #usefakecenter swMath_V matches 1 run  sayFAKECNTR
#tellraw @a[tag=swPool_debug] [{"text":"vvvv"}]
#tellraw @a[tag=swPool_debug] [{"text":"crnr, "},{"score":{"objective":"swMath_V","name":"#cornerpot"}}]
#tellraw @a[tag=swPool_debug] [{"text":"blck, "},{"score":{"objective":"swMath_V","name":"#pkt_blocked"}}]
# inputs in unit of 1000
#tellraw @a[tag=swPool_debug] [{"text":"dcue, "},{"score":{"objective":"swMath_V","name":"#dcue"}}]
#tellraw @a[tag=swPool_debug] [{"text":"dpkt, "},{"score":{"objective":"swMath_V","name":"#dpkt"}}]
#tellraw @a[tag=swPool_debug] [{"text":"acut, "},{"score":{"objective":"swMath_V","name":"#acut"}}]
#tellraw @a[tag=swPool_debug] [{"text":"apkt, "},{"score":{"objective":"swMath_V","name":"#pktdrot"}}]
#tellraw @a[tag=swPool_debug] [{"text":"Prob, "},{"score":{"objective":"swMath_V","name":"#S"}}]
