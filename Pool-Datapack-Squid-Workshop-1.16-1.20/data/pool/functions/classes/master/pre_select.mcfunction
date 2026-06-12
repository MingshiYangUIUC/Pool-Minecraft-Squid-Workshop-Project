# =========================
# C_r >= 1250, original logic
# =========================

execute if score C_r swPool_C matches 1250.. run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=6] add swPool_near
execute if score C_r swPool_C matches 1250.. run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.61,sort=nearest,limit=4] add swPool_near
execute if score C_r swPool_C matches 1250.. run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.61..1.6,sort=nearest,limit=3] add swPool_near
execute if score C_r swPool_C matches 1250.. run execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.6,sort=nearest,limit=2] add swPool_near
execute if score C_r swPool_C matches 1250.. run execute at @s[scores={swPool_v=80000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.6,sort=nearest,limit=5] add swPool_near

execute if score C_r swPool_C matches 1250.. run execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..1.75] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=6] add swPool_near
execute if score C_r swPool_C matches 1250.. run execute at @s[scores={swPool_v=50000000..}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..2.25] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=6] add swPool_near


# =========================
# C_r = 1000..1249
# =========================

execute if score C_r swPool_C matches 1000..1249 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=7] add swPool_near
execute if score C_r swPool_C matches 1000..1249 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.61,sort=nearest,limit=5] add swPool_near
execute if score C_r swPool_C matches 1000..1249 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.61..1.6,sort=nearest,limit=4] add swPool_near
execute if score C_r swPool_C matches 1000..1249 run execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.6,sort=nearest,limit=3] add swPool_near
execute if score C_r swPool_C matches 1000..1249 run execute at @s[scores={swPool_v=80000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.6,sort=nearest,limit=6] add swPool_near

execute if score C_r swPool_C matches 1000..1249 run execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..1.75] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=7] add swPool_near
execute if score C_r swPool_C matches 1000..1249 run execute at @s[scores={swPool_v=50000000..}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..2.25] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=7] add swPool_near


# =========================
# C_r = 750..999
# =========================

execute if score C_r swPool_C matches 750..999 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=8] add swPool_near
execute if score C_r swPool_C matches 750..999 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.61,sort=nearest,limit=6] add swPool_near
execute if score C_r swPool_C matches 750..999 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.61..1.6,sort=nearest,limit=5] add swPool_near
execute if score C_r swPool_C matches 750..999 run execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.6,sort=nearest,limit=3] add swPool_near
execute if score C_r swPool_C matches 750..999 run execute at @s[scores={swPool_v=80000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.6,sort=nearest,limit=7] add swPool_near

execute if score C_r swPool_C matches 750..999 run execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..1.75] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=8] add swPool_near
execute if score C_r swPool_C matches 750..999 run execute at @s[scores={swPool_v=50000000..}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..2.25] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=8] add swPool_near


# =========================
# C_r = 500..749
# =========================

execute if score C_r swPool_C matches 500..749 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=10] add swPool_near
execute if score C_r swPool_C matches 500..749 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.61,sort=nearest,limit=7] add swPool_near
execute if score C_r swPool_C matches 500..749 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.61..1.6,sort=nearest,limit=6] add swPool_near
execute if score C_r swPool_C matches 500..749 run execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.6,sort=nearest,limit=4] add swPool_near
execute if score C_r swPool_C matches 500..749 run execute at @s[scores={swPool_v=80000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.6,sort=nearest,limit=9] add swPool_near

execute if score C_r swPool_C matches 500..749 run execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..1.75] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=10] add swPool_near
execute if score C_r swPool_C matches 500..749 run execute at @s[scores={swPool_v=50000000..}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..2.25] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=10] add swPool_near


# =========================
# C_r = 250..499
# =========================

execute if score C_r swPool_C matches 250..499 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=12] add swPool_near
execute if score C_r swPool_C matches 250..499 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.61,sort=nearest,limit=9] add swPool_near
execute if score C_r swPool_C matches 250..499 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.61..1.6,sort=nearest,limit=7] add swPool_near
execute if score C_r swPool_C matches 250..499 run execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.6,sort=nearest,limit=5] add swPool_near
execute if score C_r swPool_C matches 250..499 run execute at @s[scores={swPool_v=80000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.6,sort=nearest,limit=11] add swPool_near

execute if score C_r swPool_C matches 250..499 run execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..1.75] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=12] add swPool_near
execute if score C_r swPool_C matches 250..499 run execute at @s[scores={swPool_v=50000000..}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..2.25] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=12] add swPool_near


# =========================
# C_r <= 249, very small radius
# =========================

execute if score C_r swPool_C matches ..249 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=15] add swPool_near
execute if score C_r swPool_C matches ..249 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.61,sort=nearest,limit=12] add swPool_near
execute if score C_r swPool_C matches ..249 run execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.61..1.6,sort=nearest,limit=9] add swPool_near
execute if score C_r swPool_C matches ..249 run execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.6,sort=nearest,limit=7] add swPool_near
execute if score C_r swPool_C matches ..249 run execute at @s[scores={swPool_v=80000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.51..2.6,sort=nearest,limit=15] add swPool_near

execute if score C_r swPool_C matches ..249 run execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..1.75] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=18] add swPool_near
execute if score C_r swPool_C matches ..249 run execute at @s[scores={swPool_v=50000000..}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..2.25] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..2.25,sort=nearest,limit=18] add swPool_near