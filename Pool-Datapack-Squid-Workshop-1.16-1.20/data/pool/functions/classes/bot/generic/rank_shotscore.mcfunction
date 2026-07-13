# resolve tie with current max
execute unless score @s swPool_shotScore matches ..-10000 if score @s swPool_shotScore = #maxshotscore swMath_V run scoreboard players add @s swPool_shotScore 1
execute if score @s swPool_shotScore > #maxshotscore swMath_V run scoreboard players operation #maxshotscore swMath_V = @s swPool_shotScore