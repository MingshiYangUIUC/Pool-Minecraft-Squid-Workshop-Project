tellraw @s [{"text":"Activating trigger swPool_C_mur_trigger"}]
scoreboard players operation C_mur swPool_C = @s swPool_C_mur_trigger

scoreboard players reset @s swPool_C_mur_trigger
