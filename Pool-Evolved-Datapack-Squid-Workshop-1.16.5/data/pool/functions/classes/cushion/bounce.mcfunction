#put the object a1 to the cushion, and rotate it

#if uk8ball: count cushion
tag @e[tag=swPool_pooltable,tag=swPool_uk8ballmode,limit=1] add swPool_hitrail

#put back position components
#swPool_var00 is swPool_vx, swPool_var01 is swPool_vz
scoreboard players operation @s swPool_posx -= @s swPool_var00
scoreboard players operation @s swPool_posz -= @s swPool_var01


#calculate ratio of swPool_v needed
scoreboard players set @s swPool_var04 10000
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_var02 = TABLE swPool_sizex
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var02 = TABLE swPool_sizez
execute if entity @s[tag=swPool_x,scores={swPool_posx=..-1}] run scoreboard players operation @s swPool_var02 += @s swPool_posx
execute if entity @s[tag=swPool_z,scores={swPool_posz=..-1}] run scoreboard players operation @s swPool_var02 += @s swPool_posz
execute if entity @s[tag=swPool_x,scores={swPool_posx=1..}] run scoreboard players operation @s swPool_var02 -= @s swPool_posx
execute if entity @s[tag=swPool_z,scores={swPool_posz=1..}] run scoreboard players operation @s swPool_var02 -= @s swPool_posz
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_var02 *= @s swPool_var04
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var02 *= @s swPool_var04
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_var02 /= @s swPool_var00
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var02 /= @s swPool_var01
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_var04 = @s swPool_var02
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var04 = @s swPool_var02
scoreboard players set @s swPool_var03 10000
scoreboard players operation @s swPool_var02 = @s swPool_v
scoreboard players operation @s swPool_v /= @s swPool_var03
scoreboard players operation @s swPool_v *= @s swPool_var04
scoreboard players set @s swPool_var04 -1
scoreboard players operation @s[scores={swPool_v=..-1}] swPool_v *= @s swPool_var04
#tellraw @a [{"text":"variable swPool_v is "},{"score":{"objective":"swPool_v","name":"@s"}}]


execute at @s run function pool:classes/cushion/join
scoreboard players operation @s swPool_v = @s swPool_var02

scoreboard players set @s swPool_var04 -1
scoreboard players set @s swPool_var03 1800000
execute if entity @s[tag=swPool_x] store result score @s swPool_rot run data get entity @s Rotation[0] 10000
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_rot *= @s swPool_var04
execute if entity @s[tag=swPool_x] store result entity @s Rotation[0] float .0001 run scoreboard players get @s swPool_rot
execute if entity @s[tag=swPool_z] store result score @s swPool_rot run data get entity @s Rotation[0] 10000
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var03 -= @s swPool_rot
execute if entity @s[tag=swPool_z] store result entity @s Rotation[0] float .0001 run scoreboard players get @s swPool_var03
tag @s add swPool_colliding
playsound minecraft:block.wood.break ambient @a ~ ~ ~ 1 1

#function pool:classes/motion/drag
#function pool:classes/motion/drag
#function pool:classes/motion/drag
#function pool:classes/motion/drag
#function pool:classes/motion/drag



scoreboard players set @s swPool_T 0
execute at @s[scores={swPool_T=0}] run function pool:classes/spin/change_of_state