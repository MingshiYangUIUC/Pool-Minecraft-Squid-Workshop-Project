#from object real distance and relative angle find the relative distance along the relative trajectory
#just calculation, no tag is needed for specification here
#object real distance should be smaller than 3

#constant used for calculation: 10000
scoreboard players set @s swPool_var04 10000

#cos(dr)=var00
scoreboard players operation @s swPool_var00 = @s swPool_drot
execute at @s run function pool:classes/physics/cosdeg

# swPool_drel part1: var01=d*cos(dr)
scoreboard players operation @s swPool_var01 = @s swPool_dist
scoreboard players operation @s swPool_var01 *= @s swPool_var00
scoreboard players operation @s swPool_var01 /= @s swPool_var04

# swPool_drel part2: sqrt[(d*cos(dr))^2-d^2+0.25^2]
scoreboard players operation @s swPool_var02 = @s swPool_var01
scoreboard players operation @s swPool_var02 *= @s swPool_var02
scoreboard players operation @s swPool_var03 = @s swPool_dist
scoreboard players operation @s swPool_var03 *= @s swPool_var03
scoreboard players operation @s swPool_var02 -= @s swPool_var03
scoreboard players add @s swPool_var02 6250000
#	take square root
scoreboard players operation @s swPool_var00 = @s swPool_var02
execute at @s run function pool:classes/physics/sqrt

#record relative distance
scoreboard players operation @s swPool_drel = @s swPool_var01
scoreboard players operation @s swPool_drel -= @s swPool_var00
