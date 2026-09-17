#exclude the balls that will not touch at the next tick

#parent command:
#execute as @e[type=item_display,tag=swPool_near] at @s run function pool:classes/master/quicksort

#subject: @s (tagged swPool_near)
#targets: caller of this function

#ideas

#1. sort by comparing sum of v and (distance-0.5) (ideal for stationary balls)
#2. 

# vsum = (@s v + qs_self v) / 10000
execute store result score vsum swPool_v run compute default float {type:"minecraft:div",left:{type:"minecraft:add",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_v"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"qs_self"},score:"swPool_v"}}]},right:10000.0}

# QSD_sqr = ((tmpposx-D2x_self)^2 + (tmpposz-D2z_self)^2) / 100
execute store result score QSD_sqr swPool_dist run compute default float {type:"minecraft:div",left:{type:"minecraft:add",inputs:[{type:"minecraft:pow",base:{type:"minecraft:sub",left:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_tmpposx"}},right:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"D2x_self"},score:"swMath_V"}}},exponent:2.0},{type:"minecraft:pow",base:{type:"minecraft:sub",left:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_tmpposz"}},right:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"D2z_self"},score:"swMath_V"}}},exponent:2.0}]},right:100.0}

# threshold = vsum + self radius
scoreboard players operation QS_th swPool_dist = vsum swPool_v
scoreboard players operation QS_th swPool_dist += C_r swPool_C

# add other ball radius / dynamic fake ball radius if needed
function pool:classes/master/quicksort_helper

# small buffer to avoid numerical instability
scoreboard players operation QS_th swPool_dist += C_500 swPool_C

# scale before squaring:
# QS_th = (vsum + r_self + r_other + buffer) / 10
scoreboard players operation QS_th swPool_dist /= C_10 swPool_C

# QS_th = threshold^2 / 100
scoreboard players operation QS_th swPool_dist *= QS_th swPool_dist

# if threshold^2 / 100 < distance^2 / 100,
# they cannot collide this tick
execute if score QS_th swPool_dist < QSD_sqr swPool_dist run tag @s remove swPool_near

#tellraw @a [{"text":" V, "},{"score":{"objective":"swPool_v","name":"vsum"}}]
#tellraw @a [{"text":" D, "},{"score":{"objective":"swPool_dist","name":"@s"}}]

#execute if score vsum swPool_v < @s swPool_dist run say nope
