#see physics/distance1 for explanation


scoreboard players operation D1 swPool_var01 = @s swPool_tmpposx
scoreboard players operation D1 swPool_var02 = @s swPool_tmpposz

scoreboard players operation D2 swPool_var01 = D2x_self swMath_V
scoreboard players operation D2 swPool_var02 = D2z_self swMath_V

scoreboard players operation D1 swPool_var01 -= D2 swPool_var01
scoreboard players operation D1 swPool_var02 -= D2 swPool_var02

scoreboard players operation D1 swPool_var01 *= D1 swPool_var01
scoreboard players operation D1 swPool_var02 *= D1 swPool_var02

scoreboard players operation #vIn swMath_V = D1 swPool_var01
scoreboard players operation #vIn swMath_V += D1 swPool_var02

# removed square root
#execute store result score #vOut swMath_V run compute default float {type:"minecraft:sqrt",input:{type:"minecraft:from_int",input:{type:"minecraft:score",target:{type:"fixed",name:"#vIn"},score:"swMath_V"}}}
scoreboard players operation QSD_sqr swPool_dist = #vIn swMath_V
