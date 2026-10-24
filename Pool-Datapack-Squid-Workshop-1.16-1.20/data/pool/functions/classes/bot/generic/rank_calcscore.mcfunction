# non-snooker
execute unless score swPool_snookermode swMath_V matches 1 if score @s swPool_calcScore = #maxcalcscore swMath_V run scoreboard players add @s swPool_calcScore 1
execute unless score swPool_snookermode swMath_V matches 1 if score @s swPool_calcScore > #maxcalcscore swMath_V run scoreboard players operation #maxcalcscore swMath_V = @s swPool_calcScore

# snooker
execute if score swPool_snookermode swMath_V matches 1 if score @s swPool_scalScore = #maxcalcscore swMath_V run scoreboard players add @s swPool_scalScore 1
execute if score swPool_snookermode swMath_V matches 1 if score @s swPool_scalScore > #maxcalcscore swMath_V run scoreboard players operation #maxcalcscore swMath_V = @s swPool_scalScore