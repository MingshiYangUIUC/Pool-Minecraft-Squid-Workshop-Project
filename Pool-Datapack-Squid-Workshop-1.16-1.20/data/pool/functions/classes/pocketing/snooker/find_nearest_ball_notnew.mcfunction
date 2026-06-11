scoreboard players reset @s swPool_dist
execute at @s run tag @e[tag=swPool_pool,tag=!swPool_new,limit=1,sort=nearest,distance=..0.5] add swPool_d2
execute if entity @e[tag=swPool_d2] at @s run function pool:classes/physics/distancexz
tag @e[tag=swPool_d2] remove swPool_d2
#tellraw @a [{"text":"Dn, "},{"score":{"objective":"swPool_dist","name":"@s"}}]