#get new position in next tick and compare with distance from center, size means geometry -0.125m
#after any collision
#prerequisite: swPool_v>0
#tag is given a1

#get old distance in components
#pooltable dimensions and position is stored in variable TABLE
execute as @s store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @s store result score @s swPool_posz run data get entity @s Pos[2] 10000
#execute as @e[tag=swPool_pooltable] store result score @s swPool_posx run data get entity @s Pos[0] 10000
#execute as @e[tag=swPool_pooltable] store result score @s swPool_posz run data get entity @s Pos[2] 10000

#store old swPool_posx,z
scoreboard players operation POSX swPool_posx = @s swPool_posx
scoreboard players operation POSZ swPool_posz = @s swPool_posz

scoreboard players operation @s swPool_posx -= TABLE swPool_posx
scoreboard players operation @s swPool_posz -= TABLE swPool_posz

#add velocity for new distance in components
execute at @s run function pool:classes/physics/vseparate
#scoreboard players set @s swPool_var04 10000
scoreboard players operation @s swPool_var00 = @s swPool_vx
scoreboard players operation @s swPool_var00 /= C_10000 swPool_C
scoreboard players operation @s swPool_posx += @s swPool_var00
scoreboard players operation @s swPool_var01 = @s swPool_vz
scoreboard players operation @s swPool_var01 /= C_10000 swPool_C
scoreboard players operation @s swPool_posz += @s swPool_var01

#test
#scoreboard players set @s swPool_var03 -1
scoreboard players operation @s swPool_sizex = @s swPool_posx
scoreboard players operation @s swPool_sizez = @s swPool_posz
execute if score @s swPool_sizex > TABLE swPool_sizex run tag @s add swPool_cush
execute if score @s swPool_sizez > TABLE swPool_sizez run tag @s add swPool_cush
scoreboard players operation @s swPool_sizex *= C_-1 swPool_C
scoreboard players operation @s swPool_sizez *= C_-1 swPool_C
execute if score @s swPool_sizex > TABLE swPool_sizex run tag @s add swPool_cush
execute if score @s swPool_sizez > TABLE swPool_sizez run tag @s add swPool_cush

#compare and then bounce
#	(NOT APPLICABLE) but squeeze in pocketing RIGHT HERE LATER, before touching any cushions
#execute if entity @s[tag=swPool_cush] unless entity @s[tag=swPool_pktx,tag=swPool_pktz] run function pool:classes/cushion/compare


#pocketing
#get new distance in components
execute if score TABLE swPool_sizex >= TABLE swPool_sizez run tag @s[tag=swPool_cush] add swPool_x3
execute if score TABLE swPool_sizex < TABLE swPool_sizez run tag @s[tag=swPool_cush] add swPool_z3

execute as @s[tag=swPool_cush] store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute as @s[tag=swPool_cush] store result score @s swPool_posz run data get entity @s Pos[2] 10000
#execute if entity @s[tag=swPool_cush] as @e[tag=swPool_pooltable] store result score @s swPool_posx run data get entity @s Pos[0] 10000
#execute if entity @s[tag=swPool_cush] as @e[tag=swPool_pooltable] store result score @s swPool_posz run data get entity @s Pos[2] 10000

scoreboard players operation @s[tag=swPool_cush] swPool_posx -= TABLE swPool_posx
scoreboard players operation @s[tag=swPool_cush] swPool_posz -= TABLE swPool_posz
tag @s[tag=swPool_x3,scores={swPool_posx=-1250..1250}] add swPool_pktm
tag @s[tag=swPool_z3,scores={swPool_posz=-1250..1250}] add swPool_pktm

#execute if entity @s[tag=swPool_x3] run tellraw @a [{"text":"swPool_posx is "},{"score":{"objective":"swPool_posx","name":"@s"}}]
#execute if entity @s[tag=swPool_z3] run tellraw @a [{"text":"swPool_posz is "},{"score":{"objective":"swPool_posz","name":"@s"}}]

#execute if entity @s[tag=swPool_x3] run say x3
#execute if entity @s[tag=swPool_z3] run say z3
#execute if entity @s[tag=swPool_pktm] run say pktm

scoreboard players operation @s[tag=swPool_cush] swPool_var00 = @s swPool_posx
scoreboard players operation @s[tag=swPool_cush] swPool_var01 = @s swPool_posz
#scoreboard players set @s swPool_var02 -1
scoreboard players operation @s[tag=swPool_cush,scores={swPool_var00=..-1}] swPool_var00 *= C_-1 swPool_C
scoreboard players operation @s[tag=swPool_cush,scores={swPool_var01=..-1}] swPool_var01 *= C_-1 swPool_C

scoreboard players operation @s[tag=swPool_cush] swPool_var00 -= TABLE swPool_sizex
scoreboard players operation @s[tag=swPool_cush] swPool_var01 -= TABLE swPool_sizez


tag @s[tag=swPool_cush,scores={swPool_var00=-1250..1250}] add swPool_pktx
tag @s[tag=swPool_cush,scores={swPool_var01=-1250..1250}] add swPool_pktz

#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"variable 00 is "},{"score":{"objective":"swPool_var00","name":"@s"}}]
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"variable 01 is "},{"score":{"objective":"swPool_var01","name":"@s"}}]

#run pocketing function after standard move
tag @s[tag=swPool_pktx,tag=swPool_pktz] remove swPool_colliding


#compare and then bounce
#	(NOT APPLICABLE) but squeeze in pocketing RIGHT HERE LATER, before touching any cushions
execute if entity @s[tag=swPool_cush] unless entity @s[tag=swPool_pktx,tag=swPool_pktz] run function pool:classes/cushion/compare


tag @s remove swPool_cush
tag @s remove swPool_x
tag @s remove swPool_z
tag @s remove swPool_x3
tag @s remove swPool_z3
