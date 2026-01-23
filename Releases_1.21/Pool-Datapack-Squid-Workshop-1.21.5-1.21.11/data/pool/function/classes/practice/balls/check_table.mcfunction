execute if score @s swPool_sizex >= @s swPool_sizez run scoreboard players operation @s swPool_dl = @s swPool_sizex
execute if score @s swPool_sizex >= @s swPool_sizez run scoreboard players operation @s swPool_ds = @s swPool_sizez
execute if score @s swPool_sizex < @s swPool_sizez run scoreboard players operation @s swPool_dl = @s swPool_sizez
execute if score @s swPool_sizex < @s swPool_sizez run scoreboard players operation @s swPool_ds = @s swPool_sizex
scoreboard players operation TABLE swPool_dl = @s swPool_dl
scoreboard players operation TABLE swPool_ds = @s swPool_ds