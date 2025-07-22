#before stop:
#a = -5/7*v*g*mur/mag(v)

scoreboard players set @s swPool_ax 0
scoreboard players set @s swPool_ay 0
scoreboard players set @s swPool_az 0

scoreboard players operation @s swPool_ax -= @s swPool_vex
scoreboard players operation @s swPool_ay -= @s swPool_vey
scoreboard players operation @s swPool_az -= @s swPool_vez

scoreboard players operation A swPool_Vi = @s swPool_vex
scoreboard players operation A swPool_Vj = @s swPool_vey
scoreboard players operation A swPool_Vk = @s swPool_vez

function pool:classes/physics/vamagnitude
#now O's swPool_Vmag is the magnitude

scoreboard players operation @s swPool_ax /= C_10 swPool_C
scoreboard players operation @s swPool_ay /= C_10 swPool_C
scoreboard players operation @s swPool_az /= C_10 swPool_C

scoreboard players operation @s swPool_ax *= C_mur swPool_C
scoreboard players operation @s swPool_ay *= C_mur swPool_C
scoreboard players operation @s swPool_az *= C_mur swPool_C

scoreboard players operation @s swPool_ax /= C_1000 swPool_C
scoreboard players operation @s swPool_ay /= C_1000 swPool_C
scoreboard players operation @s swPool_az /= C_1000 swPool_C

#*=5/7
scoreboard players operation @s swPool_ax *= C_7143 swPool_C
scoreboard players operation @s swPool_ay *= C_7143 swPool_C
scoreboard players operation @s swPool_az *= C_7143 swPool_C

scoreboard players operation @s swPool_ax /= C_10000 swPool_C
scoreboard players operation @s swPool_ay /= C_10000 swPool_C
scoreboard players operation @s swPool_az /= C_10000 swPool_C

scoreboard players operation @s swPool_ax *= C_g swPool_C
scoreboard players operation @s swPool_ay *= C_g swPool_C
scoreboard players operation @s swPool_az *= C_g swPool_C

scoreboard players operation @s swPool_ax /= O swPool_Vmag
scoreboard players operation @s swPool_ay /= O swPool_Vmag
scoreboard players operation @s swPool_az /= O swPool_Vmag

#scoreboard players operation @s swPool_ax *= C_10 swPool_C
#scoreboard players operation @s swPool_ay *= C_10 swPool_C
#scoreboard players operation @s swPool_az *= C_10 swPool_C

scoreboard players operation @s swPool_ax /= C_20 swPool_C
scoreboard players operation @s swPool_ay /= C_20 swPool_C
scoreboard players operation @s swPool_az /= C_20 swPool_C

#tellraw @a [{"text":"acceleration, "},{"score":{"objective":"swPool_ax","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_ay","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_az","name":"@s"}}]