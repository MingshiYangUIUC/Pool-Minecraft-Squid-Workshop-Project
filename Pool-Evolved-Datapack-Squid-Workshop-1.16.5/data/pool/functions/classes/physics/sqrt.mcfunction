tag @s add swPool_sqa
#tag @e[type=area_effect_cloud,tag=swPool_sqh] add swPool_cst
scoreboard players set @s[scores={swPool_var00=..-1}] swPool_var00 0
scoreboard players operation SQRT swPool_var00 = @s swPool_var00
scoreboard players set SQRT swPool_var01 4000
scoreboard players set SQRT swPool_var02 0
scoreboard players set SQRT swPool_var03 2
execute unless score SQRT swPool_var01 = SQRT swPool_var02 run function pool:classes/physics/sqrt_operation
#tag @e[type=area_effect_cloud,tag=swPool_sqh] remove swPool_cst
tag @s remove swPool_sqa