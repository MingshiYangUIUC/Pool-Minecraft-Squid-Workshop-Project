
execute as @e[tag=swPool_pool,tag=!swPool_placed] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_var00
execute as @e[tag=swPool_pool,tag=!swPool_placed] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_var01
execute as @e[tag=swPool_cue,tag=swPool_free] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s swPool_var02
execute if data storage minecraft:swpool cueballreddot run execute as @e[tag=swPool_cue,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":1}}}
execute unless data storage minecraft:swpool cueballreddot run execute as @e[tag=swPool_cue,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":36}}}
execute as @e[tag=swPool_red,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":2}}}
execute as @e[tag=swPool_yellow,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":3}}}
execute as @e[tag=swPool_green,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":4}}}
execute as @e[tag=swPool_brown,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":5}}}
execute as @e[tag=swPool_blue,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":6}}}
execute as @e[tag=swPool_pink,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":7}}}
execute as @e[tag=swPool_black,tag=!swPool_placed] run data merge entity @s {item:{id:"minecraft:acacia_button",Count:1b,components:{"minecraft:custom_model_data":8}}}
scoreboard players reset @e[tag=swPool_pool] swPool_var00
scoreboard players reset @e[tag=swPool_pool] swPool_var01
scoreboard players set @e[tag=swPool_pool] swPool_D100 100000
scoreboard players set @e[tag=swPool_pool] swPool_DXX 99000
tag @s add swPool_moved



tag @e[tag=swPool_cue,tag=swPool_free] remove swPool_free
tag @e[tag=swPool_pool] add swPool_placed
tag @e[tag=swPool_start] remove swPool_start


function pool:classes/master/record