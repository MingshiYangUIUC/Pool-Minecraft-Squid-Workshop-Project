#exclude the balls that will not touch at the next tick

#parent command:
#execute as @e[type=item_display,tag=swPool_near] at @s run function pool:classes/master/quicksort

#subject: @s (tagged swPool_near)
#targets: @e[tag=swPool_origin]

#ideas

#1. sort by comparing sum of v and (distance-0.5) (ideal for stationary balls)
#2. 

scoreboard players operation vsum swPool_v = @s swPool_v
scoreboard players operation vsum swPool_v += qs_self swPool_v
scoreboard players operation vsum swPool_v /= C_10000 swPool_C

tag @s add swPool_d1

function pool:classes/master/qs_dist

# QSD_sqr = distance^2
# scale to avoid overflow:
scoreboard players operation QSD_sqr swPool_dist /= C_100 swPool_C

tag @s remove swPool_d1

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

# fake should not have v
#execute if entity @s[tag=swPool_fake] run tellraw @a [{"text":" sV, "},{"score":{"objective":"swPool_v","name":"@s"}}]
scoreboard players reset @s[tag=swPool_fake] swPool_v

#tellraw @a [{"text":" V, "},{"score":{"objective":"swPool_v","name":"vsum"}}]
#tellraw @a [{"text":" D, "},{"score":{"objective":"swPool_dist","name":"@s"}}]

#execute if score vsum swPool_v < @s swPool_dist run say nope
