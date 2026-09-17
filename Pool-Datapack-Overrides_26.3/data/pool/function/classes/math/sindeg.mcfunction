# input is @s swPool_var00
# out is @s swPool_var00

scoreboard players operation #x swMath_V = @s swPool_var00
scoreboard players operation #x swMath_V %= C_3600000 swPool_C

execute store result score @s swPool_var00 run compute default float {type:"minecraft:sin",input:{type:"minecraft:div",left:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"context",target:"this"},score:"swPool_var00"}},right:572957.79513}} 10000
