scoreboard players operation #dx_tgt swMath_V = @s swPool_tmpposx
scoreboard players operation #dz_tgt swMath_V = @s swPool_tmpposz
scoreboard players operation #dvx_tgt swMath_V = @s swPool_vex
scoreboard players operation #dvz_tgt swMath_V = @s swPool_vez

scoreboard players operation #dx_tgt swMath_V -= D2x_self swMath_V
scoreboard players operation #dz_tgt swMath_V -= D2z_self swMath_V
scoreboard players operation #dvx_tgt swMath_V -= V2x_self swMath_V
scoreboard players operation #dvz_tgt swMath_V -= V2z_self swMath_V

# Convert relative velocity to same unit as distance (m/tick*10000)
scoreboard players operation #dvx_tgt swMath_V /= #C_20 swMath_C
scoreboard players operation #dvz_tgt swMath_V /= #C_20 swMath_C

# direction check
scoreboard players operation #dot swMath_V = #dvx_tgt swMath_V
scoreboard players operation #dot swMath_V *= #dx_tgt swMath_V
scoreboard players operation #tmp swMath_V = #dvz_tgt swMath_V
scoreboard players operation #tmp swMath_V *= #dz_tgt swMath_V
scoreboard players operation #dot swMath_V += #tmp swMath_V

execute if score #dot swMath_V matches 1.. run tag @s remove swPool_near