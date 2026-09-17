# return Q's magnitude (V)
# since Q is normalized from time to time we don't need to keep track of magnitude or rescale
scoreboard players operation #iSqr swMath_V = #vAi swMath_V
scoreboard players operation #jSqr swMath_V = #vAj swMath_V
scoreboard players operation #kSqr swMath_V = #vAk swMath_V
scoreboard players operation #lSqr swMath_V = #vAl swMath_V

scoreboard players operation #iSqr swMath_V *= #iSqr swMath_V
scoreboard players operation #jSqr swMath_V *= #jSqr swMath_V
scoreboard players operation #kSqr swMath_V *= #kSqr swMath_V
scoreboard players operation #lSqr swMath_V *= #lSqr swMath_V

scoreboard players operation #vIn swMath_V = #iSqr swMath_V
scoreboard players operation #vIn swMath_V += #jSqr swMath_V
scoreboard players operation #vIn swMath_V += #kSqr swMath_V
scoreboard players operation #vIn swMath_V += #lSqr swMath_V

function math:classes/core/operations/sqrt
