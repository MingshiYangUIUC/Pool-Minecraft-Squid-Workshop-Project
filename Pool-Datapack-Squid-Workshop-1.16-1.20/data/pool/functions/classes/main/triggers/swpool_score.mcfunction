tellraw @s [{"text":"Activating trigger swPool_Score_trigger"}]
scoreboard players operation @s swPool_Score += @s swPool_Score_trigger

scoreboard players reset @s swPool_Score_trigger
