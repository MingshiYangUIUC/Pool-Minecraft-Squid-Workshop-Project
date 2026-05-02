tellraw @s [{"text":"Activating trigger swPool_sizez_trigger"}]
scoreboard players operation @s swPool_sizez = @s swPool_sizez_trigger

scoreboard players reset @s swPool_sizez_trigger
