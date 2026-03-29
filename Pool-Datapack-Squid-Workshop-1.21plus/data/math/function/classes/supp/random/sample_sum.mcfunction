# sample with top #upper #n times, and add result to #sum swMath_V

function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= #upper swMath_V
scoreboard players operation #sum swMath_V += #vOut swMath_V
scoreboard players remove #n swMath_V 1
execute if score #n swMath_V matches 1.. run function math:classes/supp/random/sample_sum