execute if score #tutorial_step_complete swMath_V matches 0 if data storage minecraft:swpool {version:[1205]} if score #tutorial_step_complete swMath_V matches 0 as @a[tag=swPool_on_tutorial] run function pool:classes/tutorial/step1_check_1205
execute if score #tutorial_step_complete swMath_V matches 0 unless data storage minecraft:swpool {version:[1205]} if score #tutorial_step_complete swMath_V matches 0 as @a[tag=swPool_on_tutorial] run function pool:classes/tutorial/step1_check_11

execute if score #tutorial_step_complete swMath_V matches 0 as @a[tag=swPool_on_tutorial] if score #tutorial_holdingstick swMath_V matches 1 run scoreboard players set #tutorial_step swMath_V 2
execute if score #tutorial_step_complete swMath_V matches 0 as @a[tag=swPool_on_tutorial] if score #tutorial_holdingstick swMath_V matches 1 run scoreboard players set #tutorial_step_complete swMath_V 1

execute if score #tutorial_step_complete swMath_V matches 1 as @a[tag=swPool_on_tutorial] if entity @e[tag=swPool_pooltable] run scoreboard players set #tutorial_step swMath_V 3
execute if score #tutorial_step_complete swMath_V matches 1 as @a[tag=swPool_on_tutorial] if entity @e[tag=swPool_pooltable] run scoreboard players set #tutorial_step_complete swMath_V 2

execute if score #tutorial_step_complete swMath_V matches 2 as @a[tag=swPool_on_tutorial] if entity @e[tag=swPool_pool,tag=swPool_cue] if entity @e[tag=swPool_pool,tag=!swPool_cue,tag=!swPool_fake] run scoreboard players set #tutorial_step swMath_V 4
execute if score #tutorial_step_complete swMath_V matches 2 as @a[tag=swPool_on_tutorial] if entity @e[tag=swPool_pool,tag=swPool_cue] if entity @e[tag=swPool_pool,tag=!swPool_cue,tag=!swPool_fake] run scoreboard players set #tutorial_step_complete swMath_V 3

execute if score #tutorial_step_complete swMath_V matches 3 as @a[tag=swPool_on_tutorial] if entity @e[tag=swPool_pool,tag=swPool_cue,scores={swPool_v=1..}] run scoreboard players set #tutorial_step swMath_V 5
execute if score #tutorial_step_complete swMath_V matches 3 as @a[tag=swPool_on_tutorial] if entity @e[tag=swPool_pool,tag=swPool_cue,scores={swPool_v=1..}] run scoreboard players set #tutorial_step_complete swMath_V 4



execute if score #tutorial_step swMath_V matches 1 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"— Getting Equipped —","color":"aqua","bold":true}]
execute if score #tutorial_step swMath_V matches 1 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"— 准备装备 —","color":"aqua","bold":true}]
execute if score #tutorial_step swMath_V matches 1 run function pool:classes/tutorial/step1

execute if score #tutorial_step swMath_V matches 2 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"— Your Very Own Table —","color":"gold","bold":true}]
execute if score #tutorial_step swMath_V matches 2 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"— 打造你的专属球桌 —","color":"gold","bold":true}]
execute if score #tutorial_step swMath_V matches 2 run function pool:classes/tutorial/step2

execute if score #tutorial_step swMath_V matches 3 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"— Setting Up the Balls —","color":"green","bold":true}]
execute if score #tutorial_step swMath_V matches 3 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"— 开始摆球 —","color":"green","bold":true}]
execute if score #tutorial_step swMath_V matches 3 run function pool:classes/tutorial/step3

execute if score #tutorial_step swMath_V matches 4 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"— Your First Shot —","color":"light_purple","bold":true}]
execute if score #tutorial_step swMath_V matches 4 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"— 你的第一杆 —","color":"light_purple","bold":true}]
execute if score #tutorial_step swMath_V matches 4 run function pool:classes/tutorial/step4

execute if score #tutorial_step swMath_V matches 5 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"— You're a Natural! —","color":"yellow","bold":true}]
execute if score #tutorial_step swMath_V matches 5 run tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"— 天赋异禀！—","color":"yellow","bold":true}]
execute if score #tutorial_step swMath_V matches 5 run function pool:classes/tutorial/step5

