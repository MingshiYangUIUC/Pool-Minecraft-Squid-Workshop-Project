tellraw @s [{"text":"Activating trigger swPool_C_mus_trigger"}]
scoreboard players operation C_mus swPool_C = @s swPool_C_mus_trigger

scoreboard players reset @s swPool_C_mus_trigger
