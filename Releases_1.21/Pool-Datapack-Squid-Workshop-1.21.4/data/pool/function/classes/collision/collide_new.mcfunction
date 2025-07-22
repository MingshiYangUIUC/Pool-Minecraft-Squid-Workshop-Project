# use the two velocities, calculate the velocity after the collision
#swPool_vx and swPool_vz is conserved for the calculation while the magnitude is set to zero previously
#tags for the two objects are c1 and c2
#tags for the two intermediate objects are t1 and t2
#summon two new object for stationary frame calculation using swPool_vr only, and calculate resulting velocities
#add back the initial velocity of c2, which is stored as component in swPool_vx, swPool_vz of c2

############debug message
#execute as @e[limit=1,tag=swPool_,scores={swPool_v=100000000..}] run tellraw @a [{"text":"name. "},{"text":"vrx, "},{"score":{"objective":"swPool_vrx","name":"@s"}},{"text":"vrz, "},{"score":{"objective":"swPool_vrz","name":"@s"}},{"text":"v, "},{"score":{"objective":"swPool_v","name":"@s"}}]
############



#set uuuuuuuuuuuuup
tag @s add swPool_colliding

#set information of first hit ball to swPool_player
tag @s add swPool_c
tag @e[tag=swPool_col2] add swPool_c
execute if entity @e[tag=swPool_snookermode,limit=1] unless entity @a[tag=swPool_hitcue,scores={swPool_firsthit=1..7}] if entity @e[tag=swPool_c,tag=swPool_cue,limit=1] run function pool:classes/collision/snooker_hitball
execute if entity @e[tag=swPool_uk8ballmode,limit=1] unless entity @a[tag=swPool_hitcue,scores={swPool_firsthit=1..7}] if entity @e[tag=swPool_c,tag=swPool_cue,limit=1] run function pool:classes/collision/uk8ball_hitball
execute if entity @e[tag=swPool_cn8ballmode,limit=1] unless entity @a[tag=swPool_hitcue,scores={swPool_firsthit=1..8}] if entity @e[tag=swPool_c,tag=swPool_cue,limit=1] run function pool:classes/collision/cn8ball_hitball
tag @e[tag=swPool_c] remove swPool_c


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
scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_drot -= @e[tag=swPool_facerc,limit=1] swPool_rot

#swPool_v of t2 is vi*cos(dr) and direction is along the line between the two
#scoreboard players set @s swPool_var04 10000
scoreboard players operation @s swPool_var00 = @e[tag=swPool_t1] swPool_drot
execute at @s run function pool:classes/math/cosdeg
scoreboard players operation @e[tag=swPool_t2,limit=1] swPool_v = @e[tag=swPool_t1,limit=1] swPool_v
scoreboard players operation @e[tag=swPool_t2,limit=1] swPool_v /= C_10000 swPool_C
scoreboard players operation @e[tag=swPool_t2,limit=1] swPool_v *= @s swPool_var00
data modify entity @e[tag=swPool_t2,limit=1] Rotation set from entity @e[tag=swPool_facerc,limit=1] Rotation


#rotate facerc back by 90 so that it faces towards final direction of t1, and swPool_v of t1 is vi*sin(dr)
execute if entity @e[tag=swPool_t1,limit=1,scores={swPool_drot=..0}] as @e[tag=swPool_facerc,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
execute if entity @e[tag=swPool_t1,limit=1,scores={swPool_drot=1..}] as @e[tag=swPool_facerc,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
scoreboard players operation @s swPool_var00 = @e[tag=swPool_t1,limit=1] swPool_drot
execute at @s run function pool:classes/math/sindeg
scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_v = @e[tag=swPool_t1,limit=1] swPool_v
scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_v /= C_10000 swPool_C
scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_v *= @s swPool_var00
data modify entity @e[tag=swPool_t1,limit=1] Rotation set from entity @e[tag=swPool_facerc,limit=1] Rotation

execute store result score @e[tag=swPool_t1,limit=1] swPool_Rotation run data get entity @e[tag=swPool_t1,limit=1] Rotation[0] 10000
execute store result score @e[tag=swPool_t2,limit=1] swPool_Rotation run data get entity @e[tag=swPool_t2,limit=1] Rotation[0] 10000


#separate the x,z component, add back the x,z component of c2, then combine back
execute as @e[tag=swPool_t1,limit=1] at @s run function pool:classes/physics/vseparate
execute as @e[tag=swPool_t2,limit=1] at @s run function pool:classes/physics/vseparate
scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_vx += @e[tag=swPool_col2,limit=1] swPool_vx
scoreboard players operation @e[tag=swPool_t1,limit=1] swPool_vz += @e[tag=swPool_col2,limit=1] swPool_vz
scoreboard players operation @e[tag=swPool_t2,limit=1] swPool_vx += @e[tag=swPool_col2,limit=1] swPool_vx
scoreboard players operation @e[tag=swPool_t2,limit=1] swPool_vz += @e[tag=swPool_col2,limit=1] swPool_vz
execute as @e[tag=swPool_t1,limit=1] at @s run function pool:classes/physics/vcombine_ultimate
execute as @e[tag=swPool_t2,limit=1] at @s run function pool:classes/physics/vcombine_ultimate

#merge stuff back to c1, c2
scoreboard players operation @e[tag=swPool_col1,limit=1] swPool_v = @e[tag=swPool_t1,limit=1] swPool_v
scoreboard players operation @e[tag=swPool_col2,limit=1] swPool_v = @e[tag=swPool_t2,limit=1] swPool_v

scoreboard players operation @e[tag=swPool_col1,limit=1] swPool_Rotation = @e[tag=swPool_t1,limit=1] swPool_Rotation
scoreboard players operation @e[tag=swPool_col2,limit=1] swPool_Rotation = @e[tag=swPool_t2,limit=1] swPool_Rotation

#execute store result entity @e[tag=swPool_col1,limit=1] Rotation[0] float 0.0001 run scoreboard players get @e[tag=swPool_t1,limit=1] swPool_Rotation
#execute store result entity @e[tag=swPool_col2,limit=1] Rotation[0] float 0.0001 run scoreboard players get @e[tag=swPool_t2,limit=1] swPool_Rotation

# record sound
scoreboard players operation pitch swMath_V = @e[tag=swPool_t2,limit=1] swPool_v

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



#playsound minecraft:block.note_block.iron_xylophone ambient @a ~ ~ ~ 1 0

#playsound minecraft:block.stone.break ambient @a ~ ~ ~ 0.5 1



execute if score pitch swMath_V matches 0..1071978 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.1 0.707
execute if score pitch swMath_V matches 1071979..2247381 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.138 0.727717
execute if score pitch swMath_V matches 2247382..3536184 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.175 0.74904
execute if score pitch swMath_V matches 3536185..4949329 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.212 0.770989
execute if score pitch swMath_V matches 4949330..6498812 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.25 0.793581
execute if score pitch swMath_V matches 6498813..8197785 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.288 0.816834
execute if score pitch swMath_V matches 8197786..10060673 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.325 0.840769
execute if score pitch swMath_V matches 10060674..12103289 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.363 0.865406
execute if score pitch swMath_V matches 12103290..14342972 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.4 0.890764
execute if score pitch swMath_V matches 14342973..16798737 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.438 0.916866
execute if score pitch swMath_V matches 16798738..19491429 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.475 0.943732
execute if score pitch swMath_V matches 19491430..22443907 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.512 0.971385
execute if score pitch swMath_V matches 22443908..25681234 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.55 0.999849
execute if score pitch swMath_V matches 25681235..29230893 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.588 1.029147
execute if score pitch swMath_V matches 29230894..33123017 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.625 1.059303
execute if score pitch swMath_V matches 33123018..37390647 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.662 1.090343
execute if score pitch swMath_V matches 37390648..42070009 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.7 1.122293
execute if score pitch swMath_V matches 42070010..47200827 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.737 1.155178
execute if score pitch swMath_V matches 47200828..52826658 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.775 1.189028
execute if score pitch swMath_V matches 52826659..58995259 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.812 1.223869
execute if score pitch swMath_V matches 58995260..65758995 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.85 1.259731
execute if score pitch swMath_V matches 65758996..73175285 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.888 1.296644
execute if score pitch swMath_V matches 73175286..81307084 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.925 1.334638
execute if score pitch swMath_V matches 81307085..90223425 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.962 1.373746
execute if score pitch swMath_V matches 90223426.. run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 1.0 1.373746

execute if score pitch swMath_V matches 0..1071978 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.1 0.707
execute if score pitch swMath_V matches 1071979..2247381 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.138 0.727717
execute if score pitch swMath_V matches 2247382..3536184 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.175 0.74904
execute if score pitch swMath_V matches 3536185..4949329 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.212 0.770989
execute if score pitch swMath_V matches 4949330..6498812 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.25 0.793581
execute if score pitch swMath_V matches 6498813..8197785 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.288 0.816834
execute if score pitch swMath_V matches 8197786..10060673 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.325 0.840769
execute if score pitch swMath_V matches 10060674..12103289 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.363 0.865406
execute if score pitch swMath_V matches 12103290..14342972 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.4 0.890764
execute if score pitch swMath_V matches 14342973..16798737 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.438 0.916866
execute if score pitch swMath_V matches 16798738..19491429 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.475 0.943732
execute if score pitch swMath_V matches 19491430..22443907 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.512 0.971385
execute if score pitch swMath_V matches 22443908..25681234 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.55 0.999849
execute if score pitch swMath_V matches 25681235..29230893 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.588 1.029147
execute if score pitch swMath_V matches 29230894..33123017 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.625 1.059303
execute if score pitch swMath_V matches 33123018..37390647 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.662 1.090343
execute if score pitch swMath_V matches 37390648..42070009 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.7 1.122293
execute if score pitch swMath_V matches 42070010..47200827 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.737 1.155178
execute if score pitch swMath_V matches 47200828..52826658 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.775 1.189028
execute if score pitch swMath_V matches 52826659..58995259 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.812 1.223869
execute if score pitch swMath_V matches 58995260..65758995 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.85 1.259731
execute if score pitch swMath_V matches 65758996..73175285 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.888 1.296644
execute if score pitch swMath_V matches 73175286..81307084 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.925 1.334638
execute if score pitch swMath_V matches 81307085..90223425 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.962 1.373746
execute if score pitch swMath_V matches 90223426.. run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 1.0 1.373746

execute if score pitch swMath_V matches 0..1071978 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.1 0.707
execute if score pitch swMath_V matches 1071979..2247381 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.138 0.727717
execute if score pitch swMath_V matches 2247382..3536184 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.175 0.74904
execute if score pitch swMath_V matches 3536185..4949329 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.212 0.770989
execute if score pitch swMath_V matches 4949330..6498812 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.25 0.793581
execute if score pitch swMath_V matches 6498813..8197785 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.288 0.816834
execute if score pitch swMath_V matches 8197786..10060673 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.325 0.840769
execute if score pitch swMath_V matches 10060674..12103289 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.363 0.865406
execute if score pitch swMath_V matches 12103290..14342972 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.4 0.890764
execute if score pitch swMath_V matches 14342973..16798737 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.438 0.916866
execute if score pitch swMath_V matches 16798738..19491429 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.475 0.943732
execute if score pitch swMath_V matches 19491430..22443907 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.512 0.971385
execute if score pitch swMath_V matches 22443908..25681234 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.55 0.999849
execute if score pitch swMath_V matches 25681235..29230893 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.588 1.029147
execute if score pitch swMath_V matches 29230894..33123017 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.625 1.059303
execute if score pitch swMath_V matches 33123018..37390647 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.662 1.090343
execute if score pitch swMath_V matches 37390648..42070009 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.7 1.122293
execute if score pitch swMath_V matches 42070010..47200827 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.737 1.155178
execute if score pitch swMath_V matches 47200828..52826658 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.775 1.189028
execute if score pitch swMath_V matches 52826659..58995259 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.812 1.223869
execute if score pitch swMath_V matches 58995260..65758995 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.85 1.259731
execute if score pitch swMath_V matches 65758996..73175285 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.888 1.296644
execute if score pitch swMath_V matches 73175286..81307084 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.925 1.334638
execute if score pitch swMath_V matches 81307085..90223425 run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 0.962 1.373746
execute if score pitch swMath_V matches 90223426.. run playsound swpool:custom.pool.hit ambient @a ~ ~ ~ 1.0 1.373746

scoreboard players set @e[tag=swPool_col2,limit=1] swPool_T 0
scoreboard players set @s swPool_T 0
execute at @e[tag=swPool_col2,limit=1] run function pool:classes/spin/change_of_state
execute at @s run function pool:classes/spin/change_of_state