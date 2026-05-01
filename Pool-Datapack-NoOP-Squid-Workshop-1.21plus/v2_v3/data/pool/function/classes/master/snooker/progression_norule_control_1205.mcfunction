# color-ball ball in hand control

clear @s carrot_on_a_stick[minecraft:custom_model_data=102]
clear @s carrot_on_a_stick[minecraft:custom_model_data=103]
clear @s carrot_on_a_stick[minecraft:custom_model_data=104]
clear @s carrot_on_a_stick[minecraft:custom_model_data=105]
clear @s carrot_on_a_stick[minecraft:custom_model_data=106]
clear @s carrot_on_a_stick[minecraft:custom_model_data=107]

tag @s remove swPool_ballinhand_obj

execute unless entity @e[type=item_display,tag=swPool_yellow,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=102,minecraft:custom_name="\"Yellow\""]
execute unless entity @e[type=item_display,tag=swPool_green,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=103,minecraft:custom_name="\"Green\""]
execute unless entity @e[type=item_display,tag=swPool_brown,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=104,minecraft:custom_name="\"Brown\""]
execute unless entity @e[type=item_display,tag=swPool_blue,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=105,minecraft:custom_name="\"Blue\""]
execute unless entity @e[type=item_display,tag=swPool_pink,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=106,minecraft:custom_name="\"Pink\""]
execute unless entity @e[type=item_display,tag=swPool_black,tag=swPool_pool] run give @s carrot_on_a_stick[custom_data={"swPool_obj":1b},minecraft:custom_model_data=107,minecraft:custom_name="\"Black\""]

tag @s add swPool_ballinhand_obj

tellraw @s[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ Please wait until all balls have stopped moving.","color":"white"}]
tellraw @s[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ 请在所有球停止运动后摆球。","color":"white"}]
