#@s is tagged d1, only one d2 at a time
scoreboard players set Dout swMath_V 99999999

execute store result score D00 swMath_V run data get entity @s Pos[0] 10000
execute store result score D01 swMath_V run data get entity @s Pos[1] 10000
execute store result score D02 swMath_V run data get entity @s Pos[2] 10000

scoreboard players operation D01 swMath_V += Y_addon swMath_V

execute store result score D10 swMath_V run data get entity @e[type=armor_stand,tag=swMath_d2,sort=nearest,limit=1] Pos[0] 10000
execute store result score D11 swMath_V run data get entity @e[type=armor_stand,tag=swMath_d2,sort=nearest,limit=1] Pos[1] 10000
execute store result score D12 swMath_V run data get entity @e[type=armor_stand,tag=swMath_d2,sort=nearest,limit=1] Pos[2] 10000

scoreboard players operation D00 swMath_V -= D10 swMath_V
scoreboard players operation D01 swMath_V -= D11 swMath_V
scoreboard players operation D02 swMath_V -= D12 swMath_V

scoreboard players operation D00 swMath_V *= D00 swMath_V
scoreboard players operation D01 swMath_V *= D01 swMath_V
scoreboard players operation D02 swMath_V *= D02 swMath_V

scoreboard players operation SQRTin swMath_V = D00 swMath_V
scoreboard players operation SQRTin swMath_V += D01 swMath_V
scoreboard players operation SQRTin swMath_V += D02 swMath_V

function soccer:classes/math/sqrt
#execute unless entity @e[type=armor_stand,tag=swMath_d2,distance=..3,limit=1] run scoreboard players set @s swMath_dist 99999999
scoreboard players operation Dout swMath_V = SQRTout swMath_V

