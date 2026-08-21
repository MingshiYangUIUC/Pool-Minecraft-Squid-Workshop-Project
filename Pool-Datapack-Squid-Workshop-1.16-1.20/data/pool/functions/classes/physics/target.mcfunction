# m
#find out if two objects will collide, return value of "swPool_ontgt". given current velocity profile:
#positive means will a1 will hit a2, negative means will not hit or too far away
#	only consider angle around vertical 
#	find the relative angle recorded as    "swPool_drot"    between objects given absolute angle and velocities
#	"moving" object is tagged a1 and is @s and "static" object is tagged a2
#need to run with at @s
#find out relative distance between objects where the SECOND object is stationary in the constructed reference frame, if swPool_ontgt is positive and distance is small.



# relative position vector
scoreboard players operation #pos2 swMath_V = a2_self swPool_var01
scoreboard players operation #pos swMath_V = a2_self swPool_var02
scoreboard players operation #pos2 swMath_V -= @s swPool_tmpposx
scoreboard players operation #pos swMath_V -= @s swPool_tmpposz
scoreboard players operation #pos2 swMath_V *= #C_-1 swMath_C

# relative velocity vector
scoreboard players operation #vel2 swMath_V = a2_selfv swPool_var01
scoreboard players operation #vel swMath_V = @s swPool_vez
scoreboard players operation #vel2 swMath_V -= @s swPool_vex
scoreboard players operation #vel swMath_V -= a2_selfv swPool_var02

# downscale
scoreboard players operation #pos swMath_V /= #C_10 swMath_C
scoreboard players operation #pos2 swMath_V /= #C_10 swMath_C
scoreboard players operation #vel swMath_V /= #C_10 swMath_C
scoreboard players operation #vel2 swMath_V /= #C_10 swMath_C

# drot = velocity_angle - position_angle
scoreboard players operation #vIn2 swMath_V = #vel2 swMath_V
scoreboard players operation #vIn2 swMath_V *= #pos swMath_V

scoreboard players operation #tmp swMath_V = #vel swMath_V
scoreboard players operation #tmp swMath_V *= #pos2 swMath_V
scoreboard players operation #vIn2 swMath_V -= #tmp swMath_V

scoreboard players operation #vIn swMath_V = #vel swMath_V
scoreboard players operation #vIn swMath_V *= #pos swMath_V

scoreboard players operation #tmp swMath_V = #vel2 swMath_V
scoreboard players operation #tmp swMath_V *= #pos2 swMath_V
scoreboard players operation #vIn swMath_V += #tmp swMath_V
# atan2(avel-apos)
function pool:classes/math/arctan2_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg
scoreboard players operation @s swPool_drot = #vOut swMath_V

#unify dr value
scoreboard players operation @s swPool_drot %= C_3600000 swPool_C

#get distance
#tag @e[type=armor_stand,tag=swPool_a2,limit=1] add swPool_d2
#tag @e[type=area_effect_cloud,tag=swPool_fake,tag=swPool_a2,limit=1] add swPool_d2
#tag @s add swPool_d1
scoreboard players set @s swPool_dist 99999999
function pool:classes/physics/distance1
#tag @e[type=armor_stand,tag=swPool_a2,limit=1] remove swPool_d2
#tag @s remove swPool_d1

#tellraw @a [{"text":"variable dist is "},{"score":{"objective":"swPool_dist","name":"@s"}}]

#equation: swPool_ontgt=0.25/d-sin(dr)
#modify equation for different radius...

# (r1 + r2) * 10000  #ontgt swPool_var01
scoreboard players operation #ontgt swPool_var01 = C_r swPool_C

#execute as @e[type=armor_stand,tag=swPool_a2,limit=1,distance=..3] run function pool:classes/physics/target_helper
scoreboard players operation #ontgt swPool_var01 += #ontgt_add swPool_var01

#execute if entity @e[tag=swPool_a2,limit=1,tag=!swPool_fake] run scoreboard players operation #ontgt swPool_var01 += C_r swPool_C

#execute if entity @e[type=armor_stand,tag=swPool_a2,limit=1,tag=swPool_pktedge_c] run scoreboard players operation #ontgt swPool_var01 += C_r2_edge_c swPool_C
#execute if entity @e[type=armor_stand,tag=swPool_a2,limit=1,tag=swPool_pktedge_s] run scoreboard players operation #ontgt swPool_var01 += C_r2_edge_s swPool_C

#execute if entity @e[type=armor_stand,tag=swPool_a2,limit=1,tag=swPool_pktcntr_c] run scoreboard players operation #ontgt swPool_var01 += C_r2_cntr_c swPool_C
#execute if entity @e[type=armor_stand,tag=swPool_a2,limit=1,tag=swPool_pktcntr_s] run scoreboard players operation #ontgt swPool_var01 += C_r2_cntr_s swPool_C

scoreboard players operation #ontgt swPool_var01 *= C_10000 swPool_C

#tellraw @a [{"text":"variable swPool_v1 is "},{"score":{"objective":"swPool_var01","name":"#ontgt"}}]

scoreboard players operation #ontgt swPool_var01 /= @s swPool_dist
scoreboard players operation @s swPool_var00 = @s swPool_drot
execute at @s run function pool:classes/math/sindeg
#	minus absolute value
execute if entity @s[scores={swPool_var00=1..}] run scoreboard players operation #ontgt swPool_var01 -= @s swPool_var00
execute if entity @s[scores={swPool_var00=..0}] run scoreboard players operation #ontgt swPool_var01 += @s swPool_var00

#tellraw @a [{"text":"variable v01 is "},{"score":{"objective":"swPool_var01","name":"@s"}}]

#	flip if target is behind object
#scoreboard players set @s swPool_var02 -1
execute if entity @s[scores={swPool_drot=900000..2700000}] if score #ontgt swPool_var01 matches 1.. run scoreboard players operation #ontgt swPool_var01 *= C_-1 swPool_C
scoreboard players operation @s swPool_ontgt = #ontgt swPool_var01

#tellraw @a [{"text":"variable ontgt is "},{"score":{"objective":"swPool_ontgt","name":"@s"}}]

#find relative distance
execute if entity @s[scores={swPool_ontgt=1..}] at @s run function pool:classes/physics/relativedist
execute unless entity @s[scores={swPool_ontgt=1..}] run scoreboard players set @s swPool_drel -1

#tellraw @a [{"text":"variable drel is "},{"score":{"objective":"swPool_drel","name":"@s"}}]

#begin collision
#link to collision function
execute if entity @s[scores={swPool_drel=0..20000}] run tag @s add swPool_c1
execute if entity @s[scores={swPool_drel=0..20000}] run tag @e[type=armor_stand,tag=swPool_a2,limit=1,distance=..3] add swPool_c2
execute if entity @s[tag=swPool_c1] at @s run function pool:classes/collision/main

#remove a1, a2 later
tag @s remove swPool_tgt
