scoreboard players operation d swMath_V = x swMath_V
scoreboard players operation d swMath_V *= d swMath_V
scoreboard players add d swMath_V 100000000
scoreboard players operation vIn swMath_V = d swMath_V
function math:classes/core/sqrt/sqrt
scoreboard players operation d swMath_V = vOut swMath_V
scoreboard players set y swMath_V 10000
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= d swMath_V
scoreboard players operation vIn swMath_V = y swMath_V
function math:classes/core/trig/arcsin_rad
scoreboard players operation y swMath_V = vOut swMath_V

#tellraw @a[tag=swMath_debug] [{"text":"y: "},{"score":{"name": "y","objective": "swMath_V"}}]