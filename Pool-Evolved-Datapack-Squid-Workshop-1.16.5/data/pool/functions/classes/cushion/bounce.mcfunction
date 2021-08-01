#put the object a1 to the cushion, and rotate it

#if uk8ball: count cushion
tag @e[tag=swPool_pooltable,tag=swPool_uk8ballmode,limit=1] add swPool_hitrail

#put back position components
#swPool_var00 is modified swPool_vx, swPool_var01 is modified swPool_vz
scoreboard players operation @s swPool_posx -= @s swPool_var00
scoreboard players operation @s swPool_posz -= @s swPool_var01

#execute if entity @s[tag=swPool_x] run say x

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
#scoreboard players set @s swPool_var03 10000
scoreboard players operation @s swPool_var02 = @s swPool_v
scoreboard players operation @s swPool_v /= C_10000 swPool_C
scoreboard players operation @s swPool_v *= @s swPool_var04

execute if score @s swPool_var04 matches ..-1 run scoreboard players operation @s swPool_var04 *= C_-1 swPool_C

##### var04 is tick*10000
tag @s remove swPool_bounce


execute if score @s swPool_var04 < MinTime swPool_hittime run tag @s add swPool_bounce
execute if score @s swPool_var04 < MinTime swPool_hittime run scoreboard players operation MinTime swPool_hittime = @s swPool_var04
#tellraw @a [{"text":"variable swPool_v4 is "},{"score":{"objective":"swPool_var04","name":"@s"}}]
#tellraw @a [{"text":"variable minTime is "},{"score":{"objective":"swPool_hittime","name":"MinTime"}}]
##### back to normal process


#tellraw @a [{"text":"variable swPool_v is "},{"score":{"objective":"swPool_v","name":"@s"}}]


