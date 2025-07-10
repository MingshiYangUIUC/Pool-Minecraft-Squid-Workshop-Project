scoreboard players set @s[scores={swPool_var00=..-1}] swPool_var00 0
scoreboard players operation SQRT swPool_var00 = @s swPool_var00
scoreboard players set SQRT swPool_var01 4000
scoreboard players set SQRT swPool_var02 0
scoreboard players set SQRT swPool_var03 2
execute unless score SQRT swPool_var01 = SQRT swPool_var02 run function pool:classes/physics/sqrt_operation