#find out if two objects will collide, return value of "swPool_ontgt". given current velocity profile:
#positive means will a1 will hit a2, negative means will not hit or too far away
#	only consider angle around vertical 
#	find the relative angle recorded as    "swPool_drot"    between objects given absolute angle and velocities
#	"moving" object is tagged a1 and is @s and "static" object is tagged a2
#need to run with at @s
#find out relative distance between objects where the SECOND object is stationary in the constructed reference frame, if swPool_ontgt is positive and distance is small.



#absolute angle

scoreboard players operation @s swPool_drot = @s swPool_Rotation
tag @e[type=area_effect_cloud,tag=swPool_rhp1] add swPool_facer
execute at @s run tp @e[type=area_effect_cloud,tag=swPool_facer,limit=1,sort=nearest] ~ ~ ~ facing entity @e[type=armor_stand,tag=swPool_a2,limit=1]
execute as @e[type=area_effect_cloud,tag=swPool_facer,limit=1,sort=nearest] store result score FACER swPool_rot run data get entity @s Rotation[0] 10000
scoreboard players operation @s swPool_drot -= FACER swPool_rot
tag @e[type=area_effect_cloud,tag=swPool_rhp1] remove swPool_facer


#test if need relative
execute unless entity @s[scores={swPool_v=97656..}] unless entity @e[tag=swPool_a2,limit=1,scores={swPool_v=97656..}] run tag @s add swPool_aabs

#angle by velocity triangle
execute if entity @s[tag=!swPool_aabs] run tag @e[type=area_effect_cloud,tag=swPool_rhp1] add swPool_facertp
execute if entity @s[tag=!swPool_aabs] at @s run tp @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] ~ ~ ~ ~ 0
### 
execute if entity @s[tag=!swPool_aabs] store result entity @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] Rotation[0] float 0.0001 run scoreboard players get @s swPool_Rotation
execute if entity @s[tag=!swPool_aabs] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] swPool_v = @s swPool_v
execute if entity @s[tag=!swPool_aabs] run execute as @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] at @s run function pool:classes/motion/move
execute if entity @s[tag=!swPool_aabs] run scoreboard players set @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] swPool_v 0

execute if entity @s[tag=!swPool_aabs] store result entity @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] Rotation[0] float 0.0001 run scoreboard players get @e[type=armor_stand,tag=swPool_a2,limit=1] swPool_Rotation
execute if entity @s[tag=!swPool_aabs] run execute as @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~180 0
execute if entity @s[tag=!swPool_aabs] run scoreboard players operation @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] swPool_v = @e[type=armor_stand,tag=swPool_a2,limit=1] swPool_v
execute if entity @s[tag=!swPool_aabs] run execute as @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest] at @s run function pool:classes/motion/move


execute if entity @s[tag=!swPool_aabs] run scoreboard players operation @s swPool_rot = @s swPool_Rotation
execute if entity @s[tag=!swPool_aabs] run tag @e[type=area_effect_cloud,tag=swPool_rhp2] add swPool_facerv
execute if entity @s[tag=!swPool_aabs] at @s run tp @e[type=area_effect_cloud,tag=swPool_facerv,limit=1,sort=nearest] ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=swPool_facertp,limit=1,sort=nearest]
execute if entity @s[tag=!swPool_aabs] run execute as @e[type=area_effect_cloud,tag=swPool_facerv,limit=1,sort=nearest] store result score FACERV swPool_rot run data get entity @s Rotation[0] 10000
execute if entity @s[tag=!swPool_aabs] run scoreboard players operation @s swPool_rot -= FACERV swPool_rot
execute if entity @s[tag=!swPool_aabs] run scoreboard players operation @s swPool_drot -= @s swPool_rot

tag @e[type=area_effect_cloud,tag=swPool_rhp1] remove swPool_facertp
tag @e[type=area_effect_cloud,tag=swPool_rhp2] remove swPool_facerv
tag @s remove swPool_aabs



#unify dr value
scoreboard players remove @s[scores={swPool_drot=3600001..}] swPool_drot 3600000
scoreboard players remove @s[scores={swPool_drot=3600001..}] swPool_drot 3600000
scoreboard players add @s[scores={swPool_drot=..-1}] swPool_drot 3600000
scoreboard players add @s[scores={swPool_drot=..-1}] swPool_drot 3600000
#get distance
tag @e[type=armor_stand,tag=swPool_a2,limit=1] add swPool_d2
#tag @e[type=area_effect_cloud,tag=swPool_fake,tag=swPool_a2,limit=1] add swPool_d2
tag @s add swPool_d1
execute at @s run function pool:classes/physics/distance1
tag @e[type=armor_stand,tag=swPool_a2,limit=1] remove swPool_d2
tag @s remove swPool_d1

#tellraw @a [{"text":"variable dist is "},{"score":{"objective":"swPool_dist","name":"@s"}}]

#equation: swPool_ontgt=0.25/d-sin(dr)
#modify equation for different radius...
scoreboard players set @s swPool_var01 25000000

execute if entity @e[type=armor_stand,tag=swPool_a2,limit=1,tag=swPool_pktedge_c] run scoreboard players set @s swPool_var01 49500000
execute if entity @e[type=armor_stand,tag=swPool_a2,limit=1,tag=swPool_pktedge_s] run scoreboard players set @s swPool_var01 40500000

execute if entity @e[type=armor_stand,tag=swPool_a2,limit=1,tag=swPool_pktcntr_c] run scoreboard players set @s swPool_var01 43250000
execute if entity @e[type=armor_stand,tag=swPool_a2,limit=1,tag=swPool_pktcntr_s] run scoreboard players set @s swPool_var01 25500000

#tellraw @a [{"text":"variable swPool_v1 is "},{"score":{"objective":"swPool_var01","name":"@s"}}]

scoreboard players operation @s swPool_var01 /= @s swPool_dist
scoreboard players operation @s swPool_var00 = @s swPool_drot
execute at @s run function pool:classes/math/sindeg
#	minus absolute value
execute if entity @s[scores={swPool_var00=1..}] run scoreboard players operation @s swPool_var01 -= @s swPool_var00
execute if entity @s[scores={swPool_var00=..0}] run scoreboard players operation @s swPool_var01 += @s swPool_var00

#tellraw @a [{"text":"variable v01 is "},{"score":{"objective":"swPool_var01","name":"@s"}}]

#	flip if target is behind object
scoreboard players set @s swPool_var02 -1
execute if entity @s[scores={swPool_drot=900000..2700000}] if entity @s[scores={swPool_var01=1..}] run scoreboard players operation @s swPool_var01 *= @s swPool_var02
scoreboard players operation @s swPool_ontgt = @s swPool_var01

#tellraw @a [{"text":"variable ontgt is "},{"score":{"objective":"swPool_ontgt","name":"@s"}}]

#find relative distance
execute if entity @s[scores={swPool_ontgt=1..}] at @s run function pool:classes/physics/relativedist
execute unless entity @s[scores={swPool_ontgt=1..}] run scoreboard players set @s swPool_drel -1

#tellraw @a [{"text":"variable drel is "},{"score":{"objective":"swPool_drel","name":"@s"}}]

#begin collision
#link to collision function
execute if entity @s[scores={swPool_drel=0..20000}] run tag @s add swPool_c1
execute if entity @s[scores={swPool_drel=0..20000}] run tag @e[type=armor_stand,tag=swPool_a2,limit=1] add swPool_c2
execute if entity @s[tag=swPool_c1] at @s run function pool:classes/collision/main

#remove a1, a2 later

