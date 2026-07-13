# linear interpolation of sigmoid
# input:  #vIn swMath_V
# output: #vOut swMath_V

# z range: -5 to 5, scaled as -50000 to 50000
# S range: 0 to 1, scaled as 0 to 10000
# bin width: 0.5, scaled as 5000


# clamp input
execute if score #vIn swMath_V matches ..-50000 run scoreboard players set #vIn swMath_V -50000
execute if score #vIn swMath_V matches 50000.. run scoreboard players set #vIn swMath_V 50000


# interpolate S(center), dS/dz(center)

execute if score #vIn swMath_V matches -50000..-45001 run scoreboard players set #zc swMath_V -47500
execute if score #vIn swMath_V matches -50000..-45001 run scoreboard players set #S swMath_V 86
execute if score #vIn swMath_V matches -50000..-45001 run scoreboard players set #dSdz swMath_V 85

execute if score #vIn swMath_V matches -45000..-40001 run scoreboard players set #zc swMath_V -42500
execute if score #vIn swMath_V matches -45000..-40001 run scoreboard players set #S swMath_V 141
execute if score #vIn swMath_V matches -45000..-40001 run scoreboard players set #dSdz swMath_V 139

execute if score #vIn swMath_V matches -40000..-35001 run scoreboard players set #zc swMath_V -37500
execute if score #vIn swMath_V matches -40000..-35001 run scoreboard players set #S swMath_V 230
execute if score #vIn swMath_V matches -40000..-35001 run scoreboard players set #dSdz swMath_V 224

execute if score #vIn swMath_V matches -35000..-30001 run scoreboard players set #zc swMath_V -32500
execute if score #vIn swMath_V matches -35000..-30001 run scoreboard players set #S swMath_V 373
execute if score #vIn swMath_V matches -35000..-30001 run scoreboard players set #dSdz swMath_V 359

execute if score #vIn swMath_V matches -30000..-25001 run scoreboard players set #zc swMath_V -27500
execute if score #vIn swMath_V matches -30000..-25001 run scoreboard players set #S swMath_V 601
execute if score #vIn swMath_V matches -30000..-25001 run scoreboard players set #dSdz swMath_V 565

execute if score #vIn swMath_V matches -25000..-20001 run scoreboard players set #zc swMath_V -22500
execute if score #vIn swMath_V matches -25000..-20001 run scoreboard players set #S swMath_V 953
execute if score #vIn swMath_V matches -25000..-20001 run scoreboard players set #dSdz swMath_V 863

execute if score #vIn swMath_V matches -20000..-15001 run scoreboard players set #zc swMath_V -17500
execute if score #vIn swMath_V matches -20000..-15001 run scoreboard players set #S swMath_V 1480
execute if score #vIn swMath_V matches -20000..-15001 run scoreboard players set #dSdz swMath_V 1261

execute if score #vIn swMath_V matches -15000..-10001 run scoreboard players set #zc swMath_V -12500
execute if score #vIn swMath_V matches -15000..-10001 run scoreboard players set #S swMath_V 2227
execute if score #vIn swMath_V matches -15000..-10001 run scoreboard players set #dSdz swMath_V 1731

execute if score #vIn swMath_V matches -10000..-5001 run scoreboard players set #zc swMath_V -7500
execute if score #vIn swMath_V matches -10000..-5001 run scoreboard players set #S swMath_V 3208
execute if score #vIn swMath_V matches -10000..-5001 run scoreboard players set #dSdz swMath_V 2179

execute if score #vIn swMath_V matches -5000..-1 run scoreboard players set #zc swMath_V -2500
execute if score #vIn swMath_V matches -5000..-1 run scoreboard players set #S swMath_V 4378
execute if score #vIn swMath_V matches -5000..-1 run scoreboard players set #dSdz swMath_V 2461

execute if score #vIn swMath_V matches 0..4999 run scoreboard players set #zc swMath_V 2500
execute if score #vIn swMath_V matches 0..4999 run scoreboard players set #S swMath_V 5622
execute if score #vIn swMath_V matches 0..4999 run scoreboard players set #dSdz swMath_V 2461

execute if score #vIn swMath_V matches 5000..9999 run scoreboard players set #zc swMath_V 7500
execute if score #vIn swMath_V matches 5000..9999 run scoreboard players set #S swMath_V 6792
execute if score #vIn swMath_V matches 5000..9999 run scoreboard players set #dSdz swMath_V 2179

execute if score #vIn swMath_V matches 10000..14999 run scoreboard players set #zc swMath_V 12500
execute if score #vIn swMath_V matches 10000..14999 run scoreboard players set #S swMath_V 7773
execute if score #vIn swMath_V matches 10000..14999 run scoreboard players set #dSdz swMath_V 1731

execute if score #vIn swMath_V matches 15000..19999 run scoreboard players set #zc swMath_V 17500
execute if score #vIn swMath_V matches 15000..19999 run scoreboard players set #S swMath_V 8520
execute if score #vIn swMath_V matches 15000..19999 run scoreboard players set #dSdz swMath_V 1261

execute if score #vIn swMath_V matches 20000..24999 run scoreboard players set #zc swMath_V 22500
execute if score #vIn swMath_V matches 20000..24999 run scoreboard players set #S swMath_V 9047
execute if score #vIn swMath_V matches 20000..24999 run scoreboard players set #dSdz swMath_V 863

execute if score #vIn swMath_V matches 25000..29999 run scoreboard players set #zc swMath_V 27500
execute if score #vIn swMath_V matches 25000..29999 run scoreboard players set #S swMath_V 9399
execute if score #vIn swMath_V matches 25000..29999 run scoreboard players set #dSdz swMath_V 565

execute if score #vIn swMath_V matches 30000..34999 run scoreboard players set #zc swMath_V 32500
execute if score #vIn swMath_V matches 30000..34999 run scoreboard players set #S swMath_V 9627
execute if score #vIn swMath_V matches 30000..34999 run scoreboard players set #dSdz swMath_V 359

execute if score #vIn swMath_V matches 35000..39999 run scoreboard players set #zc swMath_V 37500
execute if score #vIn swMath_V matches 35000..39999 run scoreboard players set #S swMath_V 9770
execute if score #vIn swMath_V matches 35000..39999 run scoreboard players set #dSdz swMath_V 224

execute if score #vIn swMath_V matches 40000..44999 run scoreboard players set #zc swMath_V 42500
execute if score #vIn swMath_V matches 40000..44999 run scoreboard players set #S swMath_V 9859
execute if score #vIn swMath_V matches 40000..44999 run scoreboard players set #dSdz swMath_V 139

execute if score #vIn swMath_V matches 45000..50000 run scoreboard players set #zc swMath_V 47500
execute if score #vIn swMath_V matches 45000..50000 run scoreboard players set #S swMath_V 9914
execute if score #vIn swMath_V matches 45000..50000 run scoreboard players set #dSdz swMath_V 85


# interpolate
# S(z) = S(zc) + (z - zc) * dSdz / 10000

scoreboard players operation #dz swMath_V = #vIn swMath_V
scoreboard players operation #dz swMath_V -= #zc swMath_V

scoreboard players operation #dz swMath_V *= #dSdz swMath_V
scoreboard players operation #dz swMath_V /= #C_10000 swMath_C

scoreboard players operation #vOut swMath_V = #S swMath_V
scoreboard players operation #vOut swMath_V += #dz swMath_V


# output clamp
execute if score #vOut swMath_V matches ..0 run scoreboard players set #vOut swMath_V 0
execute if score #vOut swMath_V matches 10000.. run scoreboard players set #vOut swMath_V 10000