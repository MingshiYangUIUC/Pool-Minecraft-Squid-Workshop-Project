#get new position in next tick and compare with distance from center, size means geometry -0.125m
#after any collision
#prerequisite: swPool_v>0
#tag is given a1

#get old distance in components
#pooltable dimensions and position is stored in variable TABLE
#execute store result score @s swPool_posx run data get entity @s Pos[0] 10000
#execute store result score @s swPool_posz run data get entity @s Pos[2] 10000
scoreboard players operation @s swPool_posx = @s swPool_tmpposx
scoreboard players operation @s swPool_posz = @s swPool_tmpposz

#store old swPool_posx,z
scoreboard players operation POSX swPool_posx = @s swPool_posx
scoreboard players operation POSZ swPool_posz = @s swPool_posz

scoreboard players operation @s swPool_posx -= TABLE swPool_posx
scoreboard players operation @s swPool_posz -= TABLE swPool_posz

#add velocity for new distance in components
execute at @s run function pool:classes/physics/vseparate
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



#pocketing criteria
#get new distance in components
execute if score TABLE swPool_sizex >= TABLE swPool_sizez run tag @s[tag=swPool_cush] add swPool_x3
execute if score TABLE swPool_sizex < TABLE swPool_sizez run tag @s[tag=swPool_cush] add swPool_z3

#execute as @s[tag=swPool_cush] store result score @s swPool_posx run data get entity @s Pos[0] 10000
#execute as @s[tag=swPool_cush] store result score @s swPool_posz run data get entity @s Pos[2] 10000

scoreboard players operation @s[tag=swPool_cush] swPool_posx = POSX swPool_posx
scoreboard players operation @s[tag=swPool_cush] swPool_posz = POSZ swPool_posz

# NO add velocity here but store pos and velocity
scoreboard players operation bounce_adjust swPool_vx = @s swPool_vx
scoreboard players operation bounce_adjust swPool_vz = @s swPool_vz

scoreboard players operation @s swPool_var00 = @s swPool_vx
scoreboard players operation @s swPool_var00 /= C_10000 swPool_C
#scoreboard players operation @s swPool_posx += @s swPool_var00
scoreboard players operation @s swPool_var01 = @s swPool_vz
scoreboard players operation @s swPool_var01 /= C_10000 swPool_C
#scoreboard players operation @s swPool_posz += @s swPool_var01

scoreboard players operation @s[tag=swPool_cush] swPool_posx -= TABLE swPool_posx
scoreboard players operation @s[tag=swPool_cush] swPool_posz -= TABLE swPool_posz

#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"Out V x is "},{"score":{"objective":"swPool_vx","name":"bounce_adjust"}}]
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"Out V z is "},{"score":{"objective":"swPool_vz","name":"bounce_adjust"}}]

#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"Out Side edge x is "},{"score":{"objective":"swPool_posx","name":"@s"}}]
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"Out Side edge z is "},{"score":{"objective":"swPool_posz","name":"@s"}}]

# inside 4900, use fake side edge
tag @s[tag=swPool_x3,scores={swPool_posx=-4900..4900}] add swPool_pktm
tag @s[tag=swPool_z3,scores={swPool_posz=-4900..4900}] add swPool_pktm

scoreboard players operation @s[tag=swPool_cush] swPool_var00 = @s swPool_posx
scoreboard players operation @s[tag=swPool_cush] swPool_var01 = @s swPool_posz

scoreboard players operation @s[tag=swPool_cush,scores={swPool_var00=..-1}] swPool_var00 *= C_-1 swPool_C
scoreboard players operation @s[tag=swPool_cush,scores={swPool_var01=..-1}] swPool_var01 *= C_-1 swPool_C

scoreboard players operation @s[tag=swPool_cush] swPool_var00 -= TABLE swPool_sizex
scoreboard players operation @s[tag=swPool_cush] swPool_var01 -= TABLE swPool_sizez

#3150=4400-1250, use fake corner edge

#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"corner edge v0 is "},{"score":{"objective":"swPool_var00","name":"@s"}}]
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"corner edge v1 is "},{"score":{"objective":"swPool_var01","name":"@s"}}]

tag @s[tag=swPool_cush,scores={swPool_var00=-3150..}] add swPool_pktx
tag @s[tag=swPool_cush,scores={swPool_var01=-3150..}] add swPool_pktz

# above is for saving bounce computing time


#add nobounce tag and detect edge/cntr fake balls, similar to the old pocketing tag

tag @s remove swPool_nobounce
tag @s[tag=swPool_pktx,tag=swPool_pktz] add swPool_nobounce
tag @s[tag=swPool_pktm] add swPool_nobounce


#execute if entity @s[tag=swPool_cush,tag=swPool_nobounce] run tellraw @a [{"text":"variable swPool_v0 is "},{"score":{"objective":"swPool_var00","name":"@s"}}]
#execute if entity @s[tag=swPool_cush,tag=swPool_nobounce] run tellraw @a [{"text":"variable swPool_v1 is "},{"score":{"objective":"swPool_var01","name":"@s"}}]

#old pocketing rule: (pktx && pktz) || pktm




#run pocketing function after standard move
#tag @s[tag=swPool_pktx,tag=swPool_pktz] remove swPool_colliding


#compare and then bounce
#	(NOT APPLICABLE) but squeeze in pocketing RIGHT HERE LATER, before touching any cushions
#modified by nobounce
execute if entity @s[tag=swPool_cush,tag=!swPool_nobounce] run function pool:classes/cushion/compare


#tag @s remove swPool_cush
#tag @s remove swPool_x
#tag @s remove swPool_z
#tag @s remove swPool_x3
#tag @s remove swPool_z3
