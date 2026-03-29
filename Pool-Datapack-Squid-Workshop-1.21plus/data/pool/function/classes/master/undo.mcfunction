execute if entity @e[tag=swPool_pooltable,tag=swPool_endgame] run tellraw @s[tag=swPool_EN] [{"text":"The final result is inevitable.","color":"red"}]
execute if entity @e[tag=swPool_pooltable,tag=swPool_endgame] run tellraw @s[tag=swPool_CN] [{"text":"最终结果不可改变。","color":"red"}]
#scoreboard players set RedoTime swPool_hidScore 2

execute if data storage minecraft:swpool allowcheats unless entity @e[tag=swPool_pooltable,tag=swPool_endgame] run function pool:classes/master/undo_run
execute if data storage minecraft:swpool allowonecheat unless entity @e[tag=swPool_pooltable,tag=swPool_endgame] run function pool:classes/master/undo_run


#execute if data storage minecraft:swpool allowcheats unless entity @e[tag=swPool_pooltable,tag=swPool_endgame] run schedule function pool:classes/master/undo_run 2t

execute unless data storage minecraft:swpool allowcheats run tellraw @s[tag=swPool_EN] [{"text":"Cheat not enabled. Please check the settings.","color":"red"}]
execute unless data storage minecraft:swpool allowcheats run tellraw @s[tag=swPool_CN] [{"text":"未开启作弊，请检查设置。","color":"red"}]

data remove storage minecraft:swpool allowonecheat
