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
function pool:classes/math/division_4d

# Preparation
scoreboard players operation #vIn swMath_V = #vOut swMath_V
scoreboard players operation #x swMath_V = #vIn swMath_V
scoreboard players set #n2 swMath_V 1
execute if score #x swMath_V matches ..-1 run scoreboard players set #n2 swMath_V -1
execute if score #x swMath_V matches ..-1 run scoreboard players operation #x swMath_V *= #C_-1 swMath_C

# calculation
# 0 <= x <= 1
execute if score #x swMath_V matches 0..10000 store result score #y swMath_V run compute default float {"type":"minecraft:div","left":{"type":"minecraft:mul","inputs":[8.0,{"type":"minecraft:div","left":{"type":"minecraft:from_int","input":{"type":"minecraft:score","target":{"type":"fixed","name":"#x"},"score":"swMath_V"}},"right":10000.0}]},"right":{"type":"minecraft:add","inputs":[3.0,{"type":"minecraft:sqrt","input":{"type":"minecraft:add","inputs":[25.0,{"type":"minecraft:mul","inputs":[26.6666667,{"type":"minecraft:mul","inputs":[{"type":"minecraft:div","left":{"type":"minecraft:from_int","input":{"type":"minecraft:score","target":{"type":"fixed","name":"#x"},"score":"swMath_V"}},"right":10000.0},{"type":"minecraft:div","left":{"type":"minecraft:from_int","input":{"type":"minecraft:score","target":{"type":"fixed","name":"#x"},"score":"swMath_V"}},"right":10000.0}]}]}]}}]}} 10000
# x > 1
execute if score #x swMath_V matches 10001.. store result score #y swMath_V run compute default float {"type":"minecraft:add","inputs":[1.5707963,{"type":"minecraft:negate","input":{"type":"minecraft:div","left":{"type":"minecraft:mul","inputs":[8.0,{"type":"minecraft:div","left":10000.0,"right":{"type":"minecraft:from_int","input":{"type":"minecraft:score","target":{"type":"fixed","name":"#x"},"score":"swMath_V"}}}]},"right":{"type":"minecraft:add","inputs":[3.0,{"type":"minecraft:sqrt","input":{"type":"minecraft:add","inputs":[25.0,{"type":"minecraft:mul","inputs":[26.6666667,{"type":"minecraft:mul","inputs":[{"type":"minecraft:div","left":10000.0,"right":{"type":"minecraft:from_int","input":{"type":"minecraft:score","target":{"type":"fixed","name":"#x"},"score":"swMath_V"}}},{"type":"minecraft:div","left":10000.0,"right":{"type":"minecraft:from_int","input":{"type":"minecraft:score","target":{"type":"fixed","name":"#x"},"score":"swMath_V"}}}]}]}]}}]}}}]} 10000

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
