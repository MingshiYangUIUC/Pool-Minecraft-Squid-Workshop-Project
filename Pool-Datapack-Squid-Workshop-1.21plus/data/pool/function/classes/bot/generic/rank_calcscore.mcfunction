# resolve tie with current max
execute if score @s swPool_calcScore = #maxcalcscore swMath_V run scoreboard players add @s swPool_calcScore 1
execute if score @s swPool_calcScore > #maxcalcscore swMath_V run scoreboard players operation #maxcalcscore swMath_V = @s swPool_calcScore
