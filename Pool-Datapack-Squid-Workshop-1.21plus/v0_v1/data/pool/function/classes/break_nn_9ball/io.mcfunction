# this function simulate a breakshot using a neural network
# call this before the first collision between cueball and the rack, after "join".
# subject is cueball
# say aibreak

# 9 ball: assign firsthit 1 if hitting 1 ball
execute as @e[type=item_display,tag=swPool_pool,distance=0.001..,sort=nearest,limit=1] if entity @s[tag=swPool_01] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 1

tag @e remove swPool_tip

# process input


# get cueball position
execute store result score @s swPool_posx run data get entity @s Pos[0] 10000
execute store result score @s swPool_posz run data get entity @s Pos[2] 10000

# get pitch for playsound
scoreboard players operation pitch swMath_V = @s swPool_v

# get speed multiplier (scale by 1/0.125 because nn takes in speed of cue ball radius)
scoreboard players operation #VEL_mtp swMath_V = @s swPool_v
scoreboard players operation #VEL_mtp swMath_V /= #C_10000 swMath_C
#scoreboard players operation #VEL_mtp swMath_V *= #C_10000 swMath_C
#scoreboard players operation #VEL_mtp swMath_V /= C_r swPool_C

#tellraw @a [{"text":"VEL_mtp, "},{"score":{"objective":"swMath_V","name":"#VEL_mtp"}}]

# get cueball velocity
execute if entity @s[type=player] store result score @s swPool_Rotation run data get entity @s Rotation[0] 10000
execute at @s[scores={swPool_v=1..}] run function pool:classes/physics/vseparate

# scale velocity by MTP, so that v component is normalized
scoreboard players operation @s swPool_vx /= #VEL_mtp swMath_V
scoreboard players operation @s swPool_vz /= #VEL_mtp swMath_V


# determine table direction (long end is H, short end is V)
# #Xdir == 1: x >= z
# #Xdir == 0: x < z
execute if score TABLE swPool_sizex < TABLE swPool_sizez run scoreboard players set #Xdir swMath_V 0
execute unless score TABLE swPool_sizex < TABLE swPool_sizez run scoreboard players set #Xdir swMath_V 1

tellraw @a[tag=swPool_debug] [{"text":"Xdir, "},{"score":{"objective":"swMath_V","name":"#Xdir"}}]

# location
# Xdir=0, z > x: H = -z, V = -x
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #HH swMath_V = @s swPool_posz
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #VV swMath_V = @s swPool_posx
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #HH swMath_V *= #C_-1 swMath_C
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #VV swMath_V *= #C_-1 swMath_C

# Xdir=1, z < x: H = -x, V = +z
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #HH swMath_V = @s swPool_posx
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #VV swMath_V = @s swPool_posz
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #HH swMath_V *= #C_-1 swMath_C

# velocity
# Xdir=0, z > x: H = -z, V = -x
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #VELHH swMath_V = @s swPool_vz
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #VELVV swMath_V = @s swPool_vx
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #VELHH swMath_V *= #C_-1 swMath_C
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #VELVV swMath_V *= #C_-1 swMath_C

# Xdir=1, z < x: H = -x, V = +z
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #VELHH swMath_V = @s swPool_vx
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #VELVV swMath_V = @s swPool_vz
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #VELHH swMath_V *= #C_-1 swMath_C


# obtain coordinate of rack center (H, V) coord (away from table center - positive H)

# get 9 ball coord scaled by 10000
execute store result score #9 swPool_posx run data get entity @e[type=item_display,tag=swPool_pool,tag=swPool_09,limit=1] Pos[0] 10000
execute store result score #9 swPool_posz run data get entity @e[type=item_display,tag=swPool_pool,tag=swPool_09,limit=1] Pos[2] 10000

# Xdir=0: VC = - 9 ball X, HC = - 9 ball Z
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #VC swMath_V = #9 swPool_posx
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #VC swMath_V *= #C_-1 swMath_C
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #HC swMath_V = #9 swPool_posz
execute if score #Xdir swMath_V matches 0 run scoreboard players operation #HC swMath_V *= #C_-1 swMath_C
#execute if score #Xdir swMath_V matches 0 run scoreboard players add #HC swMath_V 1443

# Xdir=1: VC = 9 ball Z, HC = - 9 ball X position
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #VC swMath_V = #9 swPool_posz
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #HC swMath_V = #9 swPool_posx
execute if score #Xdir swMath_V matches 1 run scoreboard players operation #HC swMath_V *= #C_-1 swMath_C
#execute if score #Xdir swMath_V matches 1 run scoreboard players add #HC swMath_V 1443


# get HD and VD as displacement 
scoreboard players operation #HD swMath_V = #HH swMath_V
scoreboard players operation #HD swMath_V -= #HC swMath_V
scoreboard players operation #VD swMath_V = #VV swMath_V
scoreboard players operation #VD swMath_V -= #VC swMath_V

#tellraw @a [{"text":"HH, "},{"score":{"objective":"swMath_V","name":"#HH"}}]
#tellraw @a [{"text":"VV, "},{"score":{"objective":"swMath_V","name":"#VV"}}]
#tellraw @a [{"text":"VELHH, "},{"score":{"objective":"swMath_V","name":"#VELHH"}}]
#tellraw @a [{"text":"VELVV, "},{"score":{"objective":"swMath_V","name":"#VELVV"}}]
#tellraw @a [{"text":"HC, "},{"score":{"objective":"swMath_V","name":"#HC"}}]
#tellraw @a [{"text":"VC, "},{"score":{"objective":"swMath_V","name":"#VC"}}]
#tellraw @a [{"text":"HD, "},{"score":{"objective":"swMath_V","name":"#HD"}}]
#tellraw @a [{"text":"VD, "},{"score":{"objective":"swMath_V","name":"#VD"}}]


# scale position to unit of radius from the center of the rack (radius of ball is 0.125, scale it to R=1)
scoreboard players operation #HD swMath_V *= #C_10000 swMath_C
scoreboard players operation #VD swMath_V *= #C_10000 swMath_C
scoreboard players operation #HD swMath_V /= C_r swPool_C
scoreboard players operation #VD swMath_V /= C_r swPool_C

# for this part, velocity is already equivalent to that "scaled based on R", so pass. 
#scoreboard players operation #VELHH swMath_V *= #C_10000 swMath_C
#scoreboard players operation #VELVV swMath_V *= #C_10000 swMath_C
#scoreboard players operation #VELHH swMath_V /= C_r swPool_C
#scoreboard players operation #VELVV swMath_V /= C_r swPool_C

#tellraw @a [{"text":"scaled HD, "},{"score":{"objective":"swMath_V","name":"#HD"}}]
#tellraw @a [{"text":"scaled VD, "},{"score":{"objective":"swMath_V","name":"#VD"}}]

# determine tip region (default is top left)
#     if #HD < 0: left plane (hflip=1); else: right plane (hflip=-1)
#     if #VD >= 0: top plane (vflip=1), else: bottom plane (vflip=-1)

scoreboard players set #hflip swMath_V 1
scoreboard players set #vflip swMath_V 1

# left right
execute if score #HD swMath_V matches 1.. run scoreboard players set #hflip swMath_V -1
# top down
execute if score #VD swMath_V matches ..-1 run scoreboard players set #vflip swMath_V -1

# flip if needed
scoreboard players operation #HD swMath_V *= #hflip swMath_V
scoreboard players operation #VD swMath_V *= #vflip swMath_V
scoreboard players operation #VELHH swMath_V *= #hflip swMath_V
scoreboard players operation #VELVV swMath_V *= #vflip swMath_V

#tellraw @a [{"text":"flipped HD, "},{"score":{"objective":"swMath_V","name":"#HD"}}]
#tellraw @a [{"text":"flipped VD, "},{"score":{"objective":"swMath_V","name":"#VD"}}]
#tellraw @a [{"text":"flipped VELHH, "},{"score":{"objective":"swMath_V","name":"#VELHH"}}]
#tellraw @a [{"text":"flipped VELVV, "},{"score":{"objective":"swMath_V","name":"#VELVV"}}]


# feed in nn
scoreboard players operation #x0_0 swMath_V = #HD swMath_V
scoreboard players operation #x0_1 swMath_V = #VD swMath_V
scoreboard players operation #x0_2 swMath_V = #VELHH swMath_V
scoreboard players operation #x0_3 swMath_V = #VELVV swMath_V

#tellraw @a [{"text":"input 0, "},{"score":{"objective":"swMath_V","name":"#x0_0"}}]
#tellraw @a [{"text":"input 1, "},{"score":{"objective":"swMath_V","name":"#x0_1"}}]
#tellraw @a [{"text":"input 2, "},{"score":{"objective":"swMath_V","name":"#x0_2"}}]
#tellraw @a [{"text":"input 3, "},{"score":{"objective":"swMath_V","name":"#x0_3"}}]

# run model
execute if score nn_complexity swPool_C matches 1 run function pool:classes/break_nn_9ball/breakmodel-1_12
# skip one layer because model is shallower
execute if score nn_complexity swPool_C matches 1 run function pool:classes/break_nn_9ball/skip_layer

execute if score nn_complexity swPool_C matches 2 run function pool:classes/break_nn_9ball/breakmodel-2_12

execute if score nn_complexity swPool_C matches 3 run function pool:classes/break_nn_9ball/breakmodel_2_16

execute if score nn_complexity swPool_C matches 4 run function pool:classes/break_nn_9ball/breakmodel-2_24


# loop from x3_0 to x3_19
# undo horizontal and vertical flip if needed
# if vertical flip: upper ball is lower ball
#tellraw @a [{"text":"cue "},{"score":{"objective":"swMath_V","name":"#x3_0"}},{"text":", 1 "},{"score":{"objective":"swMath_V","name":"#x3_1"}}]

scoreboard players operation #cuevoH swMath_V = #x3_0 swMath_V
scoreboard players operation #cuevoH swMath_V *= #hflip swMath_V
scoreboard players operation #cuevoV swMath_V = #x3_1 swMath_V
scoreboard players operation #cuevoV swMath_V *= #vflip swMath_V

scoreboard players operation #1voH swMath_V = #x3_2 swMath_V
scoreboard players operation #1voH swMath_V *= #hflip swMath_V
scoreboard players operation #1voV swMath_V = #x3_3 swMath_V
scoreboard players operation #1voV swMath_V *= #vflip swMath_V

scoreboard players operation #2voH swMath_V = #x3_4 swMath_V
scoreboard players operation #2voH swMath_V *= #hflip swMath_V
scoreboard players operation #2voV swMath_V = #x3_5 swMath_V
scoreboard players operation #2voV swMath_V *= #vflip swMath_V

scoreboard players operation #3voH swMath_V = #x3_6 swMath_V
scoreboard players operation #3voH swMath_V *= #hflip swMath_V
scoreboard players operation #3voV swMath_V = #x3_7 swMath_V
scoreboard players operation #3voV swMath_V *= #vflip swMath_V

scoreboard players operation #4voH swMath_V = #x3_8 swMath_V
scoreboard players operation #4voH swMath_V *= #hflip swMath_V
scoreboard players operation #4voV swMath_V = #x3_9 swMath_V
scoreboard players operation #4voV swMath_V *= #vflip swMath_V

scoreboard players operation #5voH swMath_V = #x3_10 swMath_V
scoreboard players operation #5voH swMath_V *= #hflip swMath_V
scoreboard players operation #5voV swMath_V = #x3_11 swMath_V
scoreboard players operation #5voV swMath_V *= #vflip swMath_V

scoreboard players operation #6voH swMath_V = #x3_12 swMath_V
scoreboard players operation #6voH swMath_V *= #hflip swMath_V
scoreboard players operation #6voV swMath_V = #x3_13 swMath_V
scoreboard players operation #6voV swMath_V *= #vflip swMath_V

scoreboard players operation #7voH swMath_V = #x3_14 swMath_V
scoreboard players operation #7voH swMath_V *= #hflip swMath_V
scoreboard players operation #7voV swMath_V = #x3_15 swMath_V
scoreboard players operation #7voV swMath_V *= #vflip swMath_V

scoreboard players operation #8voH swMath_V = #x3_16 swMath_V
scoreboard players operation #8voH swMath_V *= #hflip swMath_V
scoreboard players operation #8voV swMath_V = #x3_17 swMath_V
scoreboard players operation #8voV swMath_V *= #vflip swMath_V

scoreboard players operation #9voH swMath_V = #x3_18 swMath_V
scoreboard players operation #9voH swMath_V *= #hflip swMath_V
scoreboard players operation #9voV swMath_V = #x3_19 swMath_V
scoreboard players operation #9voV swMath_V *= #vflip swMath_V

#tellraw @a [{"text":"cue "},{"score":{"objective":"swMath_V","name":"#cuevoH"}},{"text":", 1 "},{"score":{"objective":"swMath_V","name":"#cuevoV"}}]
#tellraw @a [{"text":"11  "},{"score":{"objective":"swMath_V","name":"#11voH"}},{"text":", 1 "},{"score":{"objective":"swMath_V","name":"#11voV"}}]
#tellraw @a [{"text":"15  "},{"score":{"objective":"swMath_V","name":"#15voH"}},{"text":", 1 "},{"score":{"objective":"swMath_V","name":"#15voV"}}]

# if #vflip == -1:
# exchange 2-3, 4-6, 
execute if score #vflip swMath_V matches -1 run function pool:classes/break_nn_9ball/swap_pair


#tellraw @a [{"text":"cue "},{"score":{"objective":"swMath_V","name":"#cuevoH"}},{"text":", 1 "},{"score":{"objective":"swMath_V","name":"#cuevoV"}}]
#tellraw @a [{"text":"11  "},{"score":{"objective":"swMath_V","name":"#11voH"}},{"text":", 1 "},{"score":{"objective":"swMath_V","name":"#11voV"}}]
#tellraw @a [{"text":"15  "},{"score":{"objective":"swMath_V","name":"#15voH"}},{"text":", 1 "},{"score":{"objective":"swMath_V","name":"#15voV"}}]

# map to ball location and assign their speed values
# get tip ball and their face direction
# summon area effect cloud helper


# z direction
execute if score #Xdir swMath_V matches 0 if score #hflip swMath_V matches 1 at @e[tag=swPool_09,tag=swPool_pool,limit=1] positioned ~0.0 ~ ~1.0 run tag @e[tag=swPool_pool,tag=!swPool_cue,limit=1,type=item_display,sort=nearest] add swPool_tip
execute if score #Xdir swMath_V matches 0 if score #hflip swMath_V matches -1 at @e[tag=swPool_09,tag=swPool_pool,limit=1] positioned ~0.0 ~ ~-1.0 run tag @e[tag=swPool_pool,tag=!swPool_cue,limit=1,type=item_display,sort=nearest] add swPool_tip

# x direction
execute if score #Xdir swMath_V matches 1 if score #hflip swMath_V matches 1 at @e[tag=swPool_09,tag=swPool_pool,limit=1] positioned ~1.0 ~ ~0.0 run tag @e[tag=swPool_pool,tag=!swPool_cue,limit=1,type=item_display,sort=nearest] add swPool_tip
execute if score #Xdir swMath_V matches 1 if score #hflip swMath_V matches -1 at @e[tag=swPool_09,tag=swPool_pool,limit=1] positioned ~-1.0 ~ ~0.0 run tag @e[tag=swPool_pool,tag=!swPool_cue,limit=1,type=item_display,sort=nearest] add swPool_tip

#tag @e[tag=swPool_tip] list

# summon item_display and set their rotation based on #Xdir and #tipregio,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.73f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# z in game: 0:180, 1:-60, -1:60
# x in game: 0:90, 1:-150, -1:-30

# z
execute if score #Xdir swMath_V matches 0 if score #hflip swMath_V matches 1 at @e[tag=swPool_tip,limit=1] run summon item_display ~ ~ ~ {Tags:["swPool_rackmapper"],NoGravity:1b,Rotation:[180.0f,0.0f],Invisible:1b,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.73f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #Xdir swMath_V matches 0 if score #hflip swMath_V matches -1 at @e[tag=swPool_tip,limit=1] run summon item_display ~ ~ ~ {Tags:["swPool_rackmapper"],NoGravity:1b,Rotation:[-180.0f,0.0f],Invisible:1b,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.73f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# x
execute if score #Xdir swMath_V matches 1 if score #hflip swMath_V matches 1 at @e[tag=swPool_tip,limit=1] run summon item_display ~ ~ ~ {Tags:["swPool_rackmapper"],NoGravity:1b,Rotation:[90.0f,0.0f],Invisible:1b,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.73f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #Xdir swMath_V matches 1 if score #hflip swMath_V matches -1 at @e[tag=swPool_tip,limit=1] run summon item_display ~ ~ ~ {Tags:["swPool_rackmapper"],NoGravity:1b,Rotation:[-90.0f,0.0f],Invisible:1b,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.73f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# map
execute as @e[tag=swPool_rackmapper,limit=1,sort=nearest,type=item_display] at @s run function pool:classes/break_nn_9ball/map_balls
kill @e[tag=swPool_rackmapper,limit=1,sort=nearest,type=item_display]

# for all balls, map from HV to XZ based on Xdir
execute as @e[tag=swPool_pool,type=item_display] at @s run function pool:classes/break_nn_9ball/map_xz

# final upscale speed by N digits and combine
execute as @e[tag=swPool_pool,type=item_display] run scoreboard players operation @s swPool_vx *= #VEL_mtp swMath_V
execute as @e[tag=swPool_pool,type=item_display] run scoreboard players operation @s swPool_vz *= #VEL_mtp swMath_V
execute as @e[tag=swPool_pool,type=item_display] at @s run function pool:classes/physics/vcombine_ultimate


# like collision, set T to 0 and change_of_state for all balls (reference collision functions)
scoreboard players reset #Xdir swMath_V
scoreboard players reset #hflip swMath_V
scoreboard players reset #vflip swMath_V
tag @e[tag=swPool_tip] remove swPool_tip
scoreboard players reset @s swPool_hittime
scoreboard players reset COL swPool_vrx
scoreboard players reset COL swPool_vrz
#tag @e[type=item_display,tag=swPool_col] remove swPool_col
tag @e[tag=swPool_9ball_aibreak,limit=1] remove swPool_9ball_aibreak

# get nearest for 9ball
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_01] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 1
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_02] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 2
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_03] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 3
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_04] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 4
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_05] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 5
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_06] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 6
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_07] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 7
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_08] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 8
execute at @s as @e[tag=swPool_pool,limit=1,distance=0.01..] if entity @s[tag=swPool_09] run scoreboard players set @a[tag=swPool_hitcue] swPool_firsthit 9

scoreboard players set @e[tag=swPool_pool,type=item_display] swPool_T 0
execute as @e[tag=swPool_pool,type=item_display] at @s run function pool:classes/spin/change_of_state


# playsound
execute if score pitch swMath_V matches 0..1071978 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.1 0.50
execute if score pitch swMath_V matches 1071979..2247381 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.138 0.52
execute if score pitch swMath_V matches 2247382..3536184 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.175 0.54
execute if score pitch swMath_V matches 3536185..4949329 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.212 0.56
execute if score pitch swMath_V matches 4949330..6498812 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.25 0.58
execute if score pitch swMath_V matches 6498813..8197785 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.288 0.60
execute if score pitch swMath_V matches 8197786..10060673 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.325 0.62
execute if score pitch swMath_V matches 10060674..12103289 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.363 0.64
execute if score pitch swMath_V matches 12103290..14342972 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.4 0.66
execute if score pitch swMath_V matches 14342973..16798737 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.438 0.68
execute if score pitch swMath_V matches 16798738..19491429 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.475 0.70
execute if score pitch swMath_V matches 19491430..22443907 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.512 0.72
execute if score pitch swMath_V matches 22443908..25681234 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.55 0.74
execute if score pitch swMath_V matches 25681235..29230893 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.588 0.76
execute if score pitch swMath_V matches 29230894..33123017 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.625 0.78
execute if score pitch swMath_V matches 33123018..37390647 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.662 0.80
execute if score pitch swMath_V matches 37390648..42070009 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.7 0.82
execute if score pitch swMath_V matches 42070010..47200827 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.737 0.84
execute if score pitch swMath_V matches 47200828..52826658 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.775 0.86
execute if score pitch swMath_V matches 52826659..58995259 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.812 0.88
execute if score pitch swMath_V matches 58995260..65758995 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.85 0.90
execute if score pitch swMath_V matches 65758996..73175285 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.888 0.92
execute if score pitch swMath_V matches 73175286..81307084 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.925 0.94
execute if score pitch swMath_V matches 81307085..90223425 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.962 0.96
execute if score pitch swMath_V matches 90223426.. run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 1.0 0.98

execute if score pitch swMath_V matches 0..1071978 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.1 0.50
execute if score pitch swMath_V matches 1071979..2247381 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.138 0.52
execute if score pitch swMath_V matches 2247382..3536184 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.175 0.54
execute if score pitch swMath_V matches 3536185..4949329 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.212 0.56
execute if score pitch swMath_V matches 4949330..6498812 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.25 0.58
execute if score pitch swMath_V matches 6498813..8197785 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.288 0.60
execute if score pitch swMath_V matches 8197786..10060673 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.325 0.62
execute if score pitch swMath_V matches 10060674..12103289 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.363 0.64
execute if score pitch swMath_V matches 12103290..14342972 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.4 0.66
execute if score pitch swMath_V matches 14342973..16798737 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.438 0.68
execute if score pitch swMath_V matches 16798738..19491429 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.475 0.70
execute if score pitch swMath_V matches 19491430..22443907 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.512 0.72
execute if score pitch swMath_V matches 22443908..25681234 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.55 0.74
execute if score pitch swMath_V matches 25681235..29230893 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.588 0.76
execute if score pitch swMath_V matches 29230894..33123017 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.625 0.78
execute if score pitch swMath_V matches 33123018..37390647 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.662 0.80
execute if score pitch swMath_V matches 37390648..42070009 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.7 0.82
execute if score pitch swMath_V matches 42070010..47200827 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.737 0.84
execute if score pitch swMath_V matches 47200828..52826658 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.775 0.86
execute if score pitch swMath_V matches 52826659..58995259 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.812 0.88
execute if score pitch swMath_V matches 58995260..65758995 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.85 0.90
execute if score pitch swMath_V matches 65758996..73175285 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.888 0.92
execute if score pitch swMath_V matches 73175286..81307084 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.925 0.94
execute if score pitch swMath_V matches 81307085..90223425 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.962 0.96
execute if score pitch swMath_V matches 90223426.. run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 1.0 0.98

execute if score pitch swMath_V matches 0..1071978 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.1 0.50
execute if score pitch swMath_V matches 1071979..2247381 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.138 0.52
execute if score pitch swMath_V matches 2247382..3536184 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.175 0.54
execute if score pitch swMath_V matches 3536185..4949329 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.212 0.56
execute if score pitch swMath_V matches 4949330..6498812 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.25 0.58
execute if score pitch swMath_V matches 6498813..8197785 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.288 0.60
execute if score pitch swMath_V matches 8197786..10060673 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.325 0.62
execute if score pitch swMath_V matches 10060674..12103289 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.363 0.64
execute if score pitch swMath_V matches 12103290..14342972 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.4 0.66
execute if score pitch swMath_V matches 14342973..16798737 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.438 0.68
execute if score pitch swMath_V matches 16798738..19491429 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.475 0.70
execute if score pitch swMath_V matches 19491430..22443907 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.512 0.72
execute if score pitch swMath_V matches 22443908..25681234 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.55 0.74
execute if score pitch swMath_V matches 25681235..29230893 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.588 0.76
execute if score pitch swMath_V matches 29230894..33123017 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.625 0.78
execute if score pitch swMath_V matches 33123018..37390647 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.662 0.80
execute if score pitch swMath_V matches 37390648..42070009 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.7 0.82
execute if score pitch swMath_V matches 42070010..47200827 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.737 0.84
execute if score pitch swMath_V matches 47200828..52826658 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.775 0.86
execute if score pitch swMath_V matches 52826659..58995259 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.812 0.88
execute if score pitch swMath_V matches 58995260..65758995 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.85 0.90
execute if score pitch swMath_V matches 65758996..73175285 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.888 0.92
execute if score pitch swMath_V matches 73175286..81307084 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.925 0.94
execute if score pitch swMath_V matches 81307085..90223425 run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 0.962 0.96
execute if score pitch swMath_V matches 90223426.. run playsound minecraft:custom.pool.break ambient @a ~ ~ ~ 1.0 0.98
