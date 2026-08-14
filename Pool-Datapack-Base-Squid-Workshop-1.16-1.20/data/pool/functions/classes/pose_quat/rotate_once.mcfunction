
#  take x1, y1, z1, w1 = #dQ1, #dQ2, #dQ3, #dQ4
#  take x2, y2, z2, w2 = #Q1, #Q2, #Q3, #Q4
#  Output is 
#    w1*x2 + x1*w2 + y1*z2 - z1*y2,
#    w1*y2 - x1*z2 + y1*w2 + z1*x2,
#    w1*z2 + x1*y2 - y1*x2 + z1*w2,
#    w1*w2 - x1*x2 - y1*y2 - z1*z2

# w1*x2
scoreboard players operation #w1x2 swMath_V = #dQ4 swMath_V
scoreboard players operation #w1x2 swMath_V *= #Q1 swMath_V

# x1*w2
scoreboard players operation #x1w2 swMath_V = #dQ1 swMath_V
scoreboard players operation #x1w2 swMath_V *= #Q4 swMath_V

# y1*z2
scoreboard players operation #y1z2 swMath_V = #dQ2 swMath_V
scoreboard players operation #y1z2 swMath_V *= #Q3 swMath_V

# z1*y2
scoreboard players operation #z1y2 swMath_V = #dQ3 swMath_V
scoreboard players operation #z1y2 swMath_V *= #Q2 swMath_V


# w1*y2
scoreboard players operation #w1y2 swMath_V = #dQ4 swMath_V
scoreboard players operation #w1y2 swMath_V *= #Q2 swMath_V

# x1*z2
scoreboard players operation #x1z2 swMath_V = #dQ1 swMath_V
scoreboard players operation #x1z2 swMath_V *= #Q3 swMath_V

# y1*w2
scoreboard players operation #y1w2 swMath_V = #dQ2 swMath_V
scoreboard players operation #y1w2 swMath_V *= #Q4 swMath_V

# z1*x2
scoreboard players operation #z1x2 swMath_V = #dQ3 swMath_V
scoreboard players operation #z1x2 swMath_V *= #Q1 swMath_V


# w1*z2
scoreboard players operation #w1z2 swMath_V = #dQ4 swMath_V
scoreboard players operation #w1z2 swMath_V *= #Q3 swMath_V

# x1*y2
scoreboard players operation #x1y2 swMath_V = #dQ1 swMath_V
scoreboard players operation #x1y2 swMath_V *= #Q2 swMath_V

# y1*x2
scoreboard players operation #y1x2 swMath_V = #dQ2 swMath_V
scoreboard players operation #y1x2 swMath_V *= #Q1 swMath_V

# z1*w2
scoreboard players operation #z1w2 swMath_V = #dQ3 swMath_V
scoreboard players operation #z1w2 swMath_V *= #Q4 swMath_V


# w1*w2
scoreboard players operation #w1w2 swMath_V = #dQ4 swMath_V
scoreboard players operation #w1w2 swMath_V *= #Q4 swMath_V

# x1*x2
scoreboard players operation #x1x2 swMath_V = #dQ1 swMath_V
scoreboard players operation #x1x2 swMath_V *= #Q1 swMath_V

# y1*y2
scoreboard players operation #y1y2 swMath_V = #dQ2 swMath_V
scoreboard players operation #y1y2 swMath_V *= #Q2 swMath_V

# z1*z2
scoreboard players operation #z1z2 swMath_V = #dQ3 swMath_V
scoreboard players operation #z1z2 swMath_V *= #Q3 swMath_V


# Get output

scoreboard players operation #nQ1 swMath_V = #w1x2 swMath_V
scoreboard players operation #nQ1 swMath_V += #x1w2 swMath_V
scoreboard players operation #nQ1 swMath_V += #y1z2 swMath_V
scoreboard players operation #nQ1 swMath_V -= #z1y2 swMath_V

scoreboard players operation #nQ2 swMath_V = #w1y2 swMath_V
scoreboard players operation #nQ2 swMath_V -= #x1z2 swMath_V
scoreboard players operation #nQ2 swMath_V += #y1w2 swMath_V
scoreboard players operation #nQ2 swMath_V += #z1x2 swMath_V

scoreboard players operation #nQ3 swMath_V = #w1z2 swMath_V
scoreboard players operation #nQ3 swMath_V += #x1y2 swMath_V
scoreboard players operation #nQ3 swMath_V -= #y1x2 swMath_V
scoreboard players operation #nQ3 swMath_V += #z1w2 swMath_V

scoreboard players operation #nQ4 swMath_V = #w1w2 swMath_V
scoreboard players operation #nQ4 swMath_V -= #x1x2 swMath_V
scoreboard players operation #nQ4 swMath_V -= #y1y2 swMath_V
scoreboard players operation #nQ4 swMath_V -= #z1z2 swMath_V

# scale
scoreboard players operation #nQ1 swMath_V /= #C_10000 swMath_C
scoreboard players operation #nQ2 swMath_V /= #C_10000 swMath_C
scoreboard players operation #nQ3 swMath_V /= #C_10000 swMath_C
scoreboard players operation #nQ4 swMath_V /= #C_10000 swMath_C

# normalize?
scoreboard players operation #norm swMath_V = #accumulator swMath_V
scoreboard players operation #norm swMath_V %= #C_10 swMath_C

execute if score #norm swMath_V matches 1 run function pool:classes/pose_quat/q_normalize_helper

# update values
scoreboard players operation #Q1 swMath_V = #nQ1 swMath_V
scoreboard players operation #Q2 swMath_V = #nQ2 swMath_V
scoreboard players operation #Q3 swMath_V = #nQ3 swMath_V
scoreboard players operation #Q4 swMath_V = #nQ4 swMath_V

# decrease remaining time
# scoreboard players operation maxRdt swMath_V -= DT swMath_V
# enter loop again if needed
# execute if score maxRdt swMath_V matches 1.. run function pool:classes/pose_quat/rotate_loop
# if time is finished, return to rotate_init...