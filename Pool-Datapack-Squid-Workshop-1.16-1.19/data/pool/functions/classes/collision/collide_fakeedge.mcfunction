#say fakeedge

# col2 has infinite mass!!!
# just reflect col1

############debug message
#execute as @e[limit=1,tag=swPool_,scores={swPool_v=100000000..}] run tellraw @a [{"text":"name. "},{"text":"vrx, "},{"score":{"objective":"swPool_vrx","name":"@s"}},{"text":"vrz, "},{"score":{"objective":"swPool_vrz","name":"@s"}},{"text":"v, "},{"score":{"objective":"swPool_v","name":"@s"}}]
############



#set uuuuuuuuuuuuup
tag @s add swPool_colliding

#NO need to set information of first hit ball to swPool_player

#if uk8ball: count as hitting cushion
tag @e[tag=swPool_pooltable,tag=swPool_uk8ballmode,limit=1] add swPool_hitrail


#record parameters
tag @e[tag=swPool_rhp1] add swPool_t1
execute at @s run tp @e[tag=swPool_t1,limit=1] ~ ~ ~
tag @e[tag=swPool_rhp2] add swPool_t2
execute at @e[tag=swPool_col2,limit=1] run tp @e[tag=swPool_t2,limit=1] ~ ~ ~
tag @e[tag=swPool_rhp3] add swPool_facerc
execute at @s run tp @e[tag=swPool_facerc,limit=1] ~ ~ ~



scoreboard players operation @s swPool_vrx = COL swPool_vrx
scoreboard players operation @s swPool_vrz = COL swPool_vrz

scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_vx = @s swPool_vrx
scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_vz = @s swPool_vrz
execute as @e[tag=swPool_t1,limit=1] at @s run function pool:classes/physics/vcombine_ultimate



#get angle (can be positive or negative) which is swPool_drot score of t1

execute as @e[tag=swPool_facerc,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=swPool_t2,limit=1]
execute as @e[tag=swPool_t1,limit=1] run scoreboard players operation @s swPool_drot = @s swPool_Rotation
execute as @e[tag=swPool_facerc,limit=1] store result score @s swPool_rot run data get entity @s Rotation[0] 10000

scoreboard players set t1rot swPool_rot 1800000
scoreboard players operation t1rot swPool_rot += @e[tag=swPool_t1,limit=1] swPool_drot
execute if score t1rot swPool_rot matches 3600001.. run scoreboard players remove t1rot swPool_rot 3600000

#tellraw @a [{"text":"name. "},{"text":"rot1, "},{"score":{"objective":"swPool_drot","name":"@e[tag=swPool_t1,limit=1]"}}]

scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_drot -= @e[tag=swPool_facerc,limit=1] swPool_rot

#swPool_v of t2 is vi*cos(dr) and direction is along the line between the two
#Now all is 0

#rotate facerc back by 90 so that it faces towards final direction of t1, and swPool_v of t1 is vi*sin(dr)
#new direction is -1* rotation of t1 + 2*drot, and v is unchanged

scoreboard players operation t1rot swPool_rot -= @e[tag=swPool_t1,limit=1] swPool_drot
scoreboard players operation t1rot swPool_rot -= @e[tag=swPool_t1,limit=1] swPool_drot

#tellraw @a [{"text":"name. "},{"text":"rot2, "},{"score":{"objective":"swPool_rot","name":"t1rot"}}]


#execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get t1rot swPool_rot
scoreboard players operation @s swPool_Rotation = t1rot swPool_rot

#merge stuff back to c1, c2
scoreboard players operation @s swPool_v = @e[tag=swPool_t1,limit=1] swPool_v


#reset t1,t2,facerc
tag @e[tag=swPool_rhp1] remove swPool_t1
tag @e[tag=swPool_rhp2] remove swPool_t2
tag @e[tag=swPool_rhp3] remove swPool_facerc
#




#reset swPool_hittime, swPool_vr
scoreboard players reset @s swPool_hittime
#scoreboard players reset @e[tag=swPool_col1] swPool_vx
#scoreboard players reset @e[tag=swPool_col1] swPool_vz
#scoreboard players reset @e[tag=swPool_col1] swPool_vrx
#scoreboard players reset @e[tag=swPool_col1] swPool_vrz
#scoreboard players reset @e[tag=swPool_col2] swPool_vx
#scoreboard players reset @e[tag=swPool_col2] swPool_vz
scoreboard players reset COL swPool_vrx
scoreboard players reset COL swPool_vrz


playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1
playsound minecraft:entity.arrow.hit_player ambient @a[tag=swPool_beep] ~ ~ ~ 1 1 1

scoreboard players set @s swPool_T 0
execute at @s run function pool:classes/spin/change_of_state



