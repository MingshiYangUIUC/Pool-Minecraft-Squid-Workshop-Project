# direct nbt write instead of TP, works well if the ball is not potting (that needs downward tp as well)
function pool:classes/motion/direct/move

scoreboard players operation #direct_posrefresh swMath_V = #accumulator swMath_V
scoreboard players operation #direct_posrefresh swMath_V %= #C_10 swMath_C
execute if score #direct_posrefresh swMath_V matches 0 run function pool:classes/motion/direct/_pos_refresh
