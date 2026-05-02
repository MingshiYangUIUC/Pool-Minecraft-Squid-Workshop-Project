tellraw @s [{"text":"Activating trigger swPool_sizex_trigger"}]
scoreboard players operation @s swPool_sizex = @s swPool_sizex_trigger

scoreboard players reset @s swPool_sizex_trigger
