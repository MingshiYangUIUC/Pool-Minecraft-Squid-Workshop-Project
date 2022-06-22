execute if entity @e[type=armor_stand,tag=swPool_snookermode] if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/snooker/main
execute if entity @e[type=armor_stand,tag=swPool_uk8ballmode] if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/uk8ball/main
execute if entity @e[type=armor_stand,tag=swPool_practicemode] if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/practice/main

tag @s remove swPool_pktx
tag @s remove swPool_pktz
tag @s remove swPool_pktm
tag @s remove swPool_inpocket
tag @s add swPool_a1

scoreboard players set MinTime swPool_hittime 10000
execute at @s[scores={swPool_T=0}] run function pool:classes/spin/change_of_state

tag @e[type=armor_stand,tag=swPool_fake] add swPool_pool
execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.001..0.26,sort=nearest,limit=5] add swPool_near
execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.26..0.51,sort=nearest,limit=4] add swPool_near
execute at @s[scores={swPool_v=1..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=0.51..1.5,sort=nearest,limit=3] add swPool_near
execute at @s[scores={swPool_v=50000000..}] run tag @e[type=armor_stand,tag=swPool_pool,tag=!swPool_fake,distance=1.5..2.5,sort=nearest,limit=2] add swPool_near

# radius of fake at most: 0.5, max dist: 1.75
execute at @s[scores={swPool_v=1..49999999}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..1.75] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.25,sort=nearest,limit=5] add swPool_near
execute at @s[scores={swPool_v=50000000..}] if entity @e[type=armor_stand,tag=swPool_fake,distance=..1.75] run tag @e[type=armor_stand,tag=swPool_fake,distance=0.001..1.75,sort=nearest,limit=5] add swPool_near


#quicksort exclude some swPool_near
tag @s add swPool_origin
tag @s add swPool_d2
execute as @e[type=armor_stand,tag=swPool_near] at @s run function pool:classes/master/quicksort
tag @s remove swPool_origin
tag @s remove swPool_d2

execute at @s as @e[type=armor_stand,tag=swPool_near,sort=random] at @s run function pool:classes/master/select

execute at @s run function pool:classes/cushion/main

scoreboard players operation @e[type=armor_stand,tag=swPool_col] swPool_hittime = MinTime swPool_hittime
execute if entity @s[tag=swPool_col1,tag=!swPool_bounce] as @e[type=armor_stand,tag=swPool_col,limit=2,scores={swPool_v=1..}] at @s run function pool:classes/collision/join
#execute if entity @s[tag=swPool_col1,tag=!swPool_bounce] as @e[type=armor_stand,tag=swPool_col,limit=2,scores={swPool_v=1..}] at @s run say join
#execute if entity @e[tag=swPool_col,tag=swPool_fake,tag=swPool_edge] run say colfake

execute if entity @s[tag=!swPool_bounce] run scoreboard players set @e[type=armor_stand,tag=swPool_col] swPool_v 0

execute if entity @s[tag=swPool_col1,tag=!swPool_bounce] at @s run function pool:classes/collision/helper

#execute at @s[tag=swPool_bounce] run say bounce
#execute at @s[tag=swPool_col,tag=!swPool_bounce] run say col
execute at @s[tag=swPool_bounce] run function pool:classes/cushion/bounce_end

scoreboard players reset @e[type=armor_stand,tag=swPool_col] swPool_hittime
tag @e[type=armor_stand,tag=swPool_col] remove swPool_col1
tag @e[type=armor_stand,tag=swPool_col] remove swPool_col2
tag @e[type=armor_stand,tag=swPool_col] remove swPool_col
tag @s remove swPool_bounce
tag @s remove swPool_nobounce
tag @e[type=armor_stand] remove swPool_near
tag @e[type=armor_stand,tag=swPool_fake] remove swPool_pool
#execute at @s run function pool:classes/cushion/main
tag @s remove swPool_a1
tag @s remove swPool_cush
tag @s remove swPool_x
tag @s remove swPool_z
tag @s remove swPool_x3
tag @s remove swPool_z3

function pool:classes/motion/main
tag @s remove swPool_colliding

#scoreboard players set @s swPool_count 0
#tag @s add swPool_detect
#execute at @s as @e[type=armor_stand,tag=swPool_pool,distance=0.01..0.5] run scoreboard players add @e[tag=swPool_detect,limit=1] swPool_count 1

#execute if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_break,limit=1] if score @s swPool_count matches 2.. run say loop
#execute if entity @e[type=armor_stand,tag=swPool_pooltable,tag=swPool_break,limit=1] if score @s swPool_count matches 2.. run function pool:classes/master/main
#tag @s remove swPool_detect


scoreboard players add @s swPool_T 1

