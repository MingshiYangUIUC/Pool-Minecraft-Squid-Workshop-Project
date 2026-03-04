# rotate H and V by theta

# input is #HHin swMath_V, #VVin swMath_V, #TTin swMath_V (radians)

#     # do these
#     cos_t = np.cos(theta) theta = +-2.0944 (120deg) # positive if high tip, negative if low tip
#     sin_t = np.sin(theta)
#     H' = cos_t * H - sin_t * V
#     V' = sin_t * H + cos_t * V

scoreboard players operation #vIn swMath_V = #TTin swMath_V
function math:classes/core/trig/sin_rad
scoreboard players operation #sint swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = #TTin swMath_V
function math:classes/core/trig/cos_rad
scoreboard players operation #cost swMath_V = #vOut swMath_V

#tellraw @a [{"text":"sint, "},{"score":{"objective":"swMath_V","name":"#sint"}}]
#tellraw @a [{"text":"cost, "},{"score":{"objective":"swMath_V","name":"#cost"}}]

scoreboard players operation #a swMath_V = #HHin swMath_V
scoreboard players operation #b swMath_V = #VVin swMath_V
scoreboard players operation #c swMath_V = #HHin swMath_V
scoreboard players operation #d swMath_V = #VVin swMath_V

scoreboard players set #HHout swMath_V 0

scoreboard players operation #a swMath_V *= #cost swMath_V
scoreboard players operation #a swMath_V /= #C_10000 swMath_C
scoreboard players operation #HHout swMath_V += #a swMath_V

scoreboard players operation #b swMath_V *= #sint swMath_V
scoreboard players operation #b swMath_V /= #C_10000 swMath_C
scoreboard players operation #HHout swMath_V -= #b swMath_V

scoreboard players set #VVout swMath_V 0

scoreboard players operation #c swMath_V *= #sint swMath_V
scoreboard players operation #c swMath_V /= #C_10000 swMath_C
scoreboard players operation #VVout swMath_V += #c swMath_V

scoreboard players operation #d swMath_V *= #cost swMath_V
scoreboard players operation #d swMath_V /= #C_10000 swMath_C
scoreboard players operation #VVout swMath_V += #d swMath_V

# outputs are #HHout swMath_V, and #VVout swMath_V
