clear @a carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cue Ball\""}}
clear @a carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cue Ball\""}}
execute if data storage minecraft:swpool cueballreddot run give @s carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cue Ball\""}}
execute unless data storage minecraft:swpool cueballreddot run give @s carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cue Ball\""}}
