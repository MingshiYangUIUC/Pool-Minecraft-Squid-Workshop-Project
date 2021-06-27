#0.25 is 25000000

scoreboard players operation @s swPool_var01 = @s swPool_v

execute if entity @s[scores={swPool_var01=50000000..99999999}] run execute at @s run tp @s ^ ^ ^0.5
execute if entity @s[scores={swPool_var01=50000000..99999999}] run scoreboard players remove @s swPool_var01 50000000
execute if entity @s[scores={swPool_var01=25000000..50000000}] run execute at @s run tp @s ^ ^ ^0.25
execute if entity @s[scores={swPool_var01=25000000..50000000}] run scoreboard players remove @s swPool_var01 25000000
execute if entity @s[scores={swPool_var01=12500000..24999999}] run execute at @s run tp @s ^ ^ ^0.125
execute if entity @s[scores={swPool_var01=12500000..24999999}] run scoreboard players remove @s swPool_var01 12500000
execute if entity @s[scores={swPool_var01=6250000..12499999}] run execute at @s run tp @s ^ ^ ^0.0625
execute if entity @s[scores={swPool_var01=6250000..12499999}] run scoreboard players remove @s swPool_var01 6250000
execute if entity @s[scores={swPool_var01=3125000..6249999}] run execute at @s run tp @s ^ ^ ^0.03125
execute if entity @s[scores={swPool_var01=3125000..6249999}] run scoreboard players remove @s swPool_var01 3125000
execute if entity @s[scores={swPool_var01=1562500..3124999}] run execute at @s run tp @s ^ ^ ^0.015625
execute if entity @s[scores={swPool_var01=1562500..3124999}] run scoreboard players remove @s swPool_var01 1562500
execute if entity @s[scores={swPool_var01=781250..1562499}] run execute at @s run tp @s ^ ^ ^0.0078125
execute if entity @s[scores={swPool_var01=781250..1562499}] run scoreboard players remove @s swPool_var01 781250
execute if entity @s[scores={swPool_var01=390625..781249}] run execute at @s run tp @s ^ ^ ^0.00390625
execute if entity @s[scores={swPool_var01=390625..781249}] run scoreboard players remove @s swPool_var01 390625
execute if entity @s[scores={swPool_var01=195313..390624}] run execute at @s run tp @s ^ ^ ^0.00195313
execute if entity @s[scores={swPool_var01=195313..390624}] run scoreboard players remove @s swPool_var01 195313
execute if entity @s[scores={swPool_var01=97656..195312}] run execute at @s run tp @s ^ ^ ^0.00097656
execute if entity @s[scores={swPool_var01=97656..195312}] run scoreboard players remove @s swPool_var01 97656

scoreboard players reset @s swPool_var01
