# similar to arctan but deal with quadrants arctan(#vIn2/#vIn)
# input variable is #vIn, #vIn2 swMath_V
# output variable is #vOut swMath_V

# Get quadrants
scoreboard players set #Quad swMath_V 1
execute if score #vIn swMath_V matches 0 if score #vIn2 swMath_V matches 0.. run scoreboard players set #Quad swMath_V 12
execute if score #vIn swMath_V matches 0 if score #vIn2 swMath_V matches ..-1 run scoreboard players set #Quad swMath_V 34
execute if score #vIn swMath_V matches ..-1 if score #vIn2 swMath_V matches 0.. run scoreboard players set #Quad swMath_V 2
execute if score #vIn swMath_V matches ..-1 if score #vIn2 swMath_V matches ..-1 run scoreboard players set #Quad swMath_V 3

# Division with flexible precision
function math:classes/core/operations/division_4d

# Preparation
scoreboard players operation #vIn swMath_V = #vOut swMath_V
scoreboard players operation #x swMath_V = #vIn swMath_V
scoreboard players set #n2 swMath_V 1
execute if score #x swMath_V matches ..-1 run scoreboard players set #n2 swMath_V -1
execute if score #x swMath_V matches ..-1 run scoreboard players operation #x swMath_V *= #C_-1 swMath_C

# calculation
scoreboard players operation #xx swMath_V = #x swMath_V
# this dispatcher now accept #xx instead of #vIn
execute if score #xx swMath_V matches 0..80000 run function pool:classes/math/arctan_0_80000
# other range use old math functions
execute if score #xx swMath_V matches 80001..320000 run function math:classes/supp/arctan_ranges/320000
execute if score #xx swMath_V matches 320001..1000000 run function math:classes/supp/arctan_ranges/1000000
execute if score #xx swMath_V matches 1000001..30000000 run function math:classes/supp/arctan_ranges/30000000
execute if score #xx swMath_V matches 30000001..100000000 run function math:classes/supp/arctan_ranges/100000000
execute if score #xx swMath_V matches 100000001.. run scoreboard players set #y swMath_V 15708

#tellraw @a[tag=swMath_debug] [{"text":"#y: "},{"score":{"name": "#y","objective": "swMath_V"}}]
scoreboard players operation #y swMath_V *= #n2 swMath_V

execute if score #Quad swMath_V matches 2 run scoreboard players add #y swMath_V 31416
execute if score #Quad swMath_V matches 3 run scoreboard players remove #y swMath_V 31416
execute if score #Quad swMath_V matches 12 run scoreboard players set #y swMath_V 15708
execute if score #Quad swMath_V matches 34 run scoreboard players set #y swMath_V 47124
scoreboard players operation #y swMath_V %= #C_62832 swMath_C

# return
scoreboard players operation #vOut swMath_V = #y swMath_V
#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]
