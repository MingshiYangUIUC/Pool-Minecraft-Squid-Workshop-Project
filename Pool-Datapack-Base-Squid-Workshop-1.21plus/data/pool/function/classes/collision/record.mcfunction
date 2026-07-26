tag @s remove swPool_col1
tag @e[tag=swPool_col2] remove swPool_col2 
tag @e[tag=swPool_col] remove swPool_col

scoreboard players operation MinTime swPool_hittime = @s swPool_hittime

scoreboard players operation COL swPool_vrx = @s swPool_vrx
scoreboard players operation COL swPool_vrz = @s swPool_vrz

tag @s add swPool_col1
tag @s add swPool_col
tag @e[tag=swPool_c2,limit=1] add swPool_col2
tag @e[tag=swPool_c2,limit=1] add swPool_col

scoreboard players reset #colfake swMath_V
execute if entity @s[tag=swPool_fake] run scoreboard players set #colfake swMath_V 1
execute if entity @e[tag=swPool_col2,limit=1,tag=swPool_fake] run scoreboard players set #colfake swMath_V 1

scoreboard players set #col swMath_V 1