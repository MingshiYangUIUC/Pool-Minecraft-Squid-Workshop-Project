#say fakeedge

# col2 has infinite mass!!!
# just reflect col1

############debug message
#execute as @e[limit=1,tag=swPool_,scores={swPool_v=100000000..}] run tellraw @a [{"text":"name. "},{"text":"vrx, "},{"score":{"objective":"swPool_vrx","name":"@s"}},{"text":"vrz, "},{"score":{"objective":"swPool_vrz","name":"@s"}},{"text":"v, "},{"score":{"objective":"swPool_v","name":"@s"}}]
############



#set uuuuuuuuuuuuup
tag @s add swPool_colliding

#NO need to set information of first hit ball to swPool_player

#if uk8ball or cn8ball or 9 ball: count as hitting cushion
tag @e[tag=swPool_pooltable,tag=swPool_uk8ballmode,limit=1] add swPool_hitrail
execute if score @e[tag=swPool_hitcue,limit=1] swPool_firsthit matches 1.. run tag @e[tag=swPool_pooltable,tag=swPool_cn8ballmode,limit=1] add swPool_hitrail
execute if score @e[tag=swPool_hitcue,limit=1] swPool_firsthit matches 1.. run tag @e[tag=swPool_pooltable,tag=swPool_9ballmode,limit=1] add swPool_hitrail

#record parameters
tag 000c2be1-0006-a619-0000-000000000004 add swPool_t1
execute at @s run tp 000c2be1-0006-a619-0000-000000000004 ~ ~ ~
tag 000c2be1-0006-a619-0000-000000000005 add swPool_t2
execute at @e[tag=swPool_col2,limit=1] run tp 000c2be1-0006-a619-0000-000000000005 ~ ~ ~
tag 000c2be1-0006-a619-0000-000000000006 add swPool_facerc
execute at @s run tp 000c2be1-0006-a619-0000-000000000006 ~ ~ ~



scoreboard players operation @s swPool_vrx = COL swPool_vrx
scoreboard players operation @s swPool_vrz = COL swPool_vrz

scoreboard players operation 000c2be1-0006-a619-0000-000000000004 swPool_vx = @s swPool_vrx
scoreboard players operation 000c2be1-0006-a619-0000-000000000004 swPool_vz = @s swPool_vrz
execute as 000c2be1-0006-a619-0000-000000000004 at @s run function pool:classes/physics/vcombine_ultimate



#get angle (can be positive or negative) which is swPool_drot score of t1

execute as 000c2be1-0006-a619-0000-000000000006 at @s run tp @s ~ ~ ~ facing entity 000c2be1-0006-a619-0000-000000000005
execute as 000c2be1-0006-a619-0000-000000000004 run scoreboard players operation @s swPool_drot = @s swPool_Rotation
execute as 000c2be1-0006-a619-0000-000000000006 store result score @s swPool_rot run data get entity @s Rotation[0] 10000

#tellraw @a [{"text":"name. "},{"text":"rot old, "},{"score":{"objective":"swPool_rot","name":"000c2be1-0006-a619-0000-000000000004"}}]

execute if score 000c2be1-0006-a619-0000-000000000004 swPool_rot matches 3600001.. run scoreboard players remove 000c2be1-0006-a619-0000-000000000004 swPool_rot 3600000
execute if score 000c2be1-0006-a619-0000-000000000004 swPool_rot matches ..-1 run scoreboard players add 000c2be1-0006-a619-0000-000000000004 swPool_rot 3600000

scoreboard players set newrot swPool_rot -1800000
scoreboard players operation newrot swPool_rot -= 000c2be1-0006-a619-0000-000000000004 swPool_drot
scoreboard players operation newrot swPool_rot += 000c2be1-0006-a619-0000-000000000006 swPool_rot
scoreboard players operation newrot swPool_rot += 000c2be1-0006-a619-0000-000000000006 swPool_rot

execute if score newrot swPool_rot matches 3600001.. run scoreboard players remove newrot swPool_rot 3600000
execute if score newrot swPool_rot matches 3600001.. run scoreboard players remove newrot swPool_rot 3600000
execute if score newrot swPool_rot matches 3600001.. run scoreboard players remove newrot swPool_rot 3600000

execute if score newrot swPool_rot matches ..-1 run scoreboard players add newrot swPool_rot 3600000
execute if score newrot swPool_rot matches ..-1 run scoreboard players add newrot swPool_rot 3600000
execute if score newrot swPool_rot matches ..-1 run scoreboard players add newrot swPool_rot 3600000

#scoreboard players set t1rot swPool_rot 1800000
#scoreboard players operation t1rot swPool_rot += 000c2be1-0006-a619-0000-000000000004 swPool_drot
#execute if score t1rot swPool_rot matches 3600001.. run scoreboard players remove t1rot swPool_rot 3600000

#tellraw @a [{"text":"name. "},{"text":"rot1, "},{"score":{"objective":"swPool_drot","name":"000c2be1-0006-a619-0000-000000000004"}}]

#scoreboard players operation 000c2be1-0006-a619-0000-000000000004 swPool_drot -= 000c2be1-0006-a619-0000-000000000006 swPool_rot

#swPool_v of t2 is vi*cos(dr) and direction is along the line between the two
#Now all is 0

#rotate facerc back by 90 so that it faces towards final direction of t1, and swPool_v of t1 is vi*sin(dr)
#new direction is -1* rotation of t1 + 2*drot, and v is unchanged

#scoreboard players operation t1rot swPool_rot -= 000c2be1-0006-a619-0000-000000000004 swPool_drot
#scoreboard players operation t1rot swPool_rot -= 000c2be1-0006-a619-0000-000000000004 swPool_drot

#tellraw @a [{"text":"name. "},{"text":"rot2, "},{"score":{"objective":"swPool_rot","name":"t1rot"}}]


#execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get t1rot swPool_rot
#scoreboard players operation @s swPool_Rotation = t1rot swPool_rot

#tellraw @a [{"text":"name. "},{"text":"rot new, "},{"score":{"objective":"swPool_rot","name":"newrot"}}]
scoreboard players operation @s swPool_Rotation = newrot swPool_rot

#merge stuff back to c1, c2
scoreboard players operation @s swPool_v = 000c2be1-0006-a619-0000-000000000004 swPool_v

# restitution
scoreboard players operation @s swPool_v /= #C_10000 swMath_C
scoreboard players operation @s swPool_v *= C_rei swPool_C

#reset t1,t2,facerc
tag 000c2be1-0006-a619-0000-000000000004 remove swPool_t1
tag 000c2be1-0006-a619-0000-000000000005 remove swPool_t2
tag 000c2be1-0006-a619-0000-000000000006 remove swPool_facerc
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


execute unless score #muteall swPool_C matches 1 run playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1
execute unless score #muteall swPool_C matches 1 run playsound minecraft:entity.arrow.hit_player ambient @a[tag=swPool_beep] ~ ~ ~ 1 1 1

scoreboard players set @s swPool_T 0
execute at @s run function pool:classes/spin/change_of_state



