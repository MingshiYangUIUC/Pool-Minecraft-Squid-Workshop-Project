# Input is #vIn and #vIn2, return #vIn2 / #vIn with flexible precision: 10000 represent 1.0000

scoreboard players set #div_scale swMath_V 1
scoreboard players set #remain_scale swMath_V 10000

execute if score #vIn2 swMath_V matches -214748364..214748364 run scoreboard players set #div_scale swMath_V 10
execute if score #vIn2 swMath_V matches -214748364..214748364 run scoreboard players set #remain_scale swMath_V 1000

execute if score #vIn2 swMath_V matches -21474836..21474836 run scoreboard players set #div_scale swMath_V 100
execute if score #vIn2 swMath_V matches -21474836..21474836 run scoreboard players set #remain_scale swMath_V 100

execute if score #vIn2 swMath_V matches -2147483..2147483 run scoreboard players set #div_scale swMath_V 1000
execute if score #vIn2 swMath_V matches -2147483..2147483 run scoreboard players set #remain_scale swMath_V 10

execute if score #vIn2 swMath_V matches -214748..214748 run scoreboard players set #div_scale swMath_V 10000
execute if score #vIn2 swMath_V matches -214748..214748 run scoreboard players set #remain_scale swMath_V 1

scoreboard players operation #vOut swMath_V = #vIn2 swMath_V
scoreboard players operation #vOut swMath_V *= #div_scale swMath_V
scoreboard players operation #vOut swMath_V /= #vIn swMath_V
scoreboard players operation #vOut swMath_V *= #remain_scale swMath_V
