# relax number and radius a little bit to be safer
execute at @s[scores={swPool_v=1..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=6] add swPool_near
execute at @s[scores={swPool_v=1..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.61,sort=nearest,limit=4] add swPool_near
execute at @s[scores={swPool_v=1..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=0.61..1.6,sort=nearest,limit=3] add swPool_near
execute at @s[scores={swPool_v=50000000..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.6,sort=nearest,limit=2] add swPool_near
execute at @s[scores={swPool_v=80000000..}] run tag @e[type=item_display,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.6,sort=nearest,limit=5] add swPool_near

# radius of fake at most: 0.5, max dist: 1.75, relax it a little bit to be safer
execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=item_display,tag=swPool_fake,distance=..1.75] run tag @e[type=item_display,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=6] add swPool_near
execute at @s[scores={swPool_v=50000000..}] if entity @e[type=item_display,tag=swPool_fake,distance=..2.25] run tag @e[type=item_display,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=6] add swPool_near
