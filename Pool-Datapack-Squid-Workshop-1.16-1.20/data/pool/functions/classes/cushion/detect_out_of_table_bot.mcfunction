#detect out of table bug
# record location
scoreboard players operation @s swPool_posx = @s swPool_tmpposx
scoreboard players operation @s swPool_posz = @s swPool_tmpposz

#store old swPool_posx,z
scoreboard players operation POSX swPool_posx = @s swPool_posx
scoreboard players operation POSZ swPool_posz = @s swPool_posz

scoreboard players operation @s swPool_posx -= TABLE swPool_posx
scoreboard players operation @s swPool_posz -= TABLE swPool_posz

scoreboard players operation #displace swPool_posx = @s swPool_posx
scoreboard players operation #displace swPool_posz = @s swPool_posz
execute if score #displace swPool_posx matches ..-1 run scoreboard players operation #displace swPool_posx *= #C_-1 swMath_C
execute if score #displace swPool_posz matches ..-1 run scoreboard players operation #displace swPool_posz *= #C_-1 swMath_C
# minus 2500 (0.25m) as rim width (TABLE size also has radius removed) and scale with radii if radii is larger
scoreboard players set #r_displace swMath_V 2500
execute if score C_r swPool_C matches 1251.. run scoreboard players operation #r_displace swMath_V *= C_r swPool_C
execute if score C_r swPool_C matches 1251.. run scoreboard players operation #r_displace swMath_V /= C_r0 swPool_C
scoreboard players operation #displace swPool_posx -= #r_displace swMath_V
scoreboard players operation #displace swPool_posz -= #r_displace swMath_V
#tellraw @a [{"text":"x, "},{"score":{"objective":"swPool_posx","name":"#displace"}},{"text":" xt, "},{"score":{"objective":"swPool_sizex","name":"TABLE"}}]
#tellraw @a [{"text":"z, "},{"score":{"objective":"swPool_posz","name":"#displace"}},{"text":" zt, "},{"score":{"objective":"swPool_sizez","name":"TABLE"}}]
scoreboard players set #outoftable swPool_var00 0
execute unless score #outoftable_scheduled swPool_var00 matches 1 if score #displace swPool_posx > TABLE swPool_sizex run scoreboard players set #outoftable swPool_var00 1
execute unless score #outoftable_scheduled swPool_var00 matches 1 if score #displace swPool_posz > TABLE swPool_sizez run scoreboard players set #outoftable swPool_var00 1
execute if score #outoftable swPool_var00 matches 1 run scoreboard players set #abnorm swMath_V 2
execute if score #outoftable swPool_var00 matches 1 run scoreboard players set @e[tag=swPool_pool] swPool_v 0
