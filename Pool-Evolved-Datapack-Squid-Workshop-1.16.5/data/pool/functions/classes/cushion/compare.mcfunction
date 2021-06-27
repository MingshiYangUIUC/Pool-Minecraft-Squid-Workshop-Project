#if touch cushions
#compare ratio of x,z and magnitude
#re-compute stuff before pocketing


scoreboard players operation @s swPool_posx = POSX swPool_posx
scoreboard players operation @s swPool_posz = POSZ swPool_posz

scoreboard players operation @s swPool_posx -= TABLE swPool_posx
scoreboard players operation @s swPool_posz -= TABLE swPool_posz

#add velocity for new distance in components
#execute at @s run function pool:classes/physics/vseparate
scoreboard players set @s swPool_var04 10000
scoreboard players operation @s swPool_var00 = @s swPool_vx
scoreboard players operation @s swPool_var00 /= @s swPool_var04
scoreboard players operation @s swPool_posx += @s swPool_var00
scoreboard players operation @s swPool_var01 = @s swPool_vz
scoreboard players operation @s swPool_var01 /= @s swPool_var04
scoreboard players operation @s swPool_posz += @s swPool_var01

#test
scoreboard players set @s swPool_var03 -1
scoreboard players operation @s swPool_sizex = @s swPool_posx
scoreboard players operation @s swPool_sizez = @s swPool_posz


#compute whether x or z side is touched first

scoreboard players set @s swPool_var04 1000

scoreboard players operation TABLE swPool_var02 = TABLE swPool_sizex
scoreboard players operation TABLE swPool_var02 *= @e[tag=swPool_a1,limit=1] swPool_var04
scoreboard players operation TABLE swPool_var02 /= TABLE swPool_sizez

####### end of re-compute

#have some absolute value to compare direction


scoreboard players operation @s swPool_var02 = @s swPool_posx
scoreboard players operation @s swPool_var02 *= @s swPool_var04
scoreboard players operation @s swPool_var02 /= @s swPool_posz
execute if entity @s[scores={swPool_var02=..-1}] run scoreboard players operation @s swPool_var02 *= @s swPool_var03
execute if score @s swPool_var02 >= TABLE swPool_var02 run tag @s add swPool_x
execute if score @s swPool_var02 < TABLE swPool_var02 run tag @s add swPool_z

#execute if entity @s[tag=swPool_x] run say x
#execute if entity @s[tag=swPool_z] run say z

#run interaction function
execute if entity @s[tag=swPool_x] run function pool:classes/cushion/bounce
execute if entity @s[tag=swPool_z] run function pool:classes/cushion/bounce