
#  take x1, y1, z1, w1 = #dQ1, #dQ2, #dQ3, #dQ4
#  take x2, y2, z2, w2 = #Q1, #Q2, #Q3, #Q4
#  Output is 
#    w1*x2 + x1*w2 + y1*z2 - z1*y2,
#    w1*y2 - x1*z2 + y1*w2 + z1*x2,
#    w1*z2 + x1*y2 - y1*x2 + z1*w2,
#    w1*w2 - x1*x2 - y1*y2 - z1*z2

# nQ1 = (w1*x2 + x1*w2 + y1*z2 - z1*y2) / 10000
execute store result score #nQ1 swMath_V run compute default float {type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ4"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q1"},score:"swMath_V"}}]},{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ1"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q4"},score:"swMath_V"}}]},{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ2"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q3"},score:"swMath_V"}}]},{type:"minecraft:negate",input:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ3"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q2"},score:"swMath_V"}}]}}]} 0.0001

# nQ2 = (w1*y2 - x1*z2 + y1*w2 + z1*x2) / 10000
execute store result score #nQ2 swMath_V run compute default float {type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ4"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q2"},score:"swMath_V"}}]},{type:"minecraft:negate",input:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ1"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q3"},score:"swMath_V"}}]}},{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ2"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q4"},score:"swMath_V"}}]},{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ3"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q1"},score:"swMath_V"}}]}]} 0.0001

# nQ3 = (w1*z2 + x1*y2 - y1*x2 + z1*w2) / 10000
execute store result score #nQ3 swMath_V run compute default float {type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ4"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q3"},score:"swMath_V"}}]},{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ1"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q2"},score:"swMath_V"}}]},{type:"minecraft:negate",input:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ2"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q1"},score:"swMath_V"}}]}},{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ3"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q4"},score:"swMath_V"}}]}]} 0.0001

# nQ4 = (w1*w2 - x1*x2 - y1*y2 - z1*z2) / 10000
execute store result score #nQ4 swMath_V run compute default float {type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ4"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q4"},score:"swMath_V"}}]},{type:"minecraft:negate",input:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ1"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q1"},score:"swMath_V"}}]}},{type:"minecraft:negate",input:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ2"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q2"},score:"swMath_V"}}]}},{type:"minecraft:negate",input:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dQ3"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#Q3"},score:"swMath_V"}}]}}]} 0.0001

# normalize?
scoreboard players operation #norm swMath_V = #accumulator swMath_V
scoreboard players operation #norm swMath_V %= #C_10 swMath_C

execute if score #norm swMath_V matches 1 run function pool:classes/pose_quat/q_normalize_helper

# update values
scoreboard players operation #Q1 swMath_V = #nQ1 swMath_V
scoreboard players operation #Q2 swMath_V = #nQ2 swMath_V
scoreboard players operation #Q3 swMath_V = #nQ3 swMath_V
scoreboard players operation #Q4 swMath_V = #nQ4 swMath_V

# decrease remaining time
# scoreboard players operation maxRdt swMath_V -= DT swMath_V
# enter loop again if needed
# execute if score maxRdt swMath_V matches 1.. run function pool:classes/pose_quat/rotate_loop
# if time is finished, return to rotate_init...