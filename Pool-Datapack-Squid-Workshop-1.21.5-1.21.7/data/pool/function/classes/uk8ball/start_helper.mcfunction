tag @s add swPool_startmpuk8ball
execute if entity @a[tag=swPool_poolplay] run tellraw @s [{"text":"A game is already on.","color":"red"}]
#,{"text":" ","color":"white"},{"text":"If you are sure: ","color":"white"},{"text":"<Start Anyway>","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 132"}}]
execute unless entity @a[tag=swPool_poolplay] unless entity @a[tag=swPool_wait_uk8ball] run tellraw @s [{"text":"Please join again from lobby.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_uk8ball] as @a[tag=swPool_wait_uk8ball,limit=1,sort=random] at @s unless entity @a[tag=swPool_wait_uk8ball,distance=0.001..] run tellraw @a[tag=swPool_startmpuk8ball] [{"text":"➇ ","color":"white"},{"text":"Not enough players in queue.","color":"red"}]
execute unless data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_uk8ball] as @a[tag=swPool_wait_uk8ball,limit=1,sort=random] at @s if entity @a[tag=swPool_wait_uk8ball,distance=0.001..] run function pool:classes/uk8ball/start
execute if data storage minecraft:swpool {version:[1205]} unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_uk8ball] as @a[tag=swPool_wait_uk8ball,limit=1,sort=random] at @s if entity @a[tag=swPool_wait_uk8ball,distance=0.001..] run function pool:classes/uk8ball/start_1205

tag @s remove swPool_startmpuk8ball