# non snooker
execute unless score swPool_snookermode swMath_V matches 1 run scoreboard players operation @s swPool_shotScore = @s swPool_calcScore
# normal snooker
execute if score swPool_snookermode swMath_V matches 1 unless entity @s[tag=swPool_aim_obj_blocked] run scoreboard players operation @s swPool_shotScore = @s swPool_scalScore
# snooker blocked
execute if score swPool_snookermode swMath_V matches 1 if entity @s[tag=swPool_aim_obj_blocked] run scoreboard players operation @s swPool_shotScore = @s swPool_calcScore

# add rand perturb 2500 (non snooker)
# divide perturb by 5 for snooker (500)
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= #C_2500 swMath_C
execute if score swPool_snookermode swMath_V matches 1 run scoreboard players operation #vOut swMath_V /= #C_5 swMath_C
scoreboard players operation @s swPool_shotScore += #vOut swMath_V

tag @s add swPool_aim_obj_used

# add random force spin config
function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= #C_10 swMath_C
execute if score #vOut swMath_V matches 0 run tag @s add swPool_act1
execute if score #vOut swMath_V matches 1 run tag @s add swPool_act2
execute if score #vOut swMath_V matches 2 run tag @s add swPool_act3
execute if score #vOut swMath_V matches 3 run tag @s add swPool_act4
execute if score #vOut swMath_V matches 4 run tag @s add swPool_act5
execute if score #vOut swMath_V matches 5 run tag @s add swPool_act6
execute if score #vOut swMath_V matches 6 run tag @s add swPool_act7
execute if score #vOut swMath_V matches 7 run tag @s add swPool_act8
execute if score #vOut swMath_V matches 8 run tag @s add swPool_act9
execute if score #vOut swMath_V matches 9 run tag @s add swPool_act10