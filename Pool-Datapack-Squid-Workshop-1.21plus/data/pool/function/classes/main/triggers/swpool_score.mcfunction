tellraw @s [{"text":"Activating trigger swPool_Score_tr"}]
scoreboard players operation @s swPool_Score += @s swPool_Score_tr

scoreboard players reset @s swPool_Score_tr
