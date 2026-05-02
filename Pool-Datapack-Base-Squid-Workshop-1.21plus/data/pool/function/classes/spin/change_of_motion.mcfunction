#every tick after motion

scoreboard players operation @s swPool_vex += @s swPool_ax
scoreboard players operation @s swPool_vey += @s swPool_ay
scoreboard players operation @s swPool_vez += @s swPool_az

scoreboard players operation @s swPool_wx += @s swPool_alx
scoreboard players operation @s swPool_wy += @s swPool_aly
scoreboard players operation @s swPool_wz += @s swPool_alz

#tellraw @a [{"text":"Troll "},{"score":{"objective":"swPool_T_roll","name":"@s"}},{"text":" Tend"},{"score":{"objective":"swPool_T_end","name":"@s"}},{"text":" T "},{"score":{"objective":"swPool_T","name":"@s"}}]
#tellraw @a [{"text":" w, "},{"score":{"objective":"swPool_wx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_wy","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_wz","name":"@s"}},{"text":" alpha, "},{"score":{"objective":"swPool_alx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_aly","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_alz","name":"@s"}}]


#execute if entity @s[scores={swPool_v=20000000..}] run tellraw @a [{"text":"Troll "},{"score":{"objective":"swPool_T_roll","name":"@s"}},{"text":" Tend"},{"score":{"objective":"swPool_T_end","name":"@s"}},{"text":" T "},{"score":{"objective":"swPool_T","name":"@s"}},{"text":" v, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vey","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vez","name":"@s"}},{"text":" a, "},{"score":{"objective":"swPool_ax","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_ay","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_az","name":"@s"}}]

execute if score @s swPool_T <= @s swPool_T_roll run function pool:classes/physics/vcombine_ve
#execute if score @s swPool_T <= @s swPool_T_roll run scoreboard players operation @s swPool_v *= C_500 swPool_C

#execute if entity @s[scores={swPool_v=20000000..}] run tellraw @a [{"text":"Troll "},{"score":{"objective":"swPool_T_roll","name":"@s"}},{"text":" Tend"},{"score":{"objective":"swPool_T_end","name":"@s"}},{"text":" T "},{"score":{"objective":"swPool_T","name":"@s"}},{"text":" v, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vey","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vez","name":"@s"}},{"text":" a, "},{"score":{"objective":"swPool_ax","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_ay","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_az","name":"@s"}}]

execute if score @s swPool_T > @s swPool_T_roll run scoreboard players operation @s swPool_v -= @s swPool_amag

execute if score @s swPool_T = @s swPool_T_roll run function pool:classes/spin/getamagt_tilend
execute if score @s swPool_T > @s swPool_T_roll if score @s swPool_T <= @s swPool_T_end run function pool:classes/spin/vtow

#tellraw @a [{"text":"Troll "},{"score":{"objective":"swPool_T_roll","name":"@s"}},{"text":" Tend"},{"score":{"objective":"swPool_T_end","name":"@s"}},{"text":" T "},{"score":{"objective":"swPool_T","name":"@s"}},{"text":" v, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vey","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vez","name":"@s"}},{"text":" a, "},{"score":{"objective":"swPool_ax","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_ay","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_az","name":"@s"}}]
#tellraw @a [{"text":" w, "},{"score":{"objective":"swPool_wx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_wy","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_wz","name":"@s"}},{"text":" alpha, "},{"score":{"objective":"swPool_alx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_aly","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_alz","name":"@s"}}]

function pool:classes/spin/drag

execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_v 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_vx 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_vz 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_vex 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_vez 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_ax 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_az 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_wx 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_wy 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_wz 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_alx 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players set @s swPool_alz 0
execute if score @s swPool_T >= @s swPool_T_end run scoreboard players reset @s swPool_T_end