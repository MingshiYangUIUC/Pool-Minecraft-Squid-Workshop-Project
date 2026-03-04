clear @a carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
clear @a carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cueball\""}}
execute if data storage minecraft:swpool cueballreddot run give @s carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
execute unless data storage minecraft:swpool cueballreddot run give @s carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cueball\""}}
