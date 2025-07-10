data merge entity @s {Pose:{Head:[0.0001f,0.0f,0.0f]}}
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= C_3600000 swPool_C
execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players get #vOut swMath_V
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= C_3600000 swPool_C
execute store result entity @s Pose.Head[1] float 0.0001 run scoreboard players get #vOut swMath_V
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= C_3600000 swPool_C
execute store result entity @s Pose.Head[2] float 0.0001 run scoreboard players get #vOut swMath_V