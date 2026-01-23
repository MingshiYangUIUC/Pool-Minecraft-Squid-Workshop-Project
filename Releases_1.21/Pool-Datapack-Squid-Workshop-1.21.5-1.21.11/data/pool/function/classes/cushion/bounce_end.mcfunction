scoreboard players operation @s swPool_v = @s swPool_var02

scoreboard players operation @s swPool_var02 = @s swPool_v
scoreboard players operation @s swPool_v /= C_10000 swPool_C
scoreboard players operation @s swPool_v *= @s swPool_var04
scoreboard players operation @s[scores={swPool_v=..-1}] swPool_v *= C_-1 swPool_C
#tellraw @a [{"text":"variable swPool_v is "},{"score":{"objective":"swPool_v","name":"@s"}}]



#scoreboard players operation @s swPool_var04 = MinTime swPool_hittime

#scoreboard players operation @s swPool_v = @s swPool_var02
execute at @s run function pool:classes/cushion/new_join

scoreboard players operation @s swPool_v = @s swPool_var02


tag @s add swPool_colliding
playsound minecraft:block.wood.break ambient @a ~ ~ ~ 1 1

#change of velocity and spin due to friction, if there is spin in y axis

#tellraw @a [{"text":"ve, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vey","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vez","name":"@s"}}]
#tellraw @a [{"text":"v, "},{"score":{"objective":"swPool_vx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vy","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vz","name":"@s"}}]

#add wy's threashold later...
execute at @s run function pool:classes/cushion/friction

scoreboard players set @s swPool_T 0
execute at @s[scores={swPool_T=0}] run function pool:classes/spin/change_of_state