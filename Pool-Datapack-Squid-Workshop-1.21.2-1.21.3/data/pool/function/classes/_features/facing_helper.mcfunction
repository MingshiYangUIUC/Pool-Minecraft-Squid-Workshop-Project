execute unless entity @e[tag=swPool_facepocket] run function pool:classes/_features/facing_pocket

execute if entity @s[tag=swPool_facepocket] unless entity @e[tag=swPool_facepocket,distance=0.01..] run function pool:classes/_features/facing_pocket