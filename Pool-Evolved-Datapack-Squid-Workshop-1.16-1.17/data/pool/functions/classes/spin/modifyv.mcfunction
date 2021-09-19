execute store result score Cue_A4 swPool_v run data get entity @s Rotation[0] -10000

execute if score Cue_A4 swPool_v matches ..-1 run scoreboard players add Cue_A4 swPool_v 3600000

scoreboard players operation @s swPool_var00 = Cue_A4 swPool_v

function pool:classes/physics/cosdeg

scoreboard players operation Cue_wx swPool_v = Cue_wh swPool_v
scoreboard players operation Cue_wx swPool_v *= @s swPool_var00
scoreboard players operation Cue_wx swPool_v /= C_10000 swPool_C


scoreboard players operation @s swPool_var00 = Cue_A4 swPool_v

function pool:classes/physics/sindeg

scoreboard players set Cue_wz swPool_v 0
scoreboard players operation Cue_wz swPool_v -= Cue_wh swPool_v
scoreboard players operation Cue_wz swPool_v *= @s swPool_var00
scoreboard players operation Cue_wz swPool_v /= C_10000 swPool_C