#from object real distance and relative angle find the relative distance along the relative trajectory
#just calculation, no tag is needed for specification here
#object real distance should be smaller than 3

#constant used for calculation: 10000
scoreboard players set @s swPool_var04 10000

#cos(dr)=var00
scoreboard players operation @s swPool_var00 = @s swPool_drot
execute at @s run function pool:classes/math/cosdeg

# swPool_drel part1: var01=d*cos(dr)
scoreboard players operation @s swPool_var01 = @s swPool_dist
scoreboard players operation @s swPool_var01 *= @s swPool_var00
scoreboard players operation @s swPool_var01 /= @s swPool_var04

# swPool_drel part2: sqrt[(d*cos(dr))^2-d^2+0.25^2]
# change above eqn by new distance^2 ro replace 0.25^2
scoreboard players operation @s swPool_var02 = @s swPool_var01
scoreboard players operation @s swPool_var02 *= @s swPool_var02
scoreboard players operation @s swPool_var03 = @s swPool_dist
scoreboard players operation @s swPool_var03 *= @s swPool_var03
scoreboard players operation @s swPool_var02 -= @s swPool_var03

#2500^2
execute if entity @e[tag=swPool_a2,limit=1,tag=!swPool_fake] run scoreboard players add @s swPool_var02 6250000

execute if entity @e[tag=swPool_a2,limit=1,tag=swPool_pktedge_c] run scoreboard players add @s swPool_var02 24502500
execute if entity @e[tag=swPool_a2,limit=1,tag=swPool_pktedge_s] run scoreboard players add @s swPool_var02 16402500

execute if entity @e[tag=swPool_a2,limit=1,tag=swPool_pktcntr_c] run scoreboard players add @s swPool_var02 18705625
execute if entity @e[tag=swPool_a2,limit=1,tag=swPool_pktcntr_s] run scoreboard players add @s swPool_var02 6502500

#	take square root
scoreboard players operation @s swPool_var00 = @s swPool_var02
execute at @s run function pool:classes/physics/sqrt

#record relative distance
scoreboard players operation @s swPool_drel = @s swPool_var01
scoreboard players operation @s swPool_drel -= @s swPool_var00
