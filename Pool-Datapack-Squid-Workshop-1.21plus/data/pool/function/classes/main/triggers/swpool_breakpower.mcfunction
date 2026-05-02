tellraw @s [{"text":"Activating trigger swPool_breakpower_trigger"}]
scoreboard players operation @s swPool_breakpower = @s swPool_breakpower_trigger

scoreboard players reset @s swPool_breakpower_trigger
