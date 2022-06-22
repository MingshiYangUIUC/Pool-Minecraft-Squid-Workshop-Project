#0.25 is 25000000

scoreboard players operation @s swPool_var01 = @s swPool_v
scoreboard players operation @s swPool_var01 /= C_10000 swPool_C
scoreboard players operation @s swPool_var01 *= @s swPool_hittime

execute if score @s swPool_var01 matches 50000000..99999999 at @s run tp @s ^ ^ ^0.5
execute if score @s swPool_var01 matches 50000000..99999999 run scoreboard players remove @s swPool_var01 50000000
execute if score @s swPool_var01 matches 25000000..50000000 at @s run tp @s ^ ^ ^0.25
execute if score @s swPool_var01 matches 25000000..50000000 run scoreboard players remove @s swPool_var01 25000000
execute if score @s swPool_var01 matches 12500000..24999999 at @s run tp @s ^ ^ ^0.125
execute if score @s swPool_var01 matches 12500000..24999999 run scoreboard players remove @s swPool_var01 12500000
execute if score @s swPool_var01 matches 6250000..12499999 at @s run tp @s ^ ^ ^0.0625
execute if score @s swPool_var01 matches 6250000..12499999 run scoreboard players remove @s swPool_var01 6250000
execute if score @s swPool_var01 matches 3125000..6249999 at @s run tp @s ^ ^ ^0.03125
execute if score @s swPool_var01 matches 3125000..6249999 run scoreboard players remove @s swPool_var01 3125000
execute if score @s swPool_var01 matches 1562500..3124999 at @s run tp @s ^ ^ ^0.015625
execute if score @s swPool_var01 matches 1562500..3124999 run scoreboard players remove @s swPool_var01 1562500
execute if score @s swPool_var01 matches 781250..1562499 at @s run tp @s ^ ^ ^0.0078125
execute if score @s swPool_var01 matches 781250..1562499 run scoreboard players remove @s swPool_var01 781250
execute if score @s swPool_var01 matches 390625..781249 at @s run tp @s ^ ^ ^0.00390625
execute if score @s swPool_var01 matches 390625..781249 run scoreboard players remove @s swPool_var01 390625
execute if score @s swPool_var01 matches 195313..390624 at @s run tp @s ^ ^ ^0.00195313
execute if score @s swPool_var01 matches 195313..390624 run scoreboard players remove @s swPool_var01 195313
execute if score @s swPool_var01 matches 97656..195312 at @s run tp @s ^ ^ ^0.00097656
execute if score @s swPool_var01 matches 97656..195312 run scoreboard players remove @s swPool_var01 97656

scoreboard players reset @s swPool_var01
execute at @s if entity @e[tag=swPool_pool,distance=0.0001..0.25] run function pool:classes/motion/retreat