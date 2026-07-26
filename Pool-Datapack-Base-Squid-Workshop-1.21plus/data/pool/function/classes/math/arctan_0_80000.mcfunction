# Input:  #xx swMath_V, expected range 0..80000
# Output: #y swMath_V, atan(input / 10000) in radians * 10000

# linear interpolation

scoreboard players operation #x swMath_V = #xx swMath_V
execute if score #x swMath_V matches ..-1 run scoreboard players set #x swMath_V 0
execute if score #x swMath_V matches 80001.. run scoreboard players set #x swMath_V 80000

function pool:classes/math/arctan_help/node_000_100

# y = y0 + (x - x0) * slope / 10000
scoreboard players operation #dx swMath_V = #x swMath_V
scoreboard players operation #dx swMath_V -= #x0 swMath_V
scoreboard players operation #dx swMath_V *= #slope swMath_V
scoreboard players operation #dx swMath_V /= #C_10000 swMath_C
scoreboard players operation #y swMath_V = #y0 swMath_V
scoreboard players operation #y swMath_V += #dx swMath_V
