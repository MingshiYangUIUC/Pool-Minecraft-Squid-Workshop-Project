#before stop:
#a = -5/7*g*mur

scoreboard players set @s swPool_amag 70071
scoreboard players operation @s swPool_amag *= C_mur swPool_C
scoreboard players operation @s swPool_amag /= C_10000 swPool_C
scoreboard players operation @s swPool_amag *= C_20 swPool_C
scoreboard players operation @s swPool_amag *= C_2 swPool_C

#t = -v / a
scoreboard players set @s swPool_T_end 0
scoreboard players operation @s swPool_T_end += @s swPool_v
scoreboard players operation @s swPool_T_end /= @s swPool_amag
#scoreboard players operation @s swPool_T_end /= C_500 swPool_C
scoreboard players operation @s swPool_T_end += @s swPool_T_roll

#tellraw @a [{"text":" amag, "},{"score":{"objective":"swPool_amag","name":"@s"}},{"text":" v "},{"score":{"objective":"swPool_v","name":"@s"}},{"text":" T "},{"score":{"objective":"swPool_T_end","name":"@s"}}]