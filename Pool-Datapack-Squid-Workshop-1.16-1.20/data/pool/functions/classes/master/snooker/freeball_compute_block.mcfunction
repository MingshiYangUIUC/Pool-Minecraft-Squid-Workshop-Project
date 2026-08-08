# this is the blocker ball (we do not use advanced technique like /return here for version compatibility)

# get self distance, angle center, angle half.
#say me
function pool:classes/master/read_tmppos
scoreboard players operation #xobj swMath_V = @s swPool_tmpposx
scoreboard players operation #zobj swMath_V = @s swPool_tmpposz
function pool:classes/master/snooker/freeball_compute_angle

scoreboard players operation #blocker_a_center swMath_V = #a_center swMath_V
scoreboard players operation #blocker_a_half swMath_V = #a_half swMath_V
scoreboard players operation #blocker_dist swMath_V = #dist swMath_V

# rotate towards target
scoreboard players operation #blocker_a_center swMath_V -= #tgt_a_center swMath_V
# normalize in radians -pi to pi
execute if score #blocker_a_center swMath_V matches ..-31417 run scoreboard players add #blocker_a_center swMath_V 62832
execute if score #blocker_a_center swMath_V matches 31417.. run scoreboard players remove #blocker_a_center swMath_V 62832

scoreboard players operation #blocker_a_max swMath_V = #blocker_a_center swMath_V
scoreboard players operation #blocker_a_max swMath_V += #blocker_a_half swMath_V

scoreboard players operation #blocker_a_min swMath_V = #blocker_a_center swMath_V
scoreboard players operation #blocker_a_min swMath_V -= #blocker_a_half swMath_V


#tellraw @a[tag=swPool_debug] [{"text":"angle dx, "},{"score":{"objective":"swMath_V","name":"#fbdx"}}]
#tellraw @a[tag=swPool_debug] [{"text":"angle dz, "},{"score":{"objective":"swMath_V","name":"#fbdz"}}]
#tellraw @a[tag=swPool_debug] [{"text":"angle dist, "},{"score":{"objective":"swMath_V","name":"#dist"}}]
#tellraw @a[tag=swPool_debug] [{"text":"angle half, "},{"score":{"objective":"swMath_V","name":"#blocker_a_half"}}]
#tellraw @a[tag=swPool_debug] [{"text":"angle min, "},{"score":{"objective":"swMath_V","name":"#blocker_a_min"}}]
#tellraw @a[tag=swPool_debug] [{"text":"angle max, "},{"score":{"objective":"swMath_V","name":"#blocker_a_max"}}]

#tellraw @a[tag=swPool_debug] [{"text":"tgt min, "},{"score":{"objective":"swMath_V","name":"#tgt_a_min"}}]
#tellraw @a[tag=swPool_debug] [{"text":"tgt max, "},{"score":{"objective":"swMath_V","name":"#tgt_a_max"}}]

# blocker covers target min edge
execute if score #blocker_dist swMath_V < #tgt_dist swMath_V if score #blocker_a_min swMath_V <= #tgt_a_min swMath_V if score #blocker_a_max swMath_V >= #tgt_a_min swMath_V run scoreboard players set #blocked_current_tgt swMath_V 1
# blocker covers target max edge
execute if score #blocker_dist swMath_V < #tgt_dist swMath_V if score #blocker_a_min swMath_V <= #tgt_a_max swMath_V if score #blocker_a_max swMath_V >= #tgt_a_max swMath_V run scoreboard players set #blocked_current_tgt swMath_V 1

# blocker covers target min edge
#execute if score #blocker_dist swMath_V < #tgt_dist swMath_V if score #blocker_a_min swMath_V <= #tgt_a_min swMath_V if score #blocker_a_max swMath_V >= #tgt_a_min swMath_V run say blocking min
# blocker covers target max edge
#execute if score #blocker_dist swMath_V < #tgt_dist swMath_V if score #blocker_a_min swMath_V <= #tgt_a_max swMath_V if score #blocker_a_max swMath_V >= #tgt_a_max swMath_V run say blocking max