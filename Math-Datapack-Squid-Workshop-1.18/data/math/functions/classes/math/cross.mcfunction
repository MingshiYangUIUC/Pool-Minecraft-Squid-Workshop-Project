#Input: Aijk's V; Bijk's V
#Output: Oijk's V


#Oi
scoreboard players operation ajbk swMath_V = Aj swMath_V
scoreboard players operation ajbk swMath_V *= Bk swMath_V

scoreboard players operation akbj swMath_V = Ak swMath_V
scoreboard players operation akbj swMath_V *= Bj swMath_V

scoreboard players operation Oi swMath_V = ajbk swMath_V
scoreboard players operation Oi swMath_V -= akbj swMath_V

#Oj
scoreboard players operation akbi swMath_V = Ak swMath_V
scoreboard players operation akbi swMath_V *= Bi swMath_V

scoreboard players operation aibk swMath_V = Ai swMath_V
scoreboard players operation aibk swMath_V *= Bk swMath_V

scoreboard players operation Oj swMath_V = akbi swMath_V
scoreboard players operation Oj swMath_V -= aibk swMath_V

#Ok
scoreboard players operation aibj swMath_V = Ai swMath_V
scoreboard players operation aibj swMath_V *= Bj swMath_V

scoreboard players operation ajbi swMath_V = Aj swMath_V
scoreboard players operation ajbi swMath_V *= Bi swMath_V

scoreboard players operation Ok swMath_V = aibj swMath_V
scoreboard players operation Ok swMath_V -= ajbi swMath_V
