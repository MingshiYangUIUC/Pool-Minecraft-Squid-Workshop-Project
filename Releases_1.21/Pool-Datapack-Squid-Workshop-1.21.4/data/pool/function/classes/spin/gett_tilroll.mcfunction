#already have contact v!

scoreboard players operation A swPool_Vi = @s swPool_vpx
scoreboard players operation A swPool_Vj = @s swPool_vpy
scoreboard players operation A swPool_Vk = @s swPool_vpz

function pool:classes/physics/vamagnitude
#now O's swPool_Vmag is the magnitude

#0.0291=2/7/g
scoreboard players set @s swPool_T_roll 291
scoreboard players operation @s swPool_T_roll *= O swPool_Vmag
scoreboard players operation @s swPool_T_roll /= C_muk swPool_C

#translate to ticks
scoreboard players operation Res swPool_var00 = @s swPool_T_roll
scoreboard players operation Res swPool_var00 %= C_500 swPool_C
scoreboard players operation @s swPool_T_roll /= C_500 swPool_C

execute if score Res swPool_var00 matches 250.. run scoreboard players add @s swPool_T_roll 1