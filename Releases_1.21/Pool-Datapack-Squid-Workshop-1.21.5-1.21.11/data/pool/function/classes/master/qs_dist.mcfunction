#see physics/distance1 for explanation


scoreboard players operation D1 swPool_var01 = @s swPool_tmpposx
scoreboard players operation D1 swPool_var02 = @s swPool_tmpposz

scoreboard players operation D2 swPool_var01 = D2_self swPool_var01
scoreboard players operation D2 swPool_var02 = D2_self swPool_var02

scoreboard players operation D1 swPool_var01 -= D2 swPool_var01
scoreboard players operation D1 swPool_var02 -= D2 swPool_var02

scoreboard players operation D1 swPool_var01 *= D1 swPool_var01
scoreboard players operation D1 swPool_var02 *= D1 swPool_var02

scoreboard players operation #vIn swMath_V = D1 swPool_var01
scoreboard players operation #vIn swMath_V += D1 swPool_var02

function math:classes/core/operations/sqrt
scoreboard players operation QSD swPool_dist = #vOut swMath_V
