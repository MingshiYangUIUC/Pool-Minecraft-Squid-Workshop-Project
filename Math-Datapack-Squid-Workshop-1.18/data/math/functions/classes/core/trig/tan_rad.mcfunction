# input variable is vIn swMath_V
# output variable is vOut swMath_V

# Preparation
scoreboard players operation x swMath_V = vIn swMath_V
scoreboard players set n swMath_V 1
execute if score x swMath_V matches ..-1 run scoreboard players set n swMath_V -1
execute if score x swMath_V matches ..-1 run scoreboard players operation x swMath_V *= C_-1 swMath_C
scoreboard players operation x swMath_V %= C_31416 swMath_C
scoreboard players set xx swMath_V 0
execute if score x swMath_V matches 15708 run scoreboard players set xx swMath_V 15708
scoreboard players set f swMath_V 1
execute if score x swMath_V matches 15709.. run scoreboard players set f swMath_V -1
execute if score f swMath_V matches -1 run scoreboard players remove x swMath_V 31416
execute if score f swMath_V matches -1 run scoreboard players operation x swMath_V *= C_-1 swMath_C
scoreboard players set y swMath_V 100000000
scoreboard players set k swMath_V 15708
scoreboard players operation k swMath_V -= x swMath_V
execute if score k swMath_V matches ..-1 run scoreboard players operation k swMath_V *= C_-1 swMath_C
scoreboard players operation y swMath_V /= k swMath_V
scoreboard players operation kk swMath_V = k swMath_V
scoreboard players operation kk swMath_V /= C_3 swMath_C
scoreboard players operation y swMath_V -= kk swMath_V

#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "y","objective": "swMath_V"}}]

# calculation
function math:classes/supp/tan_ranges/helper
scoreboard players operation y swMath_V *= n swMath_V
scoreboard players operation y swMath_V *= f swMath_V
execute if score xx swMath_V matches 15708 run scoreboard players set y swMath_V -2147483648

# return
scoreboard players operation vOut swMath_V = y swMath_V
tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]