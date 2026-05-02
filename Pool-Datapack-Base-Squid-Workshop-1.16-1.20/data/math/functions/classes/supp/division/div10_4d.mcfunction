# input is #vIn and #power

# output is still #vIn in the function below
function math:classes/supp/division/div10_round
#scoreboard players operation #vIn swMath_V = #vOut swMath_V
scoreboard players remove #power swMath_V 1
execute if score #power swMath_V matches 1.. run function math:classes/supp/division/div10_4d
execute unless score #power swMath_V matches 1.. run scoreboard players operation #vOut swMath_V = #vIn swMath_V