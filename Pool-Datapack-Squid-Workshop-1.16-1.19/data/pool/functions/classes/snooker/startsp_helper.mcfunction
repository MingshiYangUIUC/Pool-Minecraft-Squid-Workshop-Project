execute if entity @a[tag=swPool_poolplay] run tellraw @s [{"text":"A game is already on.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] run tag @s add swPool_wait_snooker
execute unless entity @a[tag=swPool_poolplay] run tag @s remove swPool_wait_sp
execute unless data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/snooker/startsp
execute if data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] run function pool:classes/snooker/startsp_1205