#get magnitude of V of Ai,Aj,Ak. sqrt(Vi**2+Vj**2+Vk**2)
#reutn O's magnitude (V)

execute if score Ai swMath_V matches -10000..10000 if score Aj swMath_V matches -10000..10000 if score Ak swMath_V matches -10000..10000 run tag @s add swMath_svalue 

execute if entity @s[tag=!swMath_svalue] run scoreboard players operation Ai swMath_V /= C_100 swMath_C
execute if entity @s[tag=!swMath_svalue] run scoreboard players operation Aj swMath_V /= C_100 swMath_C
execute if entity @s[tag=!swMath_svalue] run scoreboard players operation Ak swMath_V /= C_100 swMath_C

scoreboard players operation Ai swMath_V *= Ai swMath_V
scoreboard players operation Aj swMath_V *= Aj swMath_V
scoreboard players operation Ak swMath_V *= Ak swMath_V

scoreboard players operation SQRTin swMath_V = Ai swMath_V
scoreboard players operation SQRTin swMath_V += Aj swMath_V
scoreboard players operation SQRTin swMath_V += Ak swMath_V

function soccer:classes/math/sqrt
scoreboard players operation Omag swMath_V = SQRTout swMath_V

execute if entity @s[tag=!swMath_svalue] run scoreboard players operation Omag swMath_V *= C_100 swMath_C
tag @s remove swMath_svalue