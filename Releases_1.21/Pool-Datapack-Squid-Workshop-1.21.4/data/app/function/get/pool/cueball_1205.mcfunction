clear @a minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball",minecraft:custom_name="\"Cue Ball\""]
clear @a minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean",minecraft:custom_name="\"Cue Ball\""]
execute if data storage minecraft:swpool cueballreddot run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball",minecraft:custom_name="\"Cue Ball\""]
execute unless data storage minecraft:swpool cueballreddot run give @s minecraft:carrot_on_a_stick[minecraft:item_model="swpool:object_cueball_clean",minecraft:custom_name="\"Cue Ball\""]
