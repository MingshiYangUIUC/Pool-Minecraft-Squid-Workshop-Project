execute unless data storage minecraft:swpool {version:[1205]} run function app:get/pool/cuestick

# if 1205 and above: check if recipe is required 0: not required, 1: required
execute if data storage minecraft:swpool {version:[1205]} run scoreboard players set #checkrecipe swMath_V 1
execute if data storage minecraft:swpool {version:[1205]} if entity @s[gamemode=creative] run scoreboard players set #checkrecipe swMath_V 0
execute if data storage minecraft:swpool {version:[1205]} unless data storage minecraft:swpool userecipe run scoreboard players set #checkrecipe swMath_V 0

execute if data storage minecraft:swpool {version:[1205]} if score #checkrecipe swMath_V matches 0 run function app:get/pool/cuestick_1205
execute if data storage minecraft:swpool {version:[1205]} if score #checkrecipe swMath_V matches 1 run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请用工作台制作球杆。（已开启配方设置，并且您不在创造模式）","color":"red"}]
execute if data storage minecraft:swpool {version:[1205]} if score #checkrecipe swMath_V matches 1 run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please craft the stick using the Crafting Table. (Recipe requirement is set to ON, and you are not in creative mode)","color":"red"}]
