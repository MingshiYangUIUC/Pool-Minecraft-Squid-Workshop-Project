execute if entity @s[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_poolplay] add swPool_ballinhand
playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1
playsound minecraft:block.barrel.close ambient @a ~ ~ ~ 1 1
kill @s