#scoreboard players set @s swPool_cuex 2000
#scoreboard players set @s swPool_cuey 2000



# get "x" distance from ball center

scoreboard players operation #vIn2 swMath_V = @s swPool_cuey
scoreboard players operation #vIn swMath_V = @s swPool_cuex

function math:classes/core/trig/arctan2_rad

#tellraw @a [{"text":"vOut = "},{"score":{"name":"#vOut","objective":"swMath_V"}}]

scoreboard players operation #vOut swMath_V *= #C_1000 swMath_C
scoreboard players operation #vOut swMath_V /= #C_314159 swMath_C
scoreboard players operation #vOut swMath_V *= #C_100 swMath_C

#tellraw @a [{"text":"vOut = "},{"score":{"name":"#vOut","objective":"swMath_V"}}]

scoreboard players set cue180 swMath_V 180
scoreboard players operation #vOut swMath_V *= cue180 swMath_V

#tellraw @a [{"text":"vOut deg = "},{"score":{"name":"#vOut","objective":"swMath_V"}}]

scoreboard players operation @s swPool_cuer = #vOut swMath_V
scoreboard players set cue360 swMath_V 3600000

scoreboard players operation @s swPool_cuer += cue360 swMath_V
scoreboard players operation @s swPool_cuer %= cue360 swMath_V

#tellraw @a [{"text":"x = "},{"score":{"name":"x","objective":"swPool_var00"}}]


# get "stka" strike angle

scoreboard players operation x2 swMath_V = @s swPool_cuex
scoreboard players operation x2 swMath_V *= @s swPool_cuex
scoreboard players operation y2 swMath_V = @s swPool_cuey
scoreboard players operation y2 swMath_V *= @s swPool_cuey

scoreboard players operation #vIn swMath_V = x2 swMath_V
scoreboard players operation #vIn swMath_V += y2 swMath_V

function math:classes/core/operations/sqrt

#tellraw @a [{"text":"sqrt = "},{"score":{"name":"#vOut","objective":"swMath_V"}}]

scoreboard players operation #vIn swMath_V = #vOut swMath_V

function math:classes/core/trig/arcsin_rad

function math:classes/core/util/swap
function math:classes/core/util/rad2deg


scoreboard players operation @s swPool_cuea = #vOut swMath_V

#tellraw @a [{"text":""}]
#tellraw @a [{"text":"stka = "},{"score":{"name":"stka","objective":"swPool_var00"}}]
#tellraw @a [{"text":"x = "},{"score":{"name":"x","objective":"swPool_var00"}}]