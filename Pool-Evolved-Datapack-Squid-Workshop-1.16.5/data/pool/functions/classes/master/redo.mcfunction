execute if entity @e[tag=swPool_pooltable,tag=swPool_endgame] run tellraw @s [{"text":"The final result is inevitable.","color":"red"}]
execute if data storage minecraft:swpool allowcheats unless entity @e[tag=swPool_pooltable,tag=swPool_endgame] run function pool:classes/master/redo_run

execute unless data storage minecraft:swpool allowcheats run tellraw @s [{"text":"Cheat not enabled.","color":"red"}]

