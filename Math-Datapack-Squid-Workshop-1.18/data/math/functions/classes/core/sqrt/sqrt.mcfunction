# input is vIn swMath_V

execute if score vIn swMath_V matches ..-1 run scoreboard players set vIn swMath_V 0
scoreboard players operation SQRT0 swMath_V = vIn swMath_V
scoreboard players set SQRT1 swMath_V 4000
scoreboard players set SQRT2 swMath_V 0
#scoreboard players set SQRT3 swMath_C 2
execute unless score SQRT1 swMath_V = SQRT2 swMath_V run function math:classes/core/sqrt/sqrt_operation

#tellraw @a[tag=swMath_debug] [{"text":"In: "},{"score":{"name": "vIn","objective": "swMath_V"}}]
#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]