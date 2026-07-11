execute if score @s swPool_lifetime matches 5..14 at @s run tp @s ^ ^ ^-0.1
execute if score @s swPool_lifetime matches 15..25 at @s run tp @s ^ ^ ^0.15
execute if score @s swPool_lifetime matches 25 run scoreboard players set #shootanim swMath_V 0
scoreboard players add @s swPool_lifetime 1