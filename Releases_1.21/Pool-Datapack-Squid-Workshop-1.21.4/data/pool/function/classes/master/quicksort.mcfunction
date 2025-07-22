#exclude the balls that will not touch at the next tick

#parent command:
#execute as @e[type=armor_stand,tag=swPool_near] at @s run function pool:classes/master/quicksort

#subject: @s (tagged swPool_near)
#targets: @e[tag=swPool_origin]

#ideas

#1. sort by comparing sum of v and (distance-0.5) (ideal for stationary balls)
#2. 

scoreboard players operation vsum swPool_v = @s swPool_v
scoreboard players operation vsum swPool_v += @e[type=armor_stand,tag=swPool_origin,limit=1] swPool_v

tag @s add swPool_d1

function pool:classes/master/qs_dist

tag @s remove swPool_d1

scoreboard players operation vsum swPool_v /= C_10000 swPool_C

scoreboard players operation QSD swPool_dist -= C_5000 swPool_C

execute if score vsum swPool_v < QSD swPool_dist run tag @s remove swPool_near

#tellraw @a [{"text":" V, "},{"score":{"objective":"swPool_v","name":"vsum"}}]
#tellraw @a [{"text":" D, "},{"score":{"objective":"swPool_dist","name":"@s"}}]

#execute if score vsum swPool_v < @s swPool_dist run say nope