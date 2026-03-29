function math:classes/core/random/randint_base
scoreboard players operation #vAi swMath_V %= #C_10000 swMath_C
scoreboard players operation #vAi swMath_V *= #C_2 swMath_C
scoreboard players operation #vAi swMath_V -= #C_10000 swMath_C

function math:classes/core/random/randint_base
scoreboard players operation #vAj swMath_V %= #C_10000 swMath_C
scoreboard players operation #vAj swMath_V *= #C_2 swMath_C
scoreboard players operation #vAj swMath_V -= #C_10000 swMath_C

function math:classes/core/random/randint_base
scoreboard players operation #vAk swMath_V %= #C_10000 swMath_C
scoreboard players operation #vAk swMath_V *= #C_2 swMath_C
scoreboard players operation #vAk swMath_V -= #C_10000 swMath_C

function math:classes/core/random/randint_base
scoreboard players operation #vAl swMath_V %= #C_10000 swMath_C
scoreboard players operation #vAl swMath_V *= #C_2 swMath_C
scoreboard players operation #vAl swMath_V -= #C_10000 swMath_C

function pool:classes/pose_quat/q_normalize

execute store result entity @s transformation.right_rotation[0] float 0.0001 run scoreboard players get #vOi swMath_V
execute store result entity @s transformation.right_rotation[1] float 0.0001 run scoreboard players get #vOj swMath_V
execute store result entity @s transformation.right_rotation[2] float 0.0001 run scoreboard players get #vOk swMath_V
execute store result entity @s transformation.right_rotation[3] float 0.0001 run scoreboard players get #vOl swMath_V