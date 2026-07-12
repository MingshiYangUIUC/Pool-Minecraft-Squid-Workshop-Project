scoreboard players set @s swPool_lifetime 0
scoreboard players set #shootanim swMath_V 1

execute if data storage minecraft:swpool {version:[116]} run function pool:classes/bot/animation/equip_116
execute if data storage minecraft:swpool {version:[117]} run function pool:classes/bot/animation/equip_117
execute if data storage minecraft:swpool {version:[1205]} run function pool:classes/bot/animation/equip_1205
execute if data storage minecraft:swpool {version:[1210]} unless data storage minecraft:swpool {version:[1240]} run function pool:classes/bot/animation/equip_1210
execute if data storage minecraft:swpool {version:[1210]} if data storage minecraft:swpool {version:[1240]} run function pool:classes/bot/animation/equip_1240

