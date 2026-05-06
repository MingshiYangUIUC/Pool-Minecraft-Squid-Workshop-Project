execute if entity @s[scores={swPool_sizex=13750..63750}] if entity @s[scores={swPool_sizez=13750..63750}] run tag @s add swPool_success
execute if entity @s[scores={swPool_sizex=13750}] if entity @s[scores={swPool_sizez=13750}] run tag @s remove swPool_success
execute unless entity @s[scores={swPool_sizex=13750}] unless entity @s[scores={swPool_sizex=23750}] unless entity @s[scores={swPool_sizex=33750}] unless entity @s[scores={swPool_sizex=43750}] unless entity @s[scores={swPool_sizex=53750}] unless entity @s[scores={swPool_sizex=63750}] run tag @s remove swPool_success
execute unless entity @s[scores={swPool_sizez=13750}] unless entity @s[scores={swPool_sizez=23750}] unless entity @s[scores={swPool_sizez=33750}] unless entity @s[scores={swPool_sizez=43750}] unless entity @s[scores={swPool_sizez=53750}] unless entity @s[scores={swPool_sizez=63750}] run tag @s remove swPool_success

execute at @e[tag=swPool_table_core,limit=1,sort=nearest] unless data block ~ ~ ~ Items[0].components.minecraft:custom_data.swPool_table_core run tag @s remove swPool_success

tellraw @s[tag=!swPool_success,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":false,"text":"Please try a different setting... Table can't be too small and the size must be standard. Please do not remove the item from the chest.","color":"red"}]
tellraw @s[tag=!swPool_success,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":false,"text":"请设置其它大小……桌子太小或有问题值。请勿从箱子里取出物品。","color":"red"}]

execute if entity @s[tag=swPool_success] positioned ~ ~ ~ run function pool:classes/table/helpers/chest_set

tag @s remove swPool_success
