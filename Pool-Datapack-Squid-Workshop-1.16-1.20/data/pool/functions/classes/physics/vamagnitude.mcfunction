#get magnitude of V of A. sqrt(Vi**2+Vj**2+Vk**2)
#reutn O's magnitude (vmag)
scoreboard players set #svalue swMath_V 0
execute if score A swPool_Vi matches -10000..10000 if score A swPool_Vj matches -10000..10000 if score A swPool_Vk matches -10000..10000 run scoreboard players set #svalue swMath_V 1

execute if score #svalue swMath_V matches 0 run scoreboard players operation A swPool_Vi /= C_100 swPool_C
execute if score #svalue swMath_V matches 0 run scoreboard players operation A swPool_Vj /= C_100 swPool_C
execute if score #svalue swMath_V matches 0 run scoreboard players operation A swPool_Vk /= C_100 swPool_C

scoreboard players operation A swPool_Vi *= A swPool_Vi
scoreboard players operation A swPool_Vj *= A swPool_Vj
scoreboard players operation A swPool_Vk *= A swPool_Vk

scoreboard players operation #vIn swMath_V = A swPool_Vi
scoreboard players operation #vIn swMath_V += A swPool_Vj
scoreboard players operation #vIn swMath_V += A swPool_Vk

function math:classes/core/operations/sqrt

scoreboard players operation O swPool_Vmag = #vOut swMath_V
execute if score #svalue swMath_V matches 0 run scoreboard players operation O swPool_Vmag *= C_100 swPool_C
