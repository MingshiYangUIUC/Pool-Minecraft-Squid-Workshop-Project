tellraw @s [{"text":"Activating trigger swPool_C_nn_complexity_trigger"}]
scoreboard players operation C_nn_complexity swPool_C = @s swPool_C_nn_complexity_trigger

scoreboard players reset @s swPool_C_nn_complexity_trigger
