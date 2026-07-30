# C_r = 250..499

execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=12] add swPool_near
execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.61,sort=nearest,limit=9] add swPool_near
execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.61..1.6,sort=nearest,limit=7] add swPool_near
execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.6,sort=nearest,limit=5] add swPool_near
execute at @s[scores={swPool_v=80000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.6,sort=nearest,limit=11] add swPool_near

execute at @s[scores={swPool_v=1..49999999}] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=12] add swPool_near
execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=12] add swPool_near
