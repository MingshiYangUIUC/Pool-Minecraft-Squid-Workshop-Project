execute if score @s swPool_sizex >= @s swPool_sizez run scoreboard players operation @s swPool_dl = TABLE swPool_sizex
execute if score @s swPool_sizex >= @s swPool_sizez run scoreboard players operation @s swPool_ds = TABLE swPool_sizez
execute if score @s swPool_sizex < @s swPool_sizez run scoreboard players operation @s swPool_dl = TABLE swPool_sizez
execute if score @s swPool_sizex < @s swPool_sizez run scoreboard players operation @s swPool_ds = TABLE swPool_sizex
scoreboard players operation TABLE swPool_dl = @s swPool_dl
scoreboard players operation TABLE swPool_ds = @s swPool_ds

execute if score @s swPool_sizex >= @s swPool_sizez run tag @s add swPool_x
execute if score @s swPool_sizex < @s swPool_sizez run tag @s add swPool_z