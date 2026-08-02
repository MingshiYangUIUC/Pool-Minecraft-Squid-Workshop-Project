scoreboard players set old_r swMath_V 1250
scoreboard players operation new_r swMath_V = C_r swPool_C

execute unless score @s swPool_itm_y matches 0.. store result score @s swPool_itm_y run data get entity @s transformation.translation[1] 10000
scoreboard players operation dyshift swMath_V = @s swPool_itm_y

scoreboard players set dscale swMath_V 5000

#tellraw @a [{"text":"dsc, "},{"score":{"objective":"swMath_V","name":"dscale"}}]

# multiply scale by new/old
scoreboard players operation dscale swMath_V *= new_r swMath_V
scoreboard players operation dscale swMath_V /= old_r swMath_V
#tellraw @a [{"text":"dsc, "},{"score":{"objective":"swMath_V","name":"dscale"}}]
execute store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get dscale swMath_V
execute store result entity @s transformation.scale[1] float 0.0001 run scoreboard players get dscale swMath_V
execute store result entity @s transformation.scale[2] float 0.0001 run scoreboard players get dscale swMath_V

# newshift = dyshift - old + new
scoreboard players operation dyshift swMath_V += new_r swMath_V
scoreboard players operation dyshift swMath_V -= old_r swMath_V
execute store result entity @s transformation.translation[1] float 0.0001 run scoreboard players get dyshift swMath_V

# load Q once
execute store result score #Q1 swMath_V run data get entity @s transformation.right_rotation[0] 10000
execute store result score #Q2 swMath_V run data get entity @s transformation.right_rotation[1] 10000
execute store result score #Q3 swMath_V run data get entity @s transformation.right_rotation[2] 10000
execute store result score #Q4 swMath_V run data get entity @s transformation.right_rotation[3] 10000
scoreboard players operation @s swPool_Q1 = #Q1 swMath_V
scoreboard players operation @s swPool_Q2 = #Q2 swMath_V
scoreboard players operation @s swPool_Q3 = #Q3 swMath_V
scoreboard players operation @s swPool_Q4 = #Q4 swMath_V