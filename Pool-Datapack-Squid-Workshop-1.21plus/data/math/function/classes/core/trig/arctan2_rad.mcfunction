# similar to arctan but deal with quadrants arctan(#vIn2/#vIn)
# input variable is #vIn, #vIn2 swMath_V
# output variable is #vOut swMath_V

# Get quadrants
scoreboard players set #Quad swMath_V 1
execute if score #vIn swMath_V matches 0 if score #vIn2 swMath_V matches 0.. run scoreboard players set #Quad swMath_V 12
execute if score #vIn swMath_V matches 0 if score #vIn2 swMath_V matches ..-1 run scoreboard players set #Quad swMath_V 34
execute if score #vIn swMath_V matches ..-1 if score #vIn2 swMath_V matches 0.. run scoreboard players set #Quad swMath_V 2
execute if score #vIn swMath_V matches ..-1 if score #vIn2 swMath_V matches ..-1 run scoreboard players set #Quad swMath_V 3

# If #vIn2 < #vIn: swap and use the relation +-pi/2 - arctan(1/#x) = arctan(#x).
#scoreboard players set #xyswap swMath_V 0
#scoreboard players operation #x2 swMath_V = #vIn swMath_V
#scoreboard players operation #y2 swMath_V = #vIn2 swMath_V
#execute if score #x2 swMath_V matches ..-1 run scoreboard players operation #x2 swMath_V *= #C_-1 swMath_C
#execute if score #y2 swMath_V matches ..-1 run scoreboard players operation #y2 swMath_V *= #C_-1 swMath_C
#execute if score #y2 swMath_V < #x2 swMath_V run scoreboard players set #xyswap swMath_V 1
#execute if score #xyswap swMath_V matches 1 run scoreboard players operation #vp swMath_V = #vIn swMath_V
#execute if score #xyswap swMath_V matches 1 run scoreboard players operation #vIn swMath_V = #vIn2 swMath_V
#execute if score #xyswap swMath_V matches 1 run scoreboard players operation #vIn2 swMath_V = #vp swMath_V

#tellraw @a[tag=swMath_debug] [{"text":"#vIn: "},{"score":{"name": "#vIn","objective": "swMath_V"}}]
#tellraw @a[tag=swMath_debug] [{"text":"#vIn2: "},{"score":{"name": "#vIn2","objective": "swMath_V"}}]


# Division with flexible precision
function math:classes/core/operations/division_4d

# Preparation
scoreboard players operation #vIn swMath_V = #vOut swMath_V
scoreboard players operation #x swMath_V = #vIn swMath_V
scoreboard players set #n2 swMath_V 1
execute if score #x swMath_V matches ..-1 run scoreboard players set #n2 swMath_V -1
execute if score #x swMath_V matches ..-1 run scoreboard players operation #x swMath_V *= #C_-1 swMath_C

# calculation
function math:classes/supp/arctan_ranges/helper
#tellraw @a[tag=swMath_debug] [{"text":"#y: "},{"score":{"name": "#y","objective": "swMath_V"}}]
scoreboard players operation #y swMath_V *= #n2 swMath_V

# deal with swap and quadrants
#execute if score #xyswap swMath_V matches 1 run scoreboard players set #hpi swMath_V 15708
#execute if score #xyswap swMath_V matches 1 run scoreboard players operation #hpi swMath_V *= #n2 swMath_V
#execute if score #xyswap swMath_V matches 1 run scoreboard players operation #hpi swMath_V -= #y swMath_V
#execute if score #xyswap swMath_V matches 1 run scoreboard players operation #y swMath_V = #hpi swMath_V

execute if score #Quad swMath_V matches 2 run scoreboard players add #y swMath_V 31416
execute if score #Quad swMath_V matches 3 run scoreboard players remove #y swMath_V 31416
execute if score #Quad swMath_V matches 12 run scoreboard players set #y swMath_V 15708
execute if score #Quad swMath_V matches 34 run scoreboard players set #y swMath_V 47124
scoreboard players operation #y swMath_V %= #C_62832 swMath_C

# return
scoreboard players operation #vOut swMath_V = #y swMath_V
#tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]
