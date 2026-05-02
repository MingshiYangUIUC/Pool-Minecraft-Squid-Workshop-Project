tellraw @s [{"text":"Activating trigger swPool_sticktype_trigger"}]
scoreboard players operation @s swPool_sticktype = @s swPool_sticktype_trigger

scoreboard players reset @s swPool_sticktype_trigger
