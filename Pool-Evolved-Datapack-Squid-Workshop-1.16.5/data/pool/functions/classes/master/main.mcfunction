execute if entity @e[tag=swPool_snookermode] if entity @s[tag=swPool_pktx,tag=swPool_pktz] run function pool:classes/pocketing/snooker/main
execute if entity @e[tag=swPool_snookermode] if entity @s[tag=swPool_pktm] run function pool:classes/pocketing/snooker/main
execute if entity @e[tag=swPool_uk8ballmode] if entity @s[tag=swPool_pktx,tag=swPool_pktz] run function pool:classes/pocketing/uk8ball/main
execute if entity @e[tag=swPool_uk8ballmode] if entity @s[tag=swPool_pktm] run function pool:classes/pocketing/uk8ball/main
execute if entity @e[tag=swPool_practicemode] if entity @s[tag=swPool_pktx,tag=swPool_pktz] run function pool:classes/pocketing/practice/main
execute if entity @e[tag=swPool_practicemode] if entity @s[tag=swPool_pktm] run function pool:classes/pocketing/practice/main

tag @s remove swPool_pktx
tag @s remove swPool_pktz
tag @s remove swPool_pktm
tag @s add swPool_a1


execute at @s[scores={swPool_T=0}] run function pool:classes/spin/change_of_state

execute at @s[scores={swPool_v=1..}] run tag @e[tag=swPool_pool,distance=0.01..2.25,sort=nearest,limit=3] add swPool_near
#execute at @s[scores={swPool_v=30000001..40000000}] run tag @e[tag=swPool_pool,distance=0.01..1.15,sort=nearest,limit=3] add swPool_near
#execute at @s[scores={swPool_v=20000001..30000000}] run tag @e[tag=swPool_pool,distance=0.01..1.05,sort=nearest,limit=3] add swPool_near
#execute at @s[scores={swPool_v=10000001..20000000}] run tag @e[tag=swPool_pool,distance=0.01..0.95,sort=nearest,limit=3] add swPool_near
#execute at @s[scores={swPool_v=1..10000000}] run tag @e[tag=swPool_pool,distance=0.01..0.85,sort=nearest,limit=3] add swPool_near
execute at @s as @e[tag=swPool_near,sort=nearest] at @s run function pool:classes/master/select
#execute at @s[scores={swPool_v=10000001..20000000}] as @e[tag=swPool_pool,distance=0.01..1,sort=random] at @s run function pool:classes/master/select
#execute at @s[scores={swPool_v=1..10000000}] as @e[tag=swPool_pool,distance=0.01..1,sort=random] at @s run function pool:classes/master/select
tag @e remove swPool_near
execute at @s run function pool:classes/cushion/main
tag @s remove swPool_a1

function pool:classes/motion/main
tag @s remove swPool_colliding
scoreboard players add @s swPool_T 1

