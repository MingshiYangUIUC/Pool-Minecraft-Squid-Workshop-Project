scoreboard players operation #x swMath_V = #vIn swMath_V
scoreboard players add #x swMath_V 31416
scoreboard players operation #x swMath_V %= C_62832 swPool_C
execute if score #x swMath_V matches ..-1 run scoreboard players add #x swMath_V 62832
scoreboard players remove #x swMath_V 31416

scoreboard players set #n swMath_V 1
execute if score #x swMath_V matches ..-1 run scoreboard players set #n swMath_V -1
execute if score #x swMath_V matches ..-1 run scoreboard players operation #x swMath_V *= #C_-1 swMath_C

scoreboard players set #x2 swMath_V 31416
execute if score #x swMath_V matches 15709.. run scoreboard players operation #x2 swMath_V -= #x swMath_V
execute if score #x swMath_V matches 15709.. run scoreboard players operation #x swMath_V = #x2 swMath_V

scoreboard players set #y swMath_V 31416
scoreboard players operation #y swMath_V -= #x swMath_V
scoreboard players operation #y swMath_V *= #x swMath_V
scoreboard players operation #y swMath_V *= C_4 swPool_C
scoreboard players operation #y swMath_V /= C_98696 swPool_C
scoreboard players operation #y swMath_V *= #n swMath_V

scoreboard players operation #vOut swMath_V = #y swMath_V
