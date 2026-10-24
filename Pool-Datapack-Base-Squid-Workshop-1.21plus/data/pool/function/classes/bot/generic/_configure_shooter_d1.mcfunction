# summon d1 shooter according to d0 shooter
execute if data storage minecraft:swpool {version:[116]} run function pool:classes/bot/116/summon_shooter
execute unless data storage minecraft:swpool {version:[116]} run function pool:classes/bot/117/summon_shooter

execute if entity @e[tag=swPool_shooter_d0,tag=swPool_aimsolid,limit=1] run tag @e[tag=swPool_shooter,limit=1] add swPool_aimsolid
execute if entity @e[tag=swPool_shooter_d0,tag=swPool_aimstripe,limit=1] run tag @e[tag=swPool_shooter,limit=1] add swPool_aimstripe
execute if entity @e[tag=swPool_shooter_d0,tag=swPool_aim08,limit=1] run tag @e[tag=swPool_shooter,limit=1] add swPool_aim08
