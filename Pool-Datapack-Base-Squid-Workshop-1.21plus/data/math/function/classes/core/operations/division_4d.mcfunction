# Input is #vIn and #vIn2, return #vIn2 / #vIn with flexible precision: 10000 represent 1.0000

# get magnitude #y/#x = #yabs/#xabs * sign
scoreboard players set #n swMath_V 1
execute if score #vIn swMath_V matches ..-1 if score #vIn2 swMath_V matches 0.. run scoreboard players set #n swMath_V -1
execute if score #vIn2 swMath_V matches ..-1 if score #vIn swMath_V matches 0.. run scoreboard players set #n swMath_V -1


scoreboard players operation #xabs swMath_V = #vIn swMath_V
scoreboard players operation #yabs swMath_V = #vIn2 swMath_V
execute if score #xabs swMath_V matches ..-1 run scoreboard players operation #xabs swMath_V *= #C_-1 swMath_C
execute if score #yabs swMath_V matches ..-1 run scoreboard players operation #yabs swMath_V *= #C_-1 swMath_C

#tellraw @a[tag=swMath_debug] [{"text":"#yabs: "},{"score":{"name": "#yabs","objective": "swMath_V"}},{"text":" #xabs: "},{"score":{"name": "#xabs","objective": "swMath_V"}}]

# get log10 difference
scoreboard players operation #ydx swMath_V = #yabs swMath_V
scoreboard players operation #ydx swMath_V /= #xabs swMath_V

#tellraw @a [{"text":"#yabs: "},{"score":{"name": "#yabs","objective": "swMath_V"}}]

# if #ydx > 10000: #y /= #x
# else: multiply #y by 10 to top and divide #x by 10 if needed (cap: 2147483648)

execute if score #ydx swMath_V matches ..9999 run function math:classes/supp/division/scale
#tellraw @a[tag=swMath_debug] [{"text":"YDX: "},{"score":{"name": "#ydx","objective": "swMath_V"}}]
#tellraw @a[tag=swMath_debug] [{"text":"#yabs: "},{"score":{"name": "#yabs","objective": "swMath_V"}},{"text":" #xabs: "},{"score":{"name": "#xabs","objective": "swMath_V"}}]

# round division
scoreboard players operation #vIn2 swMath_V = #yabs swMath_V
scoreboard players operation #vIn swMath_V = #xabs swMath_V
function math:classes/core/operations/division_round
scoreboard players operation #yabs swMath_V = #vOut swMath_V
#scoreboard players operation #yabs swMath_V /= #xabs swMath_V
#tellraw @a[tag=swMath_debug] [{"text":"ABS divide: "},{"score":{"name": "#yabs","objective": "swMath_V"}}]

#tellraw @a[tag=swMath_debug] [{"text":"Sign: "},{"score":{"name": "#n","objective": "swMath_V"}}]

scoreboard players operation #yabs swMath_V *= #n swMath_V
scoreboard players operation #vOut swMath_V = #yabs swMath_V

#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]