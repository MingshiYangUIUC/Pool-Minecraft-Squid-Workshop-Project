function pool:classes/table/clear

tag @a remove swPool_badsetting

execute unless data storage minecraft:swpool {version:[1]} run tag @s add swPool_badsetting
execute if score C_muk swPool_C matches 0 if score C_mur swPool_C matches 0 if score C_muk swPool_C matches 0 run tag @s add swPool_badsetting


execute unless entity @a[tag=swPool_badsetting] run function pool:classes/table/start_success

execute if entity @a[tag=swPool_badsetting] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"color":"red","text":"Invalid setting about game version or coefficients."}]
execute if entity @a[tag=swPool_badsetting] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"color":"red","text":"请检查系数和游戏版本设置。"}]

tag @a remove swPool_badsetting
