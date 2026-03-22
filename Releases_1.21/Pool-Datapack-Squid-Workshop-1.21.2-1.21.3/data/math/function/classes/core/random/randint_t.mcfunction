# return an integer as sample mean from a uniform distribution with n = n, mean = 0 and sd = 10000
# #vIn is n, n >= 30 is approximated normal
# you can scale the output mean and standard deviation by + - and * /

# calculate sample upper bound, place max at 50 to save computation power
execute if score #vIn swMath_V matches 51.. run scoreboard players set #vIn swMath_V 50
scoreboard players operation #n swMath_V = #vIn swMath_V
scoreboard players operation #n2 swMath_V = #vIn swMath_V

scoreboard players operation #vIn swMath_V *= #C_10000 swMath_C
scoreboard players operation #vIn swMath_V *= #C_100 swMath_C
function math:classes/core/operations/sqrt
scoreboard players operation #vOut swMath_V *= #C_34641 swMath_C
scoreboard players operation #vOut swMath_V /= #C_1000 swMath_C
scoreboard players operation #mu swMath_V = #vOut swMath_V
scoreboard players operation #mu swMath_V /= #C_2 swMath_C
scoreboard players operation #upper swMath_V = #vOut swMath_V

# sample n times while summing the result from uniform distribution
scoreboard players set #sum swMath_V 0
execute if score #n swMath_V matches 1.. run function math:classes/supp/random/sample_sum
scoreboard players operation #vOut swMath_V = #sum swMath_V
scoreboard players operation #vOut swMath_V /= #n2 swMath_V
scoreboard players operation #vOut swMath_V -= #mu swMath_V

# passed the test that 5% of values are outside 2 standard deviations
#execute unless score #vOut swMath_V matches -20000..20000 run tellraw @a [{"text":"ybar: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]
