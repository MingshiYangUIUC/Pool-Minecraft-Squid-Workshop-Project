execute if entity @a[tag=swPool_poolplay] run tellraw @s [{"text":"A game already started.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] unless entity @a[tag=swPool_wait_snooker] run tellraw @s [{"text":"Please join again from lobby.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_snooker] run function pool:classes/snooker/start
