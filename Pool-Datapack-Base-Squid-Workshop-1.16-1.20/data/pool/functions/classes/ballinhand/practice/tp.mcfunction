scoreboard players add #bih_ntp swMath_V 1

execute at @s run tp @s ^ ^ ^0.02
execute store result score @s swPool_posy run data get entity @s Pos[1] 100
scoreboard players operation @s swPool_posy -= #table_y swPool_posy

execute unless score @s swPool_posy matches ..5 if score #bih_ntp swMath_V matches ..499 at @s run function pool:classes/ballinhand/practice/tp