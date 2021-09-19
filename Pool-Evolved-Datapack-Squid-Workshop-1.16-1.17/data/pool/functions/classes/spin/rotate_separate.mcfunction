#rotate wv and wh by angle A1:
#wv = wv*cos(A1)-wh*sin(A1)
#wh = wv*sin(A1)+wh*cos(A1)

function pool:classes/spin/gridtov

scoreboard players operation @s swPool_var00 = Cue_v swPool_v
function pool:classes/physics/sqrt
scoreboard players operation @s swPool_var00 *= C_100 swPool_C
scoreboard players operation Cue_v swPool_v = @s swPool_var00



#cos and sin
scoreboard players operation Cue_ca1 swPool_v = Cue_A1 swPool_v
execute if score Cue_ca1 swPool_v matches 10000 run scoreboard players set Cue_sa1 swPool_v 0
execute if score Cue_ca1 swPool_v matches 9962 run scoreboard players set Cue_sa1 swPool_v 872
execute if score Cue_ca1 swPool_v matches 9848 run scoreboard players set Cue_sa1 swPool_v 1736
execute if score Cue_ca1 swPool_v matches 9659 run scoreboard players set Cue_sa1 swPool_v 2588
execute if score Cue_ca1 swPool_v matches 9397 run scoreboard players set Cue_sa1 swPool_v 3420
execute if score Cue_ca1 swPool_v matches 9063 run scoreboard players set Cue_sa1 swPool_v 4226
execute if score Cue_ca1 swPool_v matches 8660 run scoreboard players set Cue_sa1 swPool_v 5000
execute if score Cue_ca1 swPool_v matches 8192 run scoreboard players set Cue_sa1 swPool_v 5736
execute if score Cue_ca1 swPool_v matches 7660 run scoreboard players set Cue_sa1 swPool_v 6428
execute if score Cue_ca1 swPool_v matches 7071 run scoreboard players set Cue_sa1 swPool_v 7071
execute if score Cue_ca1 swPool_v matches 6428 run scoreboard players set Cue_sa1 swPool_v 7660
execute if score Cue_ca1 swPool_v matches 5736 run scoreboard players set Cue_sa1 swPool_v 8192
execute if score Cue_ca1 swPool_v matches 5000 run scoreboard players set Cue_sa1 swPool_v 8660
execute if score Cue_ca1 swPool_v matches 4226 run scoreboard players set Cue_sa1 swPool_v 9063
execute if score Cue_ca1 swPool_v matches 3420 run scoreboard players set Cue_sa1 swPool_v 9397
execute if score Cue_ca1 swPool_v matches 2588 run scoreboard players set Cue_sa1 swPool_v 9659
execute if score Cue_ca1 swPool_v matches 1736 run scoreboard players set Cue_sa1 swPool_v 9848
execute if score Cue_ca1 swPool_v matches 872 run scoreboard players set Cue_sa1 swPool_v 9962


#separate wh and add with rotation of wv
execute store result score Cue_A4 swPool_v run data get entity @s Rotation[0] -10000

execute if score Cue_A4 swPool_v matches ..-1 run scoreboard players add Cue_A4 swPool_v 3600000

scoreboard players operation @s swPool_var00 = Cue_A4 swPool_v

function pool:classes/physics/cosdeg

scoreboard players set Cue_wx swPool_v 0
scoreboard players operation Cue_wx swPool_v = Cue_wh swPool_v
scoreboard players operation Cue_wx swPool_v *= @s swPool_var00
scoreboard players operation Cue_wx swPool_v /= C_10000 swPool_C

#uses cos
scoreboard players operation Cue_dwz swPool_v = Cue_wv swPool_v
scoreboard players operation Cue_dwz swPool_v *= @s swPool_var00
scoreboard players operation Cue_dwz swPool_v /= C_10000 swPool_C
scoreboard players operation Cue_dwz swPool_v *= Cue_sa1 swPool_v
scoreboard players operation Cue_dwz swPool_v /= C_10000 swPool_C


scoreboard players operation @s swPool_var00 = Cue_A4 swPool_v

function pool:classes/physics/sindeg

scoreboard players set Cue_wz swPool_v 0
scoreboard players operation Cue_wz swPool_v -= Cue_wh swPool_v
scoreboard players operation Cue_wz swPool_v *= @s swPool_var00
scoreboard players operation Cue_wz swPool_v /= C_10000 swPool_C

#uses sin
scoreboard players operation Cue_dwx swPool_v = Cue_wv swPool_v
scoreboard players operation Cue_dwx swPool_v *= @s swPool_var00
scoreboard players operation Cue_dwx swPool_v /= C_10000 swPool_C
scoreboard players operation Cue_dwx swPool_v *= Cue_sa1 swPool_v
scoreboard players operation Cue_dwx swPool_v /= C_10000 swPool_C


#tellraw @a [{"text":"wv "},{"score":{"objective":"swPool_v","name":"Cue_wv"}}]
#tellraw @a [{"text":"wx "},{"score":{"objective":"swPool_v","name":"Cue_wx"}}]
#tellraw @a [{"text":"wz "},{"score":{"objective":"swPool_v","name":"Cue_wz"}}]
scoreboard players operation Cue_wx swPool_v += Cue_dwx swPool_v
scoreboard players operation Cue_wz swPool_v += Cue_dwz swPool_v
#tellraw @a [{"text":"dwx "},{"score":{"objective":"swPool_v","name":"Cue_dwx"}}]
#tellraw @a [{"text":"dwz "},{"score":{"objective":"swPool_v","name":"Cue_dwz"}}]
#change by stick lift angle:
#wx += wvsinA1sinA4
#wz += wvsinA1cosA4
#described above
#wy = wvcosA1
#below
scoreboard players operation Cue_wy swPool_v = Cue_wv swPool_v
scoreboard players operation Cue_wy swPool_v *= Cue_ca1 swPool_v
scoreboard players operation Cue_wy swPool_v /= C_10000 swPool_C