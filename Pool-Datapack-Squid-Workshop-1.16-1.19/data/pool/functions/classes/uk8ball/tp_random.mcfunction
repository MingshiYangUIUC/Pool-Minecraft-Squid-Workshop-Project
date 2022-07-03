execute store result score DX swPool_var00 run data get entity @s UUID[0]
scoreboard players operation DX swPool_var00 %= C_5 swPool_C
scoreboard players operation DX swPool_var00 -= C_2 swPool_C


execute store result score DZ swPool_var00 run data get entity @s UUID[1]
scoreboard players operation DZ swPool_var00 %= C_5 swPool_C
scoreboard players operation DZ swPool_var00 -= C_2 swPool_C


execute if score DX swPool_var00 matches -2 run tp @s ~-0.001 ~ ~
execute if score DX swPool_var00 matches -1 run tp @s ~-0.0005 ~ ~
execute if score DX swPool_var00 matches 1 run tp @s ~0.0005 ~ ~
execute if score DX swPool_var00 matches 2 run tp @s ~0.001 ~ ~

execute if score DZ swPool_var00 matches -2 run tp @s ~ ~ ~-0.001
execute if score DZ swPool_var00 matches -1 run tp @s ~ ~ ~-0.0005
execute if score DZ swPool_var00 matches 1 run tp @s ~ ~ ~0.0005
execute if score DZ swPool_var00 matches 2 run tp @s ~ ~ ~0.001