# recursive collision penalty
execute if score #maxcalcscore swMath_V matches 1.. run scoreboard players operation #maxcalcscore swMath_V *= #penalty_factor swMath_V
execute if score #maxcalcscore swMath_V matches 1.. run scoreboard players operation #maxcalcscore swMath_V /= #C_100 swMath_C
scoreboard players remove #collision_extra swMath_V 1
execute if score #collision_extra swMath_V matches 1.. if score #maxcalcscore swMath_V matches 1.. run function pool:classes/bot/generic/_penalize_dx_collision