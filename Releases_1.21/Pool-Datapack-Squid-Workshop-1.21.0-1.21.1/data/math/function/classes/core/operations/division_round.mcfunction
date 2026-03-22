# compute round division of #vIn2 / #vIn, return integer without unit.

scoreboard players operation #remn swMath_V = #vIn2 swMath_V
scoreboard players operation #remn swMath_V %= #vIn swMath_V
scoreboard players operation #vIn2 swMath_V /= #vIn swMath_V

scoreboard players operation #vIn swMath_V /= #C_2 swMath_C
execute if score #vIn swMath_V matches 1.. if score #remn swMath_V >= #vIn swMath_V run scoreboard players add #vIn2 swMath_V 1
execute if score #vIn swMath_V matches ..-1 if score #remn swMath_V <= #vIn swMath_V run scoreboard players add #vIn2 swMath_V 1

scoreboard players operation #vOut swMath_V = #vIn2 swMath_V

#tellraw @a [{"text":"Out: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]