execute if entity @e[type=armor_stand,tag=swPool_pooltable,distance=..50] run function pool:classes/lobby/terminate_game
execute unless entity @e[type=armor_stand,tag=swPool_pooltable,distance=..50] run tellraw @s [{"text":"Please go to the table to turn off the game","color":"red"}]