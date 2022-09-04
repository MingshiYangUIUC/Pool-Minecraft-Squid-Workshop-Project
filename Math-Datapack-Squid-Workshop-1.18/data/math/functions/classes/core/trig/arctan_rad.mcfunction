# input variable is vIn swMath_V
# output variable is vOut swMath_V

# Preparation
scoreboard players operation x swMath_V = vIn swMath_V
scoreboard players set n2 swMath_V 1
execute if score x swMath_V matches ..-1 run scoreboard players set n2 swMath_V -1
execute if score x swMath_V matches ..-1 run scoreboard players operation x swMath_V *= C_-1 swMath_C

# calculation
#tellraw @a[tag=swMath_debug] [{"text":" n: "},{"score":{"name": "n2","objective": "swMath_V"}}]

function math:classes/supp/arctan_ranges/helper
#tellraw @a[tag=swMath_debug] [{"text":"y: "},{"score":{"name": "y","objective": "swMath_V"}},{"text":" n: "},{"score":{"name": "n2","objective": "swMath_V"}}]
scoreboard players operation y swMath_V *= n2 swMath_V

# return
scoreboard players operation vOut swMath_V = y swMath_V
#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "y","objective": "swMath_V"}}]
#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]