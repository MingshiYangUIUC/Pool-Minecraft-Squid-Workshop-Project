# input variable is vIn swMath_V
# output variable is vOut swMath_V

# uses arcsin_rad function: pi/2 - arcsin

function math:classes/core/trig/arcsin_rad
scoreboard players set y swMath_V 15708
scoreboard players operation y swMath_V -= vOut swMath_V

# return
scoreboard players operation vOut swMath_V = y swMath_V
#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]