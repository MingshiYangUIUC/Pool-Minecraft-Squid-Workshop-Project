#get HORIZONTAL distance from tag d1 to tag d2 with    2    as    upper limit     4 sig figs
#@s is tagged d1, only one d2 at a time


#execute store result score DD1 swPool_var01 run data get entity @s Pos[0] 10000
#execute store result score DD1 swPool_var02 run data get entity @s Pos[2] 10000

scoreboard players operation DD1 swPool_var01 = @s swPool_tmpposx
scoreboard players operation DD1 swPool_var02 = @s swPool_tmpposz

#execute store result score DD2 swPool_var01 run data get entity @e[type=item_display,tag=swPool_d2,distance=..3,limit=1] Pos[0] 10000
#execute store result score DD2 swPool_var02 run data get entity @e[type=item_display,tag=swPool_d2,distance=..3,limit=1] Pos[2] 10000

scoreboard players operation DD2 swPool_var01 = a2_self swPool_var01
scoreboard players operation DD2 swPool_var02 = a2_self swPool_var02

scoreboard players operation DD1 swPool_var01 -= DD2 swPool_var01
scoreboard players operation DD1 swPool_var02 -= DD2 swPool_var02

scoreboard players operation DD1 swPool_var01 *= DD1 swPool_var01
scoreboard players operation DD1 swPool_var02 *= DD1 swPool_var02

scoreboard players operation #vIn swMath_V = DD1 swPool_var01
scoreboard players operation #vIn swMath_V += DD1 swPool_var02

function math:classes/core/operations/sqrt
execute unless entity @e[type=item_display,tag=swPool_d2,distance=..3,limit=1] run scoreboard players set @s swPool_dist 99999999
execute if entity @e[type=item_display,tag=swPool_d2,distance=..3,limit=1] run scoreboard players operation @s swPool_dist = #vOut swMath_V
#execute if entity @e[tag=swPool_d2] run scoreboard players operation @s swPool_dist = @s swPool_var00
