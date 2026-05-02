tellraw @s [{"text":"Activating trigger swPool_C_mui_trigger"}]
scoreboard players operation C_mui swPool_C = @s swPool_C_mui_trigger

scoreboard players reset @s swPool_C_mui_trigger
