# input variable is vIn swMath_V
# output variable is vOut swMath_V


# Preparation
scoreboard players operation x swMath_V = vIn swMath_V
scoreboard players set n swMath_V 1
execute if score x swMath_V matches ..-1 run scoreboard players set n swMath_V -1
execute if score x swMath_V matches ..-1 run scoreboard players operation x swMath_V *= C_-1 swMath_C

# calculation
scoreboard players operation x swMath_V %= C_62832 swMath_C
scoreboard players operation y swMath_V = x swMath_V
scoreboard players operation y swMath_V *= C_25000 swMath_C
scoreboard players operation y swMath_V /= C_1309 swMath_C
scoreboard players operation y swMath_V *= C_3 swMath_C
scoreboard players set m swMath_V 8
scoreboard players operation m swMath_V *= x swMath_V
scoreboard players operation m swMath_V /= C_60000 swMath_C
scoreboard players operation y swMath_V += m swMath_V
scoreboard players add y swMath_V 2
scoreboard players operation y swMath_V *= n swMath_V
scoreboard players operation y swMath_V %= C_3600000 swMath_C

# return
scoreboard players operation vOut swMath_V = y swMath_V
tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]
