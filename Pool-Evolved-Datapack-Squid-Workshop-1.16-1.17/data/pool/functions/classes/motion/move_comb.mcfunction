#0.25 is 25000000

scoreboard players operation @s swPool_var01 = @s swPool_v
#the magnitude does not matter
execute if score @s swPool_var01 matches 100000..199999 at @s run tp @s ^ ^ ^1
execute if score @s swPool_var01 matches 100000..199999 run scoreboard players remove @s swPool_var01 100000
execute if score @s swPool_var01 matches 50000..99999 at @s run tp @s ^ ^ ^0.5
execute if score @s swPool_var01 matches 50000..99999 run scoreboard players remove @s swPool_var01 50000
execute if score @s swPool_var01 matches 25000..49999 at @s run tp @s ^ ^ ^0.25
execute if score @s swPool_var01 matches 25000..49999 run scoreboard players remove @s swPool_var01 25000
execute if score @s swPool_var01 matches 12500..24999 at @s run tp @s ^ ^ ^0.125
execute if score @s swPool_var01 matches 12500..24999 run scoreboard players remove @s swPool_var01 12500
execute if score @s swPool_var01 matches 06250..12499 at @s run tp @s ^ ^ ^0.0625
execute if score @s swPool_var01 matches 06250..12499 run scoreboard players remove @s swPool_var01 06250
execute if score @s swPool_var01 matches 03125..06249 at @s run tp @s ^ ^ ^0.03125
execute if score @s swPool_var01 matches 03125..06249 run scoreboard players remove @s swPool_var01 03125
execute if score @s swPool_var01 matches 01563..03124 at @s run tp @s ^ ^ ^0.01563
execute if score @s swPool_var01 matches 01563..03124 run scoreboard players remove @s swPool_var01 01563
execute if score @s swPool_var01 matches 00781..01562 at @s run tp @s ^ ^ ^0.00781
execute if score @s swPool_var01 matches 00781..01562 run scoreboard players remove @s swPool_var01 00781
execute if score @s swPool_var01 matches 00391..00780 at @s run tp @s ^ ^ ^0.00391
execute if score @s swPool_var01 matches 00391..00780 run scoreboard players remove @s swPool_var01 00391
execute if score @s swPool_var01 matches 00195..00390 at @s run tp @s ^ ^ ^0.00195
execute if score @s swPool_var01 matches 00195..00390 run scoreboard players remove @s swPool_var01 00195
execute if score @s swPool_var01 matches 00098..00194 at @s run tp @s ^ ^ ^0.00098
execute if score @s swPool_var01 matches 00098..00194 run scoreboard players remove @s swPool_var01 00098

scoreboard players reset @s swPool_var01
