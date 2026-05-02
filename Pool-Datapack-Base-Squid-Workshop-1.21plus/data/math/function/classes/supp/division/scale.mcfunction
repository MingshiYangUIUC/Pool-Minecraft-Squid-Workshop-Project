# scale so at least #y>10000*#x

scoreboard players set #power swMath_V 4
execute if score #yabs swMath_V matches 21474837..214748364 run scoreboard players remove #power swMath_V 1
execute if score #yabs swMath_V matches 21474837..214748364 run scoreboard players operation #yabs swMath_V *= #C_10 swMath_C
execute if score #yabs swMath_V matches 2147484..21474836 run scoreboard players remove #power swMath_V 2
execute if score #yabs swMath_V matches 2147484..21474836 run scoreboard players operation #yabs swMath_V *= #C_100 swMath_C
execute if score #yabs swMath_V matches 214749..2147483 run scoreboard players remove #power swMath_V 3
execute if score #yabs swMath_V matches 214749..2147483 run scoreboard players operation #yabs swMath_V *= #C_1000 swMath_C
execute if score #yabs swMath_V matches 0..214748 run scoreboard players remove #power swMath_V 4
execute if score #yabs swMath_V matches 0..214748 run scoreboard players operation #yabs swMath_V *= #C_10000 swMath_C

scoreboard players operation #vOut swMath_V = #xabs swMath_V
execute if score #power swMath_V matches 1.. run scoreboard players operation #vIn swMath_V = #xabs swMath_V
execute if score #power swMath_V matches 1.. run function math:classes/supp/division/div10_4d
scoreboard players operation #xabs swMath_V = #vOut swMath_V