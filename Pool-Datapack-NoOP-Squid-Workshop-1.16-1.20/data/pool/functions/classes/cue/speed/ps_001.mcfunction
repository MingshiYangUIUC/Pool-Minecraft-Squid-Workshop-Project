scoreboard players set @s swPool_custompower_1 1
scoreboard players set @s swPool_custompower 0
scoreboard players operation @s swPool_custompower += @s swPool_custompower_10
scoreboard players operation @s swPool_custompower += @s swPool_custompower_1
execute if score @s swPool_custompower matches 100.. run scoreboard players set @s swPool_custompower 100
