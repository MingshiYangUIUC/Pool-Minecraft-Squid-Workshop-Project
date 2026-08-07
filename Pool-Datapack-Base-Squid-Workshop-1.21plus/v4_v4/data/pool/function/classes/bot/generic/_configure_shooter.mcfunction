#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["swPool_helper","swPool_shooter"],Duration:1200}
execute if data storage minecraft:swpool {version:[116]} run function pool:classes/bot/116/summon_shooter
execute unless data storage minecraft:swpool {version:[116]} run function pool:classes/bot/117/summon_shooter

# assign shooting tag based on self tag
# cn 8 ball
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aimsolid] run tag @e[tag=swPool_shooter] add swPool_aimsolid
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aimstripe] run tag @e[tag=swPool_shooter] add swPool_aimstripe
execute if entity @e[tag=swPool_pooltable,tag=swPool_cn8ballmode] if entity @e[tag=swPool_bot_thinking,tag=swPool_aim08] run tag @e[tag=swPool_shooter] add swPool_aim08

