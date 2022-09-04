# input variable is vIn swMath_V
# output variable is vOut swMath_V

# calculation
scoreboard players operation y swMath_V = vIn swMath_V
scoreboard players operation y swMath_V %= C_3600000 swMath_C
scoreboard players operation y swMath_V /= C_15 swMath_C
scoreboard players operation y swMath_V *= C_2618 swMath_C
scoreboard players operation y swMath_V /= C_10000 swMath_C
scoreboard players add y swMath_V 1
scoreboard players operation y swMath_V %= C_62832 swMath_C

# return
scoreboard players operation vOut swMath_V = y swMath_V
tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]
