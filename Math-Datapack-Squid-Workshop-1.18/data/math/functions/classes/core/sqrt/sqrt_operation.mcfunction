scoreboard players operation SQRT4 swMath_V = SQRT0 swMath_V
scoreboard players operation SQRT4 swMath_V /= SQRT1 swMath_V
scoreboard players operation SQRT4 swMath_V += SQRT1 swMath_V
scoreboard players operation SQRT4 swMath_V /= SQRT3 swMath_C
scoreboard players operation SQRT2 swMath_V = SQRT1 swMath_V
scoreboard players operation SQRT5 swMath_V = SQRT4 swMath_V
scoreboard players operation SQRT5 swMath_V -= SQRT2 swMath_V
execute if score SQRT5 swMath_V matches -1..1 run scoreboard players operation vOut swMath_V = SQRT4 swMath_V
execute unless score SQRT5 swMath_V matches -1..1 run scoreboard players operation SQRT1 swMath_V = SQRT4 swMath_V
execute unless score SQRT5 swMath_V matches -1..1 run function math:classes/core/sqrt/sqrt_operation