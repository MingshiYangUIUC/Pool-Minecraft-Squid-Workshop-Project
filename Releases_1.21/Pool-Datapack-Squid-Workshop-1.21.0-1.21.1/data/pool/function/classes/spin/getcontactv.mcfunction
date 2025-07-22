#V' = V - r (omega X n) n = (0,1,0)

#@s vx,vy,vz,wx,wy,wz
#return vpx,vpy,vpz

scoreboard players operation @s swPool_vpx = @s swPool_vex
scoreboard players operation @s swPool_vpy = @s swPool_vey
scoreboard players operation @s swPool_vpz = @s swPool_vez

scoreboard players operation A swPool_Vi = @s swPool_wx
scoreboard players operation A swPool_Vj = @s swPool_wy
scoreboard players operation A swPool_Vk = @s swPool_wz

#scoreboard players operation A swPool_Vi /= C_20 swPool_C
#scoreboard players operation A swPool_Vj /= C_20 swPool_C
#scoreboard players operation A swPool_Vk /= C_20 swPool_C

scoreboard players set B swPool_Vi 0
scoreboard players set B swPool_Vj 1
scoreboard players set B swPool_Vk 0

function pool:classes/physics/vacrossvb

scoreboard players operation O swPool_Vi /= C_100 swPool_C
#no need Vj because it is 0
scoreboard players operation O swPool_Vk /= C_100 swPool_C

scoreboard players operation O swPool_Vi *= C_r swPool_C
#no need Vj because it is 0
scoreboard players operation O swPool_Vk *= C_r swPool_C

scoreboard players operation O swPool_Vi /= C_100 swPool_C
#no need Vj because it is 0
scoreboard players operation O swPool_Vk /= C_100 swPool_C

scoreboard players operation @s swPool_vpx -= O swPool_Vi
#no need vpy because it is 0
scoreboard players operation @s swPool_vpz -= O swPool_Vk