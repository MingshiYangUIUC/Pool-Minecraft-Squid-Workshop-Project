# this is the target ball (not blocker)
#say imtgt
# get self distance, angle center, angle half.
function pool:classes/master/read_tmppos
scoreboard players operation #xobj swMath_V = @s swPool_tmpposx
scoreboard players operation #zobj swMath_V = @s swPool_tmpposz
function pool:classes/master/snooker/freeball_compute_angle

#tellraw @a[tag=swPool_debug] [{"text":"tgt dx, "},{"score":{"objective":"swMath_V","name":"#fbdx"}}]
#tellraw @a[tag=swPool_debug] [{"text":"tgt dz, "},{"score":{"objective":"swMath_V","name":"#fbdz"}}]
#tellraw @a[tag=swPool_debug] [{"text":"xobj, "},{"score":{"objective":"swMath_V","name":"#xobj"}}]
#tellraw @a[tag=swPool_debug] [{"text":"zobj, "},{"score":{"objective":"swMath_V","name":"#zobj"}}]
#tellraw @a[tag=swPool_debug] [{"text":"xcue, "},{"score":{"objective":"swMath_V","name":"#xcue"}}]
#tellraw @a[tag=swPool_debug] [{"text":"zcue, "},{"score":{"objective":"swMath_V","name":"#zcue"}}]

scoreboard players operation #tgt_a_center swMath_V = #a_center swMath_V
scoreboard players operation #tgt_a_half swMath_V = #a_half swMath_V
scoreboard players operation #tgt_dist swMath_V = #dist swMath_V

scoreboard players operation #tgt_a_min swMath_V = #a_half swMath_V
scoreboard players operation #tgt_a_min swMath_V *= #C_-1 swMath_C
scoreboard players operation #tgt_a_max swMath_V = #a_half swMath_V

scoreboard players set #blocked_current_tgt swMath_V 0
# run on other ball except self and cue and similar type (red) balls
# in this function, will modify remaining angle range in place. It start with -a_half, a_half rotated for the target
execute at @s as @e[tag=swPool_pool,distance=0.001..,tag=!swPool_cue,tag=!swPool_freeball_check] at @s run function pool:classes/master/snooker/freeball_compute_block

# if never blocked anytime, set main score to 0
execute if score #blocked_current_tgt swMath_V matches 0 run scoreboard players set #blocked_all_pairs swMath_V 0