# vIn * vIn2 returning number and magnitude

scoreboard players set #sign swMath_V -1
execute if score #vIn swMath_V matches 0.. if score #vIn2 swMath_V matches 0.. run scoreboard players set #sign swMath_V 1
execute if score #vIn swMath_V matches ..-1 if score #vIn2 swMath_V matches ..-1 run scoreboard players set #sign swMath_V 1

execute if score #vIn swMath_V matches ..-1 run scoreboard players operation #vIn swMath_V *= #C_-1 swMath_C
execute if score #vIn2 swMath_V matches ..-1 run scoreboard players operation #vIn2 swMath_V *= #C_-1 swMath_C

scoreboard players set #vOut_Mag swMath_V 1

scoreboard players operation #mul swMath_V = #vIn swMath_V
scoreboard players operation #mul swMath_V *= #vIn2 swMath_V
scoreboard players operation #div swMath_V = #mul swMath_V
scoreboard players operation #div swMath_V /= #vIn2 swMath_V
execute unless score #div swMath_V = #vIn swMath_V run function math:classes/supp/multiply/scalemul

#tellraw @a [{"text":"a: "},{"score":{"name": "#vIn","objective": "swMath_V"}}]
#tellraw @a [{"text":"b: "},{"score":{"name": "#vIn2","objective": "swMath_V"}}]

execute if score #div swMath_V = #vIn swMath_V run scoreboard players operation #vOut swMath_V = #mul swMath_V

scoreboard players operation #vOut swMath_V *= #sign swMath_V

#tellraw @a [{"text":"out: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]
#tellraw @a [{"text":"out: "},{"score":{"name": "#vOut_Mag","objective": "swMath_V"}}]