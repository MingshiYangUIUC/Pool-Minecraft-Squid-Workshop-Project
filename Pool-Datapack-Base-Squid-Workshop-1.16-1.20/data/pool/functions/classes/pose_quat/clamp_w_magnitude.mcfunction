# Set the limit constant
scoreboard players set #Limit swMath_V 30000

scoreboard players set #wscale swMath_V 1
execute if score #wmag swMath_V matches 300000.. run scoreboard players set #wscale swMath_V 10
execute if score #wmag swMath_V matches 3000000.. run scoreboard players set #wscale swMath_V 100
execute if score #wmag swMath_V matches 30000000.. run scoreboard players set #wscale swMath_V 1000
execute if score #wmag swMath_V matches 300000000.. run scoreboard players set #wscale swMath_V 10000

# Clamp wx: wx = (wx * Limit) / wmag
scoreboard players operation wx swMath_V /= #wscale swMath_V
scoreboard players operation wx swMath_V *= #Limit swMath_V
scoreboard players operation wx swMath_V /= #wmag swMath_V
scoreboard players operation wx swMath_V *= #wscale swMath_V

# Clamp wy: wy = (wy * Limit) / wmag
scoreboard players operation wy swMath_V /= #wscale swMath_V
scoreboard players operation wy swMath_V *= #Limit swMath_V
scoreboard players operation wy swMath_V /= #wmag swMath_V
scoreboard players operation wy swMath_V *= #wscale swMath_V

# Clamp wz: wz = (wz * Limit) / wmag
scoreboard players operation wz swMath_V /= #wscale swMath_V
scoreboard players operation wz swMath_V *= #Limit swMath_V
scoreboard players operation wz swMath_V /= #wmag swMath_V
scoreboard players operation wz swMath_V *= #wscale swMath_V

# Clamp wmag: wmag = (wmag * Limit) / wmag
scoreboard players operation #wmag2 swMath_V = #wmag swMath_V
scoreboard players operation #wmag2 swMath_V /= #wscale swMath_V
scoreboard players operation #wmag2 swMath_V *= #Limit swMath_V
scoreboard players operation #wmag2 swMath_V /= #wmag swMath_V
scoreboard players operation #wmag2 swMath_V *= #wscale swMath_V
scoreboard players operation #wmag swMath_V = #wmag2 swMath_V

#tellraw @a[tag=swPool_debug] [{"text":"wmag_clamped: "},{"score":{"name": "#wmag","objective": "swMath_V"}}]