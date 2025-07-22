execute as @e[tag=swPool_pool,tag=!swPool_placed] at @s run tp @s ~ ~0.02 ~
execute as @e[tag=swPool_pool,tag=swPool_free] run scoreboard players add @s swPool_var02 200


execute as @e[tag=swPool_pool,tag=!swPool_placed] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s swPool_var00
execute as @e[tag=swPool_pool,tag=!swPool_placed] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s swPool_var01
execute as @e[tag=swPool_cue,tag=swPool_free] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s swPool_var02
execute if data storage minecraft:swpool cueballreddot run item replace entity @e[tag=swPool_cue,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_cueball"]
execute unless data storage minecraft:swpool cueballreddot run item replace entity @e[tag=swPool_cue,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_cueball_clean"]
item replace entity @e[tag=swPool_red,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_red"]
item replace entity @e[tag=swPool_yellow,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_yellow"]
item replace entity @e[tag=swPool_green,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_green"]
item replace entity @e[tag=swPool_brown,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_brown"]
item replace entity @e[tag=swPool_blue,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_blue"]
item replace entity @e[tag=swPool_pink,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_pink"]
item replace entity @e[tag=swPool_black,tag=!swPool_placed] armor.head with minecraft:acacia_button[minecraft:item_model="swpool:render_black"]
scoreboard players reset @e[tag=swPool_pool] swPool_var00
scoreboard players reset @e[tag=swPool_pool] swPool_var01
scoreboard players set @e[tag=swPool_pool] swPool_D100 100000
scoreboard players set @e[tag=swPool_pool] swPool_DXX 99000
tag @s add swPool_moved



tag @e[tag=swPool_cue,tag=swPool_free] remove swPool_free
tag @e[tag=swPool_pool] add swPool_placed
tag @e[tag=swPool_start] remove swPool_start


function pool:classes/master/record