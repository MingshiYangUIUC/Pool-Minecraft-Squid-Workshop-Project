#Input: Aijk's V; Bijk's V
#Output: Oijk's V


##Oi
scoreboard players operation #ajbk swMath_V = #vAj swMath_V
scoreboard players operation #ajbk swMath_V *= #vBk swMath_V

scoreboard players operation #akbj swMath_V = #vAk swMath_V
scoreboard players operation #akbj swMath_V *= #vBj swMath_V

scoreboard players operation #vOi swMath_V = #ajbk swMath_V
scoreboard players operation #vOi swMath_V -= #akbj swMath_V

##Oj
scoreboard players operation #akbi swMath_V = #vAk swMath_V
scoreboard players operation #akbi swMath_V *= #vBi swMath_V

scoreboard players operation #aibk swMath_V = #vAi swMath_V
scoreboard players operation #aibk swMath_V *= #vBk swMath_V

scoreboard players operation #vOj swMath_V = #akbi swMath_V
scoreboard players operation #vOj swMath_V -= #aibk swMath_V

##Ok
scoreboard players operation #aibj swMath_V = #vAi swMath_V
scoreboard players operation #aibj swMath_V *= #vBj swMath_V

scoreboard players operation #ajbi swMath_V = #vAj swMath_V
scoreboard players operation #ajbi swMath_V *= #vBi swMath_V

scoreboard players operation #vOk swMath_V = #aibj swMath_V
scoreboard players operation #vOk swMath_V -= #ajbi swMath_V
