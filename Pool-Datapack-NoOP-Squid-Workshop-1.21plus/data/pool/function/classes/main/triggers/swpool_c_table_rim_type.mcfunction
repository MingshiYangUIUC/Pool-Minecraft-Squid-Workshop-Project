tellraw @s [{"text":"Activating trigger swPool_C_table_rim_type_trigger"}]
scoreboard players operation C_table_rim_type swPool_C = @s swPool_C_table_rim_type_trigger

scoreboard players reset @s swPool_C_table_rim_type_trigger
