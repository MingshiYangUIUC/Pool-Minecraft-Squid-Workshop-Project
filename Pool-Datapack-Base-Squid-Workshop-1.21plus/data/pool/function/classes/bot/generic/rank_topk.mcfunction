# ordinary 8/9-ball
execute unless score swPool_snookermode swMath_V matches 1 if score @s swPool_calcScore > #maxcalcscore_d0sel swMath_V run scoreboard players operation #maxcalcscore_d0sel swMath_V = @s swPool_calcScore

# normal snooker
execute if score swPool_snookermode swMath_V matches 1 unless entity @s[tag=swPool_aim_obj_blocked] if score @s swPool_scalScore > #maxcalcscore_d0sel swMath_V run scoreboard players operation #maxcalcscore_d0sel swMath_V = @s swPool_scalScore

# snooker blocked still uses calcScore
execute if score swPool_snookermode swMath_V matches 1 if entity @s[tag=swPool_aim_obj_blocked] if score @s swPool_calcScore > #maxcalcscore_d0sel swMath_V run scoreboard players operation #maxcalcscore_d0sel swMath_V = @s swPool_calcScore
