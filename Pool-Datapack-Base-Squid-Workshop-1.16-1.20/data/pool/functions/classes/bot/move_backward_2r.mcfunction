# move backward by 2R
scoreboard players operation #backmove swMath_V = C_r swPool_C
scoreboard players operation #backmove swMath_V += C_r swPool_C

execute if score #backmove swMath_V matches 4096.. at @s run tp @s ^ ^ ^-0.4096
execute if score #backmove swMath_V matches 4096.. run scoreboard players remove #backmove swMath_V 4096

execute if score #backmove swMath_V matches 2048.. at @s run tp @s ^ ^ ^-0.2048
execute if score #backmove swMath_V matches 2048.. run scoreboard players remove #backmove swMath_V 2048

execute if score #backmove swMath_V matches 1024.. at @s run tp @s ^ ^ ^-0.1024
execute if score #backmove swMath_V matches 1024.. run scoreboard players remove #backmove swMath_V 1024

execute if score #backmove swMath_V matches 512.. at @s run tp @s ^ ^ ^-0.0512
execute if score #backmove swMath_V matches 512.. run scoreboard players remove #backmove swMath_V 512

execute if score #backmove swMath_V matches 256.. at @s run tp @s ^ ^ ^-0.0256
execute if score #backmove swMath_V matches 256.. run scoreboard players remove #backmove swMath_V 256

execute if score #backmove swMath_V matches 128.. at @s run tp @s ^ ^ ^-0.0128
execute if score #backmove swMath_V matches 128.. run scoreboard players remove #backmove swMath_V 128

execute if score #backmove swMath_V matches 64.. at @s run tp @s ^ ^ ^-0.0064
execute if score #backmove swMath_V matches 64.. run scoreboard players remove #backmove swMath_V 64

execute if score #backmove swMath_V matches 32.. at @s run tp @s ^ ^ ^-0.0032
execute if score #backmove swMath_V matches 32.. run scoreboard players remove #backmove swMath_V 32

execute if score #backmove swMath_V matches 16.. at @s run tp @s ^ ^ ^-0.0016
execute if score #backmove swMath_V matches 16.. run scoreboard players remove #backmove swMath_V 16

execute if score #backmove swMath_V matches 8.. at @s run tp @s ^ ^ ^-0.0008
execute if score #backmove swMath_V matches 8.. run scoreboard players remove #backmove swMath_V 8

execute if score #backmove swMath_V matches 4.. at @s run tp @s ^ ^ ^-0.0004
execute if score #backmove swMath_V matches 4.. run scoreboard players remove #backmove swMath_V 4

execute if score #backmove swMath_V matches 2.. at @s run tp @s ^ ^ ^-0.0002
execute if score #backmove swMath_V matches 2.. run scoreboard players remove #backmove swMath_V 2

execute if score #backmove swMath_V matches 1.. at @s run tp @s ^ ^ ^-0.0001
execute if score #backmove swMath_V matches 1.. run scoreboard players remove #backmove swMath_V 1
