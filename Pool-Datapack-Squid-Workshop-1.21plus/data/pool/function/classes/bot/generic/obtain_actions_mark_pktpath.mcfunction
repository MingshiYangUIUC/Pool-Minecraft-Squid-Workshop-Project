# @s is the aim point indicator
# location is the object ball

# log locations
function pool:classes/master/read_tmppos
scoreboard players operation #xaim swMath_V = @s swPool_tmpposx
scoreboard players operation #zaim swMath_V = @s swPool_tmpposz
scoreboard players operation #tmp swPool_pktid = @s swPool_pktid
execute as @e[tag=swPool_aim_pkt] if score @s swPool_pktid = #tmp swPool_pktid run scoreboard players operation #xpkt swMath_V = @s swPool_tmpposx
execute as @e[tag=swPool_aim_pkt] if score @s swPool_pktid = #tmp swPool_pktid run scoreboard players operation #zpkt swMath_V = @s swPool_tmpposz

# check all other object balls except the one being hit (location)
scoreboard players set #pkt_blocked swMath_V 0
# returns set #blocked swMath_V 1 if any ball blocked path
execute as @e[tag=swPool_pool,distance=0.001..] run function pool:classes/bot/generic/obtain_actions_mark_pktpath_compute
#execute if score #pkt_blocked swMath_V matches 1 at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0 1 force
execute if score #pkt_blocked swMath_V matches 1 run tag @s add swPool_pkt_blocked
