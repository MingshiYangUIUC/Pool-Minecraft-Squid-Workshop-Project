execute if entity @s[tag=swPool_aimred] if entity @e[tag=swPool_yellow,tag=swPool_pool,limit=1] run tag @s add swPool_aimylwt
execute if entity @s[tag=swPool_aimred] unless entity @e[tag=swPool_yellow,tag=swPool_pool,limit=1] run tag @s add swPool_aimblkt
execute if entity @s[tag=swPool_aimblk] if entity @e[tag=swPool_yellow,tag=swPool_pool,limit=1] run tag @s add swPool_aimylwt

execute if entity @s[tag=swPool_aimylw] if entity @e[tag=swPool_red,tag=swPool_pool,limit=1] run tag @s add swPool_aimredt
execute if entity @s[tag=swPool_aimylw] unless entity @e[tag=swPool_red,tag=swPool_pool,limit=1] run tag @s add swPool_aimblkt
execute if entity @s[tag=swPool_aimblk] if entity @e[tag=swPool_red,tag=swPool_pool,limit=1] run tag @s add swPool_aimredt

execute if entity @s[tag=swPool_aimblk] unless entity @e[tag=swPool_red,tag=swPool_pool,limit=1] unless entity @e[tag=swPool_yellow,tag=swPool_pool,limit=1] run tag @s add swPool_aimblkt

tag @s remove swPool_aimred
tag @s remove swPool_aimylw
tag @s remove swPool_aimblk

tag @s[tag=swPool_aimredt] add swPool_aimred
tag @s[tag=swPool_aimylwt] add swPool_aimylw
tag @s[tag=swPool_aimblkt] add swPool_aimblk

tag @s remove swPool_aimredt
tag @s remove swPool_aimylwt
tag @s remove swPool_aimblkt
