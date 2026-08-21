#get new position in next tick and compare with distance from center, size means geometry -0.125m
#after any collision
#prerequisite: swPool_v>0
#tag is given a1

execute unless score #muteall swPool_C matches 1 run function pool:classes/cushion/detect_out_of_table

#get old distance in components
#pooltable dimensions and position is stored in variable TABLE

scoreboard players operation @s swPool_posx = @s swPool_tmpposx
scoreboard players operation @s swPool_posz = @s swPool_tmpposz

#store old swPool_posx,z
scoreboard players operation POSX swPool_posx = @s swPool_posx
scoreboard players operation POSZ swPool_posz = @s swPool_posz

scoreboard players operation @s swPool_posx -= TABLE swPool_posx
scoreboard players operation @s swPool_posz -= TABLE swPool_posz

#add velocity for new distance in components
#execute at @s run function pool:classes/physics/vseparate
scoreboard players operation @s swPool_var00 = @s swPool_vex
scoreboard players operation @s swPool_var00 /= C_20 swPool_C
scoreboard players operation @s swPool_posx += @s swPool_var00
scoreboard players operation @s swPool_var01 = @s swPool_vez
scoreboard players operation @s swPool_var01 /= C_20 swPool_C
scoreboard players operation @s swPool_posz += @s swPool_var01

#test
#scoreboard players set @s swPool_var03 -1
scoreboard players operation @s swPool_sizex = @s swPool_posx
scoreboard players operation @s swPool_sizez = @s swPool_posz
execute if score @s swPool_sizex matches ..-1 run scoreboard players operation @s swPool_sizex *= C_-1 swPool_C
execute if score @s swPool_sizez matches ..-1 run scoreboard players operation @s swPool_sizez *= C_-1 swPool_C
execute if score @s swPool_sizex > TABLE swPool_sizex run tag @s add swPool_cush
execute if score @s swPool_sizez > TABLE swPool_sizez run tag @s add swPool_cush
#scoreboard players operation @s swPool_sizex *= C_-1 swPool_C
#scoreboard players operation @s swPool_sizez *= C_-1 swPool_C
#execute if score @s swPool_sizex > TABLE swPool_sizex run tag @s add swPool_cush
#execute if score @s swPool_sizez > TABLE swPool_sizez run tag @s add swPool_cush

execute if entity @s[tag=swPool_cush] run function pool:classes/cushion/main_cush
