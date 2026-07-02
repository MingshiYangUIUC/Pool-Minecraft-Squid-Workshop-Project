# for corner pocket, determine using x z tag

# determine alignment angle using sizex and sizez, this is in game rotation
# unit is 10000
# output unit 1000 like scaled distance
# corner

execute if score @s swPool_sizex matches ..-1 if score @s swPool_sizez matches ..-1 run scoreboard players set #pktface swMath_V -450000
execute if score @s swPool_sizex matches ..-1 if score @s swPool_sizez matches 1.. run scoreboard players set #pktface swMath_V -1350000
execute if score @s swPool_sizex matches 1.. if score @s swPool_sizez matches ..-1 run scoreboard players set #pktface swMath_V 450000
execute if score @s swPool_sizex matches 1.. if score @s swPool_sizez matches 1.. run scoreboard players set #pktface swMath_V 1350000

# side
execute if score @s swPool_sizex matches ..-1 if score @s swPool_sizez matches 0 run scoreboard players set #pktface swMath_V -900000
execute if score @s swPool_sizex matches 1.. if score @s swPool_sizez matches 0 run scoreboard players set #pktface swMath_V 900000
execute if score @s swPool_sizex matches 0 if score @s swPool_sizez matches ..-1 run scoreboard players set #pktface swMath_V 0
execute if score @s swPool_sizex matches 0 if score @s swPool_sizez matches 1.. run scoreboard players set #pktface swMath_V 1800000

# log corner 1 or side 0
scoreboard players set #cornerpot swMath_V 0
execute if score #pktface swMath_V matches -450000 run scoreboard players set #cornerpot swMath_V 1
execute if score #pktface swMath_V matches -1350000 run scoreboard players set #cornerpot swMath_V 1
execute if score #pktface swMath_V matches 450000 run scoreboard players set #cornerpot swMath_V 1
execute if score #pktface swMath_V matches 1350000 run scoreboard players set #cornerpot swMath_V 1

#execute if entity @e[tag=swPool_aim_obj_new,limit=1] run tellraw @a [{"text":"pktface, "},{"score":{"objective":"swMath_V","name":"#pktface"}}]

# since @s is pocket location execute location is at object ball, tp helper entity to object ball facing @s and read Rotation + 180 deg
tp @e[tag=swPool_rhp1,limit=1] ~ ~ ~ facing entity @s
execute store result score #objface swMath_V run data get entity @e[tag=swPool_rhp1,limit=1] Rotation[0] 10000
scoreboard players add #objface swMath_V 1800000

# compute smallest absolute angle difference between #pktface swMath_V and #objface swMath_V
# normalize #objface after adding 180 deg
scoreboard players operation #objface swMath_V %= #C_3600000 swMath_C

# drot = objface - pktface
scoreboard players operation #pktdrot swMath_V = #objface swMath_V
scoreboard players operation #pktdrot swMath_V -= #pktface swMath_V

# wrap to [-360, 360)
scoreboard players operation #pktdrot swMath_V %= #C_3600000 swMath_C

# convert to shortest signed angle in [-180, 180]
execute if score #pktdrot swMath_V matches 1800001.. run scoreboard players operation #pktdrot swMath_V -= #C_3600000 swMath_C
execute if score #pktdrot swMath_V matches ..-1800001 run scoreboard players operation #pktdrot swMath_V += #C_3600000 swMath_C

# absolute value and downscale
execute if score #pktdrot swMath_V matches ..-1 run scoreboard players operation #pktdrot swMath_V *= #C_-1 swMath_C
scoreboard players operation #pktdrot swMath_V /= #C_10 swMath_C