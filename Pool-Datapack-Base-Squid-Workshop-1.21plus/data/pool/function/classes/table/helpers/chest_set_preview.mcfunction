scoreboard players operation @e[tag=swPool_table_core,limit=1,sort=nearest] swPool_sizex = @s swPool_sizex
scoreboard players operation @e[tag=swPool_table_core,limit=1,sort=nearest] swPool_sizez = @s swPool_sizez

execute as @e[tag=swPool_table_core,limit=1,sort=nearest] at @s run function pool:classes/table/set_preview
