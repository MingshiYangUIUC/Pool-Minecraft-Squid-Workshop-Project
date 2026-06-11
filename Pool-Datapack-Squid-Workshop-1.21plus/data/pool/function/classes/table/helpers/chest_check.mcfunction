execute if entity @s[scores={swPool_sizex=13750..63750}] if entity @s[scores={swPool_sizez=13750..63750}] run tag @s add swPool_success
execute if entity @s[scores={swPool_sizex=13750}] if entity @s[scores={swPool_sizez=13750}] run tag @s remove swPool_success
execute unless entity @s[scores={swPool_sizex=13750}] unless entity @s[scores={swPool_sizex=23750}] unless entity @s[scores={swPool_sizex=33750}] unless entity @s[scores={swPool_sizex=43750}] unless entity @s[scores={swPool_sizex=53750}] unless entity @s[scores={swPool_sizex=63750}] run tag @s remove swPool_success
execute unless entity @s[scores={swPool_sizez=13750}] unless entity @s[scores={swPool_sizez=23750}] unless entity @s[scores={swPool_sizez=33750}] unless entity @s[scores={swPool_sizez=43750}] unless entity @s[scores={swPool_sizez=53750}] unless entity @s[scores={swPool_sizez=63750}] run tag @s remove swPool_success

execute at @e[tag=swPool_table_core,limit=1,sort=nearest] unless data block ~ ~ ~ Items[0].components.minecraft:custom_data.swPool_table_core run tag @s remove swPool_success

tellraw @s[tag=!swPool_success,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":false,"text":"Please try a different setting... Table can't be too small and the size must be standard. Please do not remove the item from the chest.","color":"red"}]
tellraw @s[tag=!swPool_success,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":false,"text":"请设置其它大小……桌子太小或有问题值。请勿从箱子里取出物品。","color":"red"}]

# 1.21, radius is not default: use item_display chest setup
execute if data storage minecraft:swpool {version:[1210]} unless score C_r swPool_C matches 1250 if entity @s[tag=swPool_success] positioned ~ ~ ~ run function pool:classes/table/helpers/chest_set_item_display
# 1.21, radius is default but table1x2 is enabled: use item_display chest setup
execute if data storage minecraft:swpool {version:[1210]} if score C_r swPool_C matches 1250 if data storage minecraft:swpool table1x2 if entity @s[tag=swPool_success] positioned ~ ~ ~ run function pool:classes/table/helpers/chest_set_item_display
# 1.21, radius is default and table1x2 is not enabled: use old chest setup
execute if data storage minecraft:swpool {version:[1210]} if score C_r swPool_C matches 1250 unless data storage minecraft:swpool table1x2 if entity @s[tag=swPool_success] positioned ~ ~ ~ run function pool:classes/table/helpers/chest_set
# older versions: use old chest set
execute unless data storage minecraft:swpool {version:[1210]} if entity @s[tag=swPool_success] positioned ~ ~ ~ run function pool:classes/table/helpers/chest_set

tag @s remove swPool_success
