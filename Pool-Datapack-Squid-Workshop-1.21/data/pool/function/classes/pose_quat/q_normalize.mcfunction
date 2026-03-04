# similar to unit function in math
#reutn Q's unit vector (#vOi,#vOj,#vOk,#vOl)

function pool:classes/pose_quat/q_magnitude
scoreboard players operation #vMag swMath_V = #vOut swMath_V


scoreboard players operation #vIn swMath_V = #vMag swMath_V
scoreboard players operation #vIn2 swMath_V = #vAi swMath_V
function math:classes/core/operations/division_4d
scoreboard players operation #vOi swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = #vMag swMath_V
scoreboard players operation #vIn2 swMath_V = #vAj swMath_V
function math:classes/core/operations/division_4d
scoreboard players operation #vOj swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = #vMag swMath_V
scoreboard players operation #vIn2 swMath_V = #vAk swMath_V
function math:classes/core/operations/division_4d
scoreboard players operation #vOk swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = #vMag swMath_V
scoreboard players operation #vIn2 swMath_V = #vAl swMath_V
function math:classes/core/operations/division_4d
scoreboard players operation #vOl swMath_V = #vOut swMath_V

#tellraw @a [{"text":"i: "},{"score":{"name": "#vOi","objective": "swMath_V"}}]
#tellraw @a [{"text":"j: "},{"score":{"name": "#vOj","objective": "swMath_V"}}]
#tellraw @a [{"text":"k: "},{"score":{"name": "#vOk","objective": "swMath_V"}}]
#tellraw @a [{"text":"l: "},{"score":{"name": "#vOl","objective": "swMath_V"}}]