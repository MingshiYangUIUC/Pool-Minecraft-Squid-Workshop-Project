#Input: vectors A,B
#Output: sum(Ai*Bi) for i in 1,2,3

scoreboard players operation #vi swMath_V = vAi swMath_V
scoreboard players operation #vi swMath_V *= vBi swMath_V

scoreboard players operation #vj swMath_V = vAj swMath_V
scoreboard players operation #vj swMath_V *= vBj swMath_V

scoreboard players operation #vk swMath_V = vAk swMath_V
scoreboard players operation #vk swMath_V *= vBk swMath_V

scoreboard players operation #vOut swMath_V = #vi swMath_V
scoreboard players operation #vOut swMath_V += #vj swMath_V
scoreboard players operation #vOut swMath_V += #vk swMath_V