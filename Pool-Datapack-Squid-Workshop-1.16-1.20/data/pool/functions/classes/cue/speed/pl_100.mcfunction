scoreboard players set #custompower_10 swMath_V 100
scoreboard players set #custompower swMath_V 0
scoreboard players operation #custompower swMath_V += #custompower_10 swMath_V
scoreboard players operation #custompower swMath_V += #custompower_1 swMath_V
execute if score #custompower swMath_V matches 100.. run scoreboard players set #custompower swMath_V 100
