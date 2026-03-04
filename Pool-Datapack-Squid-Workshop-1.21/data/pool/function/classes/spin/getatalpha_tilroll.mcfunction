#a = -vp*g*muk/mag(vp)
#tellraw @a [{"text":"vpx, "},{"score":{"objective":"swPool_vpx","name":"@s"}},{"text":"vpy, "},{"score":{"objective":"swPool_vpy","name":"@s"}},{"text":"vpz, "},{"score":{"objective":"swPool_vpz","name":"@s"}}]
scoreboard players set @s swPool_ax 0
scoreboard players set @s swPool_ay 0
scoreboard players set @s swPool_az 0
scoreboard players set @s swPool_alx 0
scoreboard players set @s swPool_aly 0
scoreboard players set @s swPool_alz 0

scoreboard players operation @s swPool_ax -= @s swPool_vpx
scoreboard players operation @s swPool_ay -= @s swPool_vpy
scoreboard players operation @s swPool_az -= @s swPool_vpz

scoreboard players operation A swPool_Vi = @s swPool_vpx
scoreboard players operation A swPool_Vj = @s swPool_vpy
scoreboard players operation A swPool_Vk = @s swPool_vpz

function pool:classes/physics/vamagnitude
#now O's swPool_Vmag is the magnitude

scoreboard players operation A swPool_Vi = @s swPool_vpx
scoreboard players operation A swPool_Vj = @s swPool_vpy
scoreboard players operation A swPool_Vk = @s swPool_vpz
scoreboard players set B swPool_Vi 0
scoreboard players set B swPool_Vj 1
scoreboard players set B swPool_Vk 0

function pool:classes/physics/vacrossvb
#now O's ijk is v' X n

#get a
scoreboard players operation @s swPool_ax /= C_10 swPool_C
scoreboard players operation @s swPool_ay /= C_10 swPool_C
scoreboard players operation @s swPool_az /= C_10 swPool_C

scoreboard players operation @s swPool_ax *= C_muk swPool_C
scoreboard players operation @s swPool_ay *= C_muk swPool_C
scoreboard players operation @s swPool_az *= C_muk swPool_C

scoreboard players operation @s swPool_ax /= C_100 swPool_C
scoreboard players operation @s swPool_ay /= C_100 swPool_C
scoreboard players operation @s swPool_az /= C_100 swPool_C

scoreboard players operation @s swPool_ax *= C_0.01g swPool_C
scoreboard players operation @s swPool_ay *= C_0.01g swPool_C
scoreboard players operation @s swPool_az *= C_0.01g swPool_C

scoreboard players operation @s swPool_ax /= O swPool_Vmag
scoreboard players operation @s swPool_ay /= O swPool_Vmag
scoreboard players operation @s swPool_az /= O swPool_Vmag

scoreboard players operation @s swPool_ax *= C_10 swPool_C
scoreboard players operation @s swPool_ay *= C_10 swPool_C
scoreboard players operation @s swPool_az *= C_10 swPool_C

scoreboard players operation @s swPool_ax /= C_20 swPool_C
scoreboard players operation @s swPool_ay /= C_20 swPool_C
scoreboard players operation @s swPool_az /= C_20 swPool_C



#get t
#0.0291=2/7/g

#tellraw @a [{"text":"vmag, "},{"score":{"objective":"swPool_Vmag","name":"O"}}]

scoreboard players set @s swPool_T_roll 291
scoreboard players operation @s swPool_T_roll *= O swPool_Vmag
#tellraw @a [{"text":"291vmag, "},{"score":{"objective":"swPool_T_roll","name":"@s"}}]
scoreboard players operation @s swPool_T_roll /= C_muk swPool_C

#translate to ticks
scoreboard players operation Res swPool_var00 = @s swPool_T_roll
scoreboard players operation Res swPool_var00 %= C_500 swPool_C
scoreboard players operation @s swPool_T_roll /= C_500 swPool_C

execute if score Res swPool_var00 matches 250.. run scoreboard players add @s swPool_T_roll 1

#get alpha
#al = -5/2*g*muk/r*(unit(v') X n)


scoreboard players operation @s swPool_alx -= O swPool_Vi
scoreboard players operation @s swPool_aly -= O swPool_Vj
scoreboard players operation @s swPool_alz -= O swPool_Vk
#tellraw @s [{"text":"alpha, "},{"score":{"objective":"swPool_alx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_aly","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_alz","name":"@s"}}]
scoreboard players operation @s swPool_alx *= C_250 swPool_C
scoreboard players operation @s swPool_aly *= C_250 swPool_C
scoreboard players operation @s swPool_alz *= C_250 swPool_C

scoreboard players operation @s swPool_alx /= O swPool_Vmag
scoreboard players operation @s swPool_aly /= O swPool_Vmag
scoreboard players operation @s swPool_alz /= O swPool_Vmag

scoreboard players operation @s swPool_alx *= C_muk swPool_C
scoreboard players operation @s swPool_aly *= C_muk swPool_C
scoreboard players operation @s swPool_alz *= C_muk swPool_C

scoreboard players operation @s swPool_alx /= C_r swPool_C
scoreboard players operation @s swPool_aly /= C_r swPool_C
scoreboard players operation @s swPool_alz /= C_r swPool_C

scoreboard players operation @s swPool_alx *= C_0.01g swPool_C
scoreboard players operation @s swPool_aly *= C_0.01g swPool_C
scoreboard players operation @s swPool_alz *= C_0.01g swPool_C

scoreboard players operation @s swPool_alx /= C_20 swPool_C
scoreboard players operation @s swPool_aly /= C_20 swPool_C
scoreboard players operation @s swPool_alz /= C_20 swPool_C


execute if score O swPool_Vmag matches 0 run scoreboard players set @s swPool_ax 0
execute if score O swPool_Vmag matches 0 run scoreboard players set @s swPool_ay 0
execute if score O swPool_Vmag matches 0 run scoreboard players set @s swPool_az 0
execute if score O swPool_Vmag matches 0 run scoreboard players set @s swPool_alx 0
execute if score O swPool_Vmag matches 0 run scoreboard players set @s swPool_aly 0
execute if score O swPool_Vmag matches 0 run scoreboard players set @s swPool_alz 0
