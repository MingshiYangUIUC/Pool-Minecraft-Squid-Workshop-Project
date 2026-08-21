execute unless score swPool_practicemode swMath_V matches 1 run clear @a carrot_on_a_stick{CustomModelData:99,swPool_cueball:1b,display:{Name:"\"Cue Ball\""}}
execute unless score swPool_practicemode swMath_V matches 1 run clear @a carrot_on_a_stick{CustomModelData:100,swPool_cueball:1b,display:{Name:"\"Cue Ball\""}}
execute if data storage minecraft:swpool cueballreddot run give @s carrot_on_a_stick{CustomModelData:99,swPool_cueball:1b,display:{Name:"\"Cue Ball\""}}
execute unless data storage minecraft:swpool cueballreddot run give @s carrot_on_a_stick{CustomModelData:100,swPool_cueball:1b,display:{Name:"\"Cue Ball\""}}
