clear @a minecraft:carrot_on_a_stick[minecraft:custom_model_data=99,minecraft:custom_name="\"Cueball\""]
clear @a minecraft:carrot_on_a_stick[minecraft:custom_model_data=100,minecraft:custom_name="\"Cueball\""]
execute if data storage minecraft:swpool cueballreddot run give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=99,minecraft:custom_name="\"Cueball\""]
execute unless data storage minecraft:swpool cueballreddot run give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=100,minecraft:custom_name="\"Cueball\""]
