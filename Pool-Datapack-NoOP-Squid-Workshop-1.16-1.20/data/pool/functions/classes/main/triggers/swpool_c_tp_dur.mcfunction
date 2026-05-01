tellraw @s [{"text":"Activating trigger swPool_C_tp_dur_trigger"}]
scoreboard players operation C_tp_dur swPool_C = @s swPool_C_tp_dur_trigger

scoreboard players reset @s swPool_C_tp_dur_trigger
