# use time and an increasing seed to avoid repetition in the same tick
scoreboard players add RNGseed swMath_V 1

execute store result score RNG swMath_V run time query gametime
#tellraw @a [{"text":"0 "},{"score":{"name":"RNG","objective":"swMath_V"}},{"text":" "},{"score":{"name":"RNGseed","objective":"swMath_V"}}]
#execute store result score RNG2 swMath_V run data get entity @s UUID[0]

scoreboard players operation RNG swMath_V *= RNGseed swMath_V

scoreboard players operation RNG swMath_V *= C_314159 swMath_C
scoreboard players operation RNG swMath_V *= C_2718281 swMath_C


scoreboard players operation RNG swMath_V *= RNG swMath_V
scoreboard players operation RNG swMath_V /= C_1000 swMath_C

scoreboard players operation RNG swMath_V *= C_314159 swMath_C
scoreboard players operation RNG swMath_V *= C_2718281 swMath_C

scoreboard players operation vOut swMath_V = RNG swMath_V

tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]
