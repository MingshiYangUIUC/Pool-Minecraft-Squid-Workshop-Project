tellraw @s [{"text":"Activating trigger swPool_pitch_trigger"}]
scoreboard players operation @s swPool_pitch = @s swPool_pitch_trigger

scoreboard players reset @s swPool_pitch_trigger
