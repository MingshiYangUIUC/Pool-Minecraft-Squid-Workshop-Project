# input variable is vIn swMath_V
# output variable is vOut swMath_V

# Preparation
scoreboard players operation x swMath_V = vIn swMath_V
scoreboard players operation sq swMath_V = vIn swMath_V
scoreboard players set n swMath_V 1
execute if score x swMath_V matches ..-1 run scoreboard players set n swMath_V -1
execute if score x swMath_V matches ..-1 run scoreboard players operation x swMath_V *= C_-1 swMath_C

# calculation
scoreboard players set y swMath_V -210
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= C_10000 swMath_C
scoreboard players add y swMath_V 766
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= C_10000 swMath_C
scoreboard players remove y swMath_V 2126
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= C_10000 swMath_C
scoreboard players add y swMath_V 15707
scoreboard players set vIn swMath_V 100000000
scoreboard players operation x swMath_V *= C_10000 swMath_C
scoreboard players operation vIn swMath_V -= x swMath_V
function math:classes/core/sqrt/sqrt
scoreboard players operation sq swMath_V = vOut swMath_V
scoreboard players operation sq swMath_V *= y swMath_V
scoreboard players operation sq swMath_V /= C_10000 swMath_C
scoreboard players set y swMath_V 15708
scoreboard players operation y swMath_V -= sq swMath_V
scoreboard players remove y swMath_V 2
scoreboard players operation y swMath_V *= n swMath_V

# return
scoreboard players operation vOut swMath_V = y swMath_V
tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]
