# Input is #vIn and #vIn2, return #vIn2 / #vIn with flexible precision: 10000 represent 1.0000

execute store result score #vOut swMath_V run compute default float {type:"minecraft:div",left:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#vIn2"},score:"swMath_V"}},right:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#vIn"},score:"swMath_V"}}} 10000
