execute at @s[scores={swPool_v=1..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=10] add swPool_near
execute at @s[scores={swPool_v=1..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.51,sort=nearest,limit=8] add swPool_near
execute at @s[scores={swPool_v=1..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.5,sort=nearest,limit=6] add swPool_near
execute at @s[scores={swPool_v=50000000..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=1.5..3.5,sort=nearest,limit=4] add swPool_near
execute at @s[scores={swPool_v=80000000..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=0.51..3.5,sort=nearest,limit=10] add swPool_near

# radius of fake at most: 0.5, max dist: 1.75
execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=item_display,tag=swPool_fake,distance=..2.25] run tag @e[type=item_display,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=5] add swPool_near
execute at @s[scores={swPool_v=50000000..}] if entity @e[type=item_display,tag=swPool_fake,distance=..2.75] run tag @e[type=item_display,tag=swPool_fake,distance=0.001..2.75,sort=nearest,limit=5] add swPool_near
