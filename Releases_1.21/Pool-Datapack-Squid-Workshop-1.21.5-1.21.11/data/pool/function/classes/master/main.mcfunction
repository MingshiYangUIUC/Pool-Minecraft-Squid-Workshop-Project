execute if entity @e[type=item_display,tag=swPool_cn8ballmode,limit=1] if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/cn8ball/main
execute if entity @e[type=item_display,tag=swPool_snookermode,limit=1] if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/snooker/main
execute if entity @e[type=item_display,tag=swPool_uk8ballmode,limit=1] if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/uk8ball/main
execute if entity @e[type=item_display,tag=swPool_practicemode,limit=1] if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/practice/main

tag @s remove swPool_pktx
tag @s remove swPool_pktz
tag @s remove swPool_pktm
tag @s remove swPool_inpocket
tag @s add swPool_a1

scoreboard players set MinTime swPool_hittime 10000
execute at @s[scores={swPool_T=0}] run function pool:classes/spin/change_of_state

tag @e[type=item_display,tag=swPool_fake] add swPool_pool

# pre_select
# slower and more aggressive when breaking
execute if score Stroke swPool_hidScore matches 0 run function pool:classes/master/pre_select_aggressive
execute if score Stroke swPool_hidScore matches 1.. run function pool:classes/master/pre_select

# if setting applied if cn8ball mode if 08 has not moved, breaking mode = 1
scoreboard players set #breakmode swMath_V 0
execute if data storage minecraft:swpool nn_break if entity @e[type=item_display,tag=swPool_cn8ballmode,tag=swPool_8ball_aibreak,limit=1] at @e[type=item_display,tag=swPool_pool,tag=swPool_08,limit=1] if entity @e[type=item_display,tag=swPool_temppin,tag=swPool_08,limit=1,distance=..0.001] run scoreboard players set #breakmode swMath_V 1
execute if data storage minecraft:swpool nn_break if entity @e[type=item_display,tag=swPool_uk8ballmode,tag=swPool_8ball_aibreak,limit=1] at @e[type=item_display,tag=swPool_pool,tag=swPool_black,limit=1] if entity @e[type=item_display,tag=swPool_temppin,tag=swPool_black,limit=1,distance=..0.001] run scoreboard players set #breakmode swMath_V 1

#quicksort exclude some swPool_near
tag @s add swPool_origin
tag @s add swPool_d2
# store self score once
scoreboard players operation qs_self swPool_v = @s swPool_v
scoreboard players operation D2_self swPool_var01 = @s swPool_tmpposx
scoreboard players operation D2_self swPool_var02 = @s swPool_tmpposz
# run function
execute as @e[type=item_display,tag=swPool_near] at @s run function pool:classes/master/quicksort
# reset
tag @s remove swPool_origin
tag @s remove swPool_d2
#scoreboard players reset qs_self swPool_v
#scoreboard players reset D2_self swPool_var01
#scoreboard players reset D2_self swPool_var02

execute at @s as @e[type=item_display,tag=swPool_near,sort=random] at @s run function pool:classes/master/select

execute at @s run function pool:classes/cushion/main

scoreboard players operation @e[type=item_display,tag=swPool_col] swPool_hittime = MinTime swPool_hittime
execute if entity @s[tag=swPool_col1,tag=!swPool_bounce] as @e[type=item_display,tag=swPool_col,limit=2,scores={swPool_v=1..}] at @s run function pool:classes/collision/new_join
#execute if entity @s[tag=swPool_col1,tag=!swPool_bounce] as @e[type=item_display,tag=swPool_col,limit=2,scores={swPool_v=1..}] at @s run say join
#execute if entity @e[tag=swPool_col,tag=swPool_fake,tag=swPool_edge] run say colfake

scoreboard players set #breakhappen swMath_V 1
execute if entity @e[type=item_display,tag=swPool_col,tag=swPool_fake] run scoreboard players set #breakhappen swMath_V 0
execute if score #breakmode swMath_V matches 0 run scoreboard players set #breakhappen swMath_V 0

execute if score #breakhappen swMath_V matches 0 if entity @s[tag=!swPool_bounce] run scoreboard players set @e[type=item_display,tag=swPool_col] swPool_v 0
execute if score #breakhappen swMath_V matches 0 if entity @s[tag=swPool_col1,tag=!swPool_bounce] at @s run function pool:classes/collision/helper

execute unless score #breakhappen swMath_V matches 0 unless entity @s[tag=swPool_bounce] if entity @s[tag=swPool_col] as @e[type=item_display,tag=swPool_pool,tag=swPool_cue,limit=1] at @s run function pool:classes/break_nn/io

#execute at @s[tag=swPool_bounce] run say bounce
#execute at @s[tag=swPool_col,tag=!swPool_bounce] run say col
execute at @s[tag=swPool_bounce] run function pool:classes/cushion/bounce_end

scoreboard players reset @e[type=item_display,tag=swPool_col] swPool_hittime
tag @e[type=item_display,tag=swPool_col] remove swPool_col1
tag @e[type=item_display,tag=swPool_col] remove swPool_col2
tag @e[type=item_display,tag=swPool_col] remove swPool_col
tag @s remove swPool_bounce
tag @s remove swPool_nobounce
tag @e[type=item_display] remove swPool_near
tag @e[type=item_display,tag=swPool_fake] remove swPool_pool
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
#execute at @s as @e[type=item_display,tag=swPool_pool,distance=0.01..0.5] run scoreboard players add @e[tag=swPool_detect,limit=1] swPool_count 1

#execute if entity @e[type=item_display,tag=swPool_pooltable,tag=swPool_break,limit=1] if score @s swPool_count matches 2.. run say loop
#execute if entity @e[type=item_display,tag=swPool_pooltable,tag=swPool_break,limit=1] if score @s swPool_count matches 2.. run function pool:classes/master/main
#tag @s remove swPool_detect


scoreboard players add @s swPool_T 1

