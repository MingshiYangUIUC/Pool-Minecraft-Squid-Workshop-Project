tag @s remove swPool_pool
tag @s add swPool_potting
scoreboard players set @s swPool_T 0
#tellraw @a [{"text":"vx, "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#tellraw @a [{"text":"vz, "},{"score":{"objective":"swPool_vz","name":"@s"}}]
#kill @s