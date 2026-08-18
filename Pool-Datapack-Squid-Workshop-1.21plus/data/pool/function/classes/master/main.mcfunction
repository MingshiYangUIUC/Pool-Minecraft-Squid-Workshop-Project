# alternative faster mode detection for pocketing
execute if score swPool_9ballmode swMath_V matches 1 if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/9ball/main
execute if score swPool_cn8ballmode swMath_V matches 1 if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/cn8ball/main
execute if score swPool_snookermode swMath_V matches 1 if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/snooker/main
execute if score swPool_uk8ballmode swMath_V matches 1 if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/uk8ball/main
execute if score swPool_practicemode swMath_V matches 1 if entity @s[tag=swPool_inpocket] run function pool:classes/pocketing/practice/main

# some potential pocket interaction cleanup from last tick
tag @s remove swPool_pktx
tag @s remove swPool_pktz
tag @s remove swPool_pktm
tag @s remove swPool_inpocket

# physics engine tag and score initialization
tag @s add swPool_a1
scoreboard players set MinTime swPool_hittime 10000

# update ball initial spin and refresh velocity and omega (after last iteration)
execute at @s[scores={swPool_T=0}] run function pool:classes/spin/change_of_state

# pre_select (add nearby ball to possible collider pool, add more balls if radius is smaller)
function pool:classes/master/pre_select

# if setting applied if cn/uk8ball mode if has the tag (not executed break before) and stroke number is 0, breaking mode = 1
scoreboard players set #breakmode swMath_V 0
execute if score swPool_cn8ballmode swMath_V matches 1 if score Stroke swPool_hidScore matches 0 if data storage minecraft:swpool nn_break if score swPool_8ball_aibreak swMath_V matches 1 run scoreboard players set #breakmode swMath_V 1
execute if score swPool_uk8ballmode swMath_V matches 1 if score Stroke swPool_hidScore matches 0 if data storage minecraft:swpool nn_break if score swPool_8ball_aibreak swMath_V matches 1 run scoreboard players set #breakmode swMath_V 1

# if setting applied if 9ball mode if has the tag (not executed break before) and stroke number is 0, breaking mode = 1
execute if score swPool_9ballmode swMath_V matches 1 if score Stroke swPool_hidScore matches 0 if data storage minecraft:swpool nn_break if score swPool_9ball_aibreak swMath_V matches 1 run scoreboard players set #breakmode swMath_V 1

# quickly sort out and exclude some swPool_near then run physics engine
# store self score once
scoreboard players operation qs_self swPool_v = @s swPool_v
scoreboard players operation D2x_self swMath_V = @s swPool_tmpposx
scoreboard players operation D2z_self swMath_V = @s swPool_tmpposz
scoreboard players operation V2x_self swMath_V = @s swPool_vex
scoreboard players operation V2z_self swMath_V = @s swPool_vez
# run sorting and physics engine
execute positioned ~-3 ~-2 ~-3 as @e[dx=6,dy=4,dz=6,type=item_display,tag=swPool_near] at @s run function pool:classes/master/filter_run

# run cushion detection only for still moving balls
execute unless score @s swPool_v matches 0 at @s run function pool:classes/cushion/main

# if no bouncing happen before collision (no swPool_bounce tag), go to collision pipe
execute if entity @s[tag=swPool_col1,tag=!swPool_bounce] as @e[type=item_display,tag=swPool_col,limit=2,scores={swPool_v=1..}] at @s run function pool:classes/collision/new_join

# if breakshot, determine whether using NN for IO if needed, or normal collision
scoreboard players set #breakhappen swMath_V 1
execute if score #colfake swMath_V matches 1 run scoreboard players set #breakhappen swMath_V 0
execute if score #breakmode swMath_V matches 0 run scoreboard players set #breakhappen swMath_V 0

# normal collision
execute if score #breakhappen swMath_V matches 0 if entity @s[tag=swPool_col1,tag=!swPool_bounce] at @s run function pool:classes/collision/helper

# breakshot IO
execute unless score #breakhappen swMath_V matches 0 unless score swPool_9ballmode swMath_V matches 1 unless entity @s[tag=swPool_bounce] if entity @s[tag=swPool_col] as @e[type=item_display,tag=swPool_pool,tag=swPool_cue,limit=1] at @s run function pool:classes/break_nn_8ball/io
execute unless score #breakhappen swMath_V matches 0 if score swPool_9ballmode swMath_V matches 1 unless entity @s[tag=swPool_bounce] if entity @s[tag=swPool_col] as @e[type=item_display,tag=swPool_pool,tag=swPool_cue,limit=1] at @s run function pool:classes/break_nn_9ball/io

# if bouncing happens, go to bounce on cushion pipe
execute at @s[tag=swPool_bounce] run function pool:classes/cushion/bounce_end

# reset collision helper tags
execute if score #col swMath_V matches 1 as @e[type=item_display,tag=swPool_col] run function pool:classes/master/_helpers/clean_col_tags
scoreboard players reset #col swMath_V

# reset cushion helper tags
execute if score #execcushion swMath_V matches 1 run function pool:classes/master/_helpers/clean_cush_tags

# movement of the ball
function pool:classes/motion/main

# final cleanup
tag @s remove swPool_colliding
tag @s remove swPool_a1

# increment time
scoreboard players add @s swPool_T 1
