# vector from cue to the object ball (blocker or target)
# would use #a_center, #a_half, and #dist

scoreboard players operation #fbdx swMath_V = #xobj swMath_V
scoreboard players operation #fbdz swMath_V = #zobj swMath_V

scoreboard players operation #fbdx swMath_V -= #xcue swMath_V
scoreboard players operation #fbdz swMath_V -= #zcue swMath_V

# similar to arctan but deal with quadrants arctan(#vIn2/#vIn)
# input variable is #vIn, #vIn2 swMath_V
# output variable is #vOut swMath_V
scoreboard players operation #vIn2 swMath_V = #fbdx swMath_V
scoreboard players operation #vIn swMath_V = #fbdz swMath_V

function pool:classes/math/arctan2_rad

scoreboard players operation #a_center swMath_V = #vOut swMath_V

# distance squared
scoreboard players operation #fbdx2 swMath_V = #fbdx swMath_V
scoreboard players operation #fbdx2 swMath_V /= #C_10 swMath_C
scoreboard players operation #fbdx2 swMath_V *= #fbdx2 swMath_V
scoreboard players operation #dist2 swMath_V = #fbdz swMath_V
scoreboard players operation #dist2 swMath_V /= #C_10 swMath_C
scoreboard players operation #dist2 swMath_V *= #dist2 swMath_V

scoreboard players operation #dist2 swMath_V += #fbdx2 swMath_V

# distance
scoreboard players operation #vIn swMath_V = #dist2 swMath_V
function math:classes/core/operations/sqrt
scoreboard players operation #dist swMath_V = #vOut swMath_V
scoreboard players operation #dist swMath_V *= #C_10 swMath_C

# half angle
scoreboard players operation #2r swMath_V = C_r swPool_C
scoreboard players operation #2r swMath_V *= #C_2 swMath_C
scoreboard players operation #2r swMath_V *= #C_10000 swMath_C
scoreboard players operation #2r swMath_V /= #dist swMath_V
scoreboard players operation #vIn swMath_V = #2r swMath_V

function math:classes/core/trig/arcsin_rad
scoreboard players operation #a_half swMath_V = #vOut swMath_V
