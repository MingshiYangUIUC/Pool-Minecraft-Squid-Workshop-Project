# compute square of #vIn, if overflows, record magnitude difference from rescaled result to unit of 10000.
# so the true output is #vOut * #vOut_Mag

scoreboard players set #vOut_Mag swMath_V 1
execute if score #vIn swMath_V matches ..-1 run scoreboard players operation #vIn swMath_V *= #C_-1 swMath_C
execute if score #vIn swMath_V matches 46341.. run function math:classes/supp/square/div10_round

scoreboard players operation #vOut swMath_V = #vIn swMath_V
scoreboard players operation #vOut swMath_V *= #vOut swMath_V

#tellraw @a [{"text":"Out: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]
#tellraw @a [{"text":"Mag: "},{"score":{"name": "#vOut_Mag","objective": "swMath_V"}}]