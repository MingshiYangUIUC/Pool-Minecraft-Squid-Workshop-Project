#scoreboard players set cuex swMath_V 2000
#scoreboard players set cuey swMath_V 2000



# get "x" distance from ball center

scoreboard players operation #vIn2 swMath_V = cuey swMath_V
scoreboard players operation #vIn swMath_V = cuex swMath_V

function math:classes/core/trig/arctan2_rad

#tellraw @a [{"text":"vOut = "},{"score":{"name":"#vOut","objective":"swMath_V"}}]

scoreboard players operation #vOut swMath_V *= #C_1000 swMath_C
scoreboard players operation #vOut swMath_V /= #C_314159 swMath_C
scoreboard players operation #vOut swMath_V *= #C_100 swMath_C

#tellraw @a [{"text":"vOut = "},{"score":{"name":"#vOut","objective":"swMath_V"}}]

scoreboard players set cue180 swMath_V 180
scoreboard players operation #vOut swMath_V *= cue180 swMath_V

#tellraw @a [{"text":"vOut deg = "},{"score":{"name":"#vOut","objective":"swMath_V"}}]

scoreboard players operation x swPool_var00 = #vOut swMath_V
scoreboard players set cue360 swMath_V 3600000

scoreboard players operation x swPool_var00 += cue360 swMath_V
scoreboard players operation x swPool_var00 %= cue360 swMath_V

#tellraw @a [{"text":"x = "},{"score":{"name":"x","objective":"swPool_var00"}}]


# get "stka" strike angle

scoreboard players operation x2 swMath_V = cuex swMath_V
scoreboard players operation x2 swMath_V *= cuex swMath_V
scoreboard players operation y2 swMath_V = cuey swMath_V
scoreboard players operation y2 swMath_V *= cuey swMath_V

scoreboard players operation #vIn swMath_V = x2 swMath_V
scoreboard players operation #vIn swMath_V += y2 swMath_V

function math:classes/core/operations/sqrt

#tellraw @a [{"text":"sqrt = "},{"score":{"name":"#vOut","objective":"swMath_V"}}]

scoreboard players operation #vIn swMath_V = #vOut swMath_V

function math:classes/core/trig/arcsin_rad

function math:classes/core/util/swap
function math:classes/core/util/rad2deg


scoreboard players operation stka swPool_var00 = #vOut swMath_V

#tellraw @a [{"text":""}]
#tellraw @a [{"text":"stka = "},{"score":{"name":"stka","objective":"swPool_var00"}}]
#tellraw @a [{"text":"x = "},{"score":{"name":"x","objective":"swPool_var00"}}]