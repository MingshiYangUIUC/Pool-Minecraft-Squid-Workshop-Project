
execute as @e[tag=swPool_pool,tag=!swPool_placed] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_var00
execute as @e[tag=swPool_pool,tag=!swPool_placed] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_var01
execute as @e[tag=swPool_cue,tag=swPool_free] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s swPool_var02
execute if data storage minecraft:swpool cueballreddot run replaceitem entity @e[tag=swPool_cue,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:1}
execute unless data storage minecraft:swpool cueballreddot run replaceitem entity @e[tag=swPool_cue,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:36}
replaceitem entity @e[tag=swPool_red,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:2}
replaceitem entity @e[tag=swPool_yellow,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:3}
replaceitem entity @e[tag=swPool_green,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:4}
replaceitem entity @e[tag=swPool_brown,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:5}
replaceitem entity @e[tag=swPool_blue,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:6}
replaceitem entity @e[tag=swPool_pink,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:7}
replaceitem entity @e[tag=swPool_black,tag=!swPool_placed] armor.head minecraft:acacia_button{CustomModelData:8}
scoreboard players reset @e[tag=swPool_pool] swPool_var00
scoreboard players reset @e[tag=swPool_pool] swPool_var01
scoreboard players set @e[tag=swPool_pool] swPool_D100 100000
scoreboard players set @e[tag=swPool_pool] swPool_DXX 99000
tag @s add swPool_moved



tag @e[tag=swPool_cue,tag=swPool_free] remove swPool_free
tag @e[tag=swPool_pool] add swPool_placed
tag @e[tag=swPool_start] remove swPool_start

execute as @e[tag=swPool_pool] at @s run function pool:classes/uk8ball/tp_random

function pool:classes/master/record