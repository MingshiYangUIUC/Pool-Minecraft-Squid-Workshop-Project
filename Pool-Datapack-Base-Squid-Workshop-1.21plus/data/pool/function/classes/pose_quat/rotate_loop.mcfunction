# rotate loop function

# we now have #Q1, #Q2, #Q3, #Q4 of swMath_V # original quats
# and also  #dQ1,#dQ2,#dQ3,#dQ4 of swMath_V # deltas

# wants    #nQ1,#nQ2,#nQ3,#nQ4 of swMath_V # next quats

# write the quat_mul function using scoreboard operation logics (Qdelta mul with Q)

#  take x1, y1, z1, w1 = #dQ1, #dQ2, #dQ3, #dQ4
#  take x2, y2, z2, w2 = #Q1, #Q2, #Q3, #Q4
#  Output is 
#    w1*x2 + x1*w2 + y1*z2 - z1*y2,
#    w1*y2 - x1*z2 + y1*w2 + z1*x2,
#    w1*z2 + x1*y2 - y1*x2 + z1*w2,
#    w1*w2 - x1*x2 - y1*y2 - z1*z2

# e.g., w1*x2 calculation
# assign new var: scoreboard players operation #w1x2 swMath_V = #dQ4 swMath_V
# multiplication: scoreboard players operation #w1x2 swMath_V *= #Q1 swMath_V
# so now "#w1x2" variable holds value of is w1*x2
# do it for other variables......

# then using all 16 values... to get resulting new #nQ1,#nQ2,#nQ3,#nQ4
# e.g., output next #nQ1 calculation
# scoreboard players set #nQ1 swMath_V 0
# scoreboard players operation #nQ1 swMath_V += #w1x2 swMath_V
# scoreboard players operation #nQ1 swMath_V += #x1w2 swMath_V
# scoreboard players operation #nQ1 swMath_V += #y1z2 swMath_V
# scoreboard players operation #nQ1 swMath_V -= #z1y2 swMath_V

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

scoreboard players set #nQ1 swMath_V 0
scoreboard players operation #nQ1 swMath_V += #w1x2 swMath_V
scoreboard players operation #nQ1 swMath_V += #x1w2 swMath_V
scoreboard players operation #nQ1 swMath_V += #y1z2 swMath_V
scoreboard players operation #nQ1 swMath_V -= #z1y2 swMath_V

scoreboard players set #nQ2 swMath_V 0
scoreboard players operation #nQ2 swMath_V += #w1y2 swMath_V
scoreboard players operation #nQ2 swMath_V -= #x1z2 swMath_V
scoreboard players operation #nQ2 swMath_V += #y1w2 swMath_V
scoreboard players operation #nQ2 swMath_V += #z1x2 swMath_V

scoreboard players set #nQ3 swMath_V 0
scoreboard players operation #nQ3 swMath_V += #w1z2 swMath_V
scoreboard players operation #nQ3 swMath_V += #x1y2 swMath_V
scoreboard players operation #nQ3 swMath_V -= #y1x2 swMath_V
scoreboard players operation #nQ3 swMath_V += #z1w2 swMath_V

scoreboard players set #nQ4 swMath_V 0
scoreboard players operation #nQ4 swMath_V += #w1w2 swMath_V
scoreboard players operation #nQ4 swMath_V -= #x1x2 swMath_V
scoreboard players operation #nQ4 swMath_V -= #y1y2 swMath_V
scoreboard players operation #nQ4 swMath_V -= #z1z2 swMath_V

# scale
scoreboard players operation #nQ1 swMath_V /= #C_10000 swMath_C
scoreboard players operation #nQ2 swMath_V /= #C_10000 swMath_C
scoreboard players operation #nQ3 swMath_V /= #C_10000 swMath_C
scoreboard players operation #nQ4 swMath_V /= #C_10000 swMath_C

# normalize
scoreboard players operation #vAi swMath_V = #nQ1 swMath_V
scoreboard players operation #vAj swMath_V = #nQ2 swMath_V
scoreboard players operation #vAk swMath_V = #nQ3 swMath_V
scoreboard players operation #vAl swMath_V = #nQ4 swMath_V

function pool:classes/pose_quat/q_normalize

scoreboard players operation #nQ1 swMath_V = #vOi swMath_V
scoreboard players operation #nQ2 swMath_V = #vOj swMath_V
scoreboard players operation #nQ3 swMath_V = #vOk swMath_V
scoreboard players operation #nQ4 swMath_V = #vOl swMath_V

# update values
scoreboard players operation #Q1 swMath_V = #nQ1 swMath_V
scoreboard players operation #Q2 swMath_V = #nQ2 swMath_V
scoreboard players operation #Q3 swMath_V = #nQ3 swMath_V
scoreboard players operation #Q4 swMath_V = #nQ4 swMath_V

# decrease remaining time
scoreboard players operation maxRdt swMath_V -= DT swMath_V
# enter loop again if needed
execute if score maxRdt swMath_V matches 1.. run function pool:classes/pose_quat/rotate_loop
# if time is finished, return to rotate_init...