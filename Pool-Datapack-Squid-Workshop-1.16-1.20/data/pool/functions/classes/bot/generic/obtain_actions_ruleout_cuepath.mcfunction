# @s is the aim point indicator
# location is the object ball

# log locations
function pool:classes/master/read_tmppos
scoreboard players operation #xaim swMath_V = @s swPool_tmpposx
scoreboard players operation #zaim swMath_V = @s swPool_tmpposz
scoreboard players operation #xcue swMath_V = @e[tag=swPool_cue,tag=swPool_pool,limit=1] swPool_tmpposx
scoreboard players operation #zcue swMath_V = @e[tag=swPool_cue,tag=swPool_pool,limit=1] swPool_tmpposz

# check all other object balls except the one being hit (location)
scoreboard players set #blocked swMath_V 0
# returns set #blocked swMath_V 1 if any ball blocked path
execute as @e[tag=swPool_pool,distance=0.001..] run function pool:classes/bot/generic/obtain_actions_ruleout_cuepath_compute
#execute if score #blocked swMath_V matches 1 at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 0 1 force
execute if score #blocked swMath_V matches 1 run scoreboard players add #n_pkt_blocked_cue swMath_V 1
execute if score #blocked swMath_V matches 1 run kill @s