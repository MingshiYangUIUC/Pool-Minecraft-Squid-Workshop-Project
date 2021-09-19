function pool:classes/spin/rotate_separate
scoreboard players operation @s swPool_v /= C_10000 swPool_C

scoreboard players set @s swPool_wx 1
scoreboard players set @s swPool_wy 1
scoreboard players set @s swPool_wz 1

scoreboard players operation @s swPool_wx = Cue_wx swPool_v
scoreboard players operation @s swPool_wy = Cue_wy swPool_v
scoreboard players operation @s swPool_wz = Cue_wz swPool_v

scoreboard players operation @s swPool_wx *= @s swPool_v
scoreboard players operation @s swPool_wy *= @s swPool_v
scoreboard players operation @s swPool_wz *= @s swPool_v

scoreboard players operation @s swPool_wx /= C_20 swPool_C
scoreboard players operation @s swPool_wy /= C_20 swPool_C
scoreboard players operation @s swPool_wz /= C_20 swPool_C


scoreboard players operation @s swPool_v *= Cue_A1 swPool_v
scoreboard players operation @s swPool_v /= C_10000 swPool_C
scoreboard players operation @s swPool_v *= Cue_v swPool_v

#tellraw @a [{"text":" V, "},{"score":{"objective":"swPool_v","name":"@s"}}]
#execute at @s run function pool:classes/spin/change_of_state

#tellraw @a [{"text":" w, "},{"score":{"objective":"swPool_wx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_wy","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_wz","name":"@s"}}]

#tellraw @a [{"text":" V, "},{"score":{"objective":"swPool_v","name":"@s"}},{"text":" Cw, "},{"score":{"objective":"swPool_v","name":"Cue_wx"}},{"text":" "},{"score":{"objective":"swPool_v","name":"Cue_wy"}},{"text":" "},{"score":{"objective":"swPool_v","name":"Cue_wz"}}]

tag @e[tag=swPool_pooltable] remove swPool_resetcue