scoreboard players operation #dx_tgt swMath_V = @s swPool_tmpposx
scoreboard players operation #dz_tgt swMath_V = @s swPool_tmpposz
scoreboard players operation #dvx_tgt swMath_V = @s swPool_vex
scoreboard players operation #dvz_tgt swMath_V = @s swPool_vez

scoreboard players operation #dx_tgt swMath_V -= D2x_self swMath_V
scoreboard players operation #dz_tgt swMath_V -= D2z_self swMath_V
scoreboard players operation #dvx_tgt swMath_V -= V2x_self swMath_V
scoreboard players operation #dvz_tgt swMath_V -= V2z_self swMath_V

execute store result score #dot swMath_V run compute default float {type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dvx_tgt"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dx_tgt"},score:"swMath_V"}}]},{type:"minecraft:mul",inputs:[{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dvz_tgt"},score:"swMath_V"}},{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#dz_tgt"},score:"swMath_V"}}]}]}

execute if score #dot swMath_V matches 1.. run tag @s remove swPool_near