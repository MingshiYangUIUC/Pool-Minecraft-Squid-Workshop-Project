#scoreboard players add @e[tag=swPool_pooltable] swPool_count 1
scoreboard players operation SQRT swPool_var04 = SQRT swPool_var00
scoreboard players operation SQRT swPool_var04 /= SQRT swPool_var01
scoreboard players operation SQRT swPool_var04 += SQRT swPool_var01
scoreboard players operation SQRT swPool_var04 /= SQRT swPool_var03
scoreboard players operation SQRT swPool_var02 = SQRT swPool_var01
scoreboard players operation SQRT swPool_var05 = SQRT swPool_var04
scoreboard players operation SQRT swPool_var05 -= SQRT swPool_var02
execute if score SQRT swPool_var05 matches -1..1 run scoreboard players operation @s swPool_var00 = SQRT swPool_var04
#execute if score SQRT swPool_var05 matches -1..1 run tag @s remove swPool_sqa
execute unless score SQRT swPool_var05 matches -1..1 run scoreboard players operation SQRT swPool_var01 = SQRT swPool_var04
execute unless score SQRT swPool_var05 matches -1..1 run function pool:classes/physics/sqrt_operation