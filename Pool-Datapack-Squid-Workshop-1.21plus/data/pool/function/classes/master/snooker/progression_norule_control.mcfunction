# color-ball ball in hand control

clear @s carrot_on_a_stick[minecraft:item_model="swpool:object_yellow"]
clear @s carrot_on_a_stick[minecraft:item_model="swpool:object_green"]
clear @s carrot_on_a_stick[minecraft:item_model="swpool:object_brown"]
clear @s carrot_on_a_stick[minecraft:item_model="swpool:object_blue"]
clear @s carrot_on_a_stick[minecraft:item_model="swpool:object_pink"]
clear @s carrot_on_a_stick[minecraft:item_model="swpool:object_black"]

tag @s remove swPool_ballinhand_obj

execute unless entity @e[type=item_display,tag=swPool_yellow,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_yellow",minecraft:custom_name="\"Yellow\""]
execute unless entity @e[type=item_display,tag=swPool_green,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_green",minecraft:custom_name="\"Green\""]
execute unless entity @e[type=item_display,tag=swPool_brown,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_brown",minecraft:custom_name="\"Brown\""]
execute unless entity @e[type=item_display,tag=swPool_blue,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_blue",minecraft:custom_name="\"Blue\""]
execute unless entity @e[type=item_display,tag=swPool_pink,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_pink",minecraft:custom_name="\"Pink\""]
execute unless entity @e[type=item_display,tag=swPool_black,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:item_model="swpool:object_black",minecraft:custom_name="\"Black\""]

tag @s add swPool_ballinhand_obj
