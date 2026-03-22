
scoreboard players operation #1abs swMath_V = #vIn swMath_V
scoreboard players operation #2abs swMath_V = #vIn2 swMath_V

execute if score #1abs swMath_V >= #2abs swMath_V run scoreboard players operation #vIn swMath_V = #1abs swMath_V
execute unless score #1abs swMath_V >= #2abs swMath_V run scoreboard players operation #vIn swMath_V = #2abs swMath_V

execute if score #1abs swMath_V >= #2abs swMath_V run scoreboard players operation #vIn2 swMath_V = #2abs swMath_V
execute unless score #1abs swMath_V >= #2abs swMath_V run scoreboard players operation #vIn2 swMath_V = #1abs swMath_V

function math:classes/supp/division/div10_round
scoreboard players operation #vOut_Mag swMath_V *= #C_10 swMath_C
scoreboard players operation #vIn swMath_V = #vOut swMath_V

scoreboard players operation #mul swMath_V = #vIn swMath_V
scoreboard players operation #mul swMath_V *= #vIn2 swMath_V
scoreboard players operation #div swMath_V = #mul swMath_V
scoreboard players operation #div swMath_V /= #vIn2 swMath_V

#tellraw @a [{"text":"a: "},{"score":{"name": "#vIn","objective": "swMath_V"}}]
#tellraw @a [{"text":"b: "},{"score":{"name": "#vIn2","objective": "swMath_V"}}]

execute unless score #div swMath_V = #vIn swMath_V run function math:classes/supp/multiply/scalemul