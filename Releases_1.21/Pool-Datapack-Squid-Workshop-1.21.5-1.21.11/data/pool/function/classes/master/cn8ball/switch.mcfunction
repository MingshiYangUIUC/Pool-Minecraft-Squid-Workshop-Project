execute if entity @s[tag=swPool_aimsolid] if entity @e[tag=swPool_stripe,tag=swPool_pool,limit=1] run tag @s add swPool_aimstripet
execute if entity @s[tag=swPool_aimsolid] unless entity @e[tag=swPool_stripe,tag=swPool_pool,limit=1] run tag @s add swPool_aim08t
execute if entity @s[tag=swPool_aim08] if entity @e[tag=swPool_stripe,tag=swPool_pool,limit=1] run tag @s add swPool_aimstripet

execute if entity @s[tag=swPool_aimstripe] if entity @e[tag=swPool_solid,tag=swPool_pool,limit=1] run tag @s add swPool_aimsolidt
execute if entity @s[tag=swPool_aimstripe] unless entity @e[tag=swPool_solid,tag=swPool_pool,limit=1] run tag @s add swPool_aim08t
execute if entity @s[tag=swPool_aim08] if entity @e[tag=swPool_solid,tag=swPool_pool,limit=1] run tag @s add swPool_aimsolidt

execute if entity @s[tag=swPool_aim08] unless entity @e[tag=swPool_solid,tag=swPool_pool,limit=1] unless entity @e[tag=swPool_stripe,tag=swPool_pool,limit=1] run tag @s add swPool_aim08t

tag @s remove swPool_aimsolid
tag @s remove swPool_aimstripe
tag @s remove swPool_aim08

tag @s[tag=swPool_aimsolidt] add swPool_aimsolid
tag @s[tag=swPool_aimstripet] add swPool_aimstripe
tag @s[tag=swPool_aim08t] add swPool_aim08

tag @s remove swPool_aimsolidt
tag @s remove swPool_aimstripet
tag @s remove swPool_aim08t
