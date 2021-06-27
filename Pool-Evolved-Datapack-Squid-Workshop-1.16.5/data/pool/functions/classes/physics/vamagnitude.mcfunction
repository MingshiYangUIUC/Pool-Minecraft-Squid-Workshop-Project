#get magnitude of V of A. sqrt(Vi**2+Vj**2+Vk**2)
#reutn O's magnitude (vmag)

scoreboard players operation A swPool_Vi /= C_100 swPool_C
scoreboard players operation A swPool_Vj /= C_100 swPool_C
scoreboard players operation A swPool_Vk /= C_100 swPool_C

scoreboard players operation A swPool_Vi *= A swPool_Vi
scoreboard players operation A swPool_Vj *= A swPool_Vj
scoreboard players operation A swPool_Vk *= A swPool_Vk

scoreboard players operation @s swPool_var00 = A swPool_Vi
scoreboard players operation @s swPool_var00 += A swPool_Vj
scoreboard players operation @s swPool_var00 += A swPool_Vk

function pool:classes/physics/sqrt

scoreboard players operation O swPool_Vmag = @s swPool_var00
scoreboard players operation O swPool_Vmag *= C_100 swPool_C
