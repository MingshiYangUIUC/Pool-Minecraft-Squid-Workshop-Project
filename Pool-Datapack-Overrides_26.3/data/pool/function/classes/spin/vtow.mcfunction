#w = (n X v)/r

# unit of ve: same as v: 100000000 -> 1m/tick
# unit of final ve: 200000 -> 1m/tick -> 20 m/s -> 25.46 spins per second -> 160 rad / s
# unit of w: m/s / r -> rad/s

# vex = -v * sin / 5,000,000
execute store result score @s swPool_vex run compute default float {type:"minecraft:div",left:{type:"minecraft:negate",input:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_v"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_sin"}}]}},right:5000000.0}

# vez = v * cos / 5,000,000
execute store result score @s swPool_vez run compute default float {type:"minecraft:div",left:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_v"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_cos"}}]},right:5000000.0}

# wx = vez * 10000 / r
execute store result score @s swPool_wx run compute default float {type:"minecraft:div",left:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_vez"}},10000.0]},right:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"C_r"},score:"swPool_C"}}}

# wz = -vex * 10000 / r
execute store result score @s swPool_wz run compute default float {type:"minecraft:div",left:{type:"minecraft:negate",input:{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_vex"}},10000.0]}},right:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"C_r"},score:"swPool_C"}}}
