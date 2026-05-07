function pool:classes/table/clear

tag @a remove swPool_badsetting

execute unless data storage minecraft:swpool {version:[1]} run tag @s add swPool_badsetting
execute if score C_muk swPool_C matches 0 if score C_mur swPool_C matches 0 if score C_muk swPool_C matches 0 run tag @s add swPool_badsetting

# recipe requirement
# if 1205 and above: check if recipe is required 0: not required, 1: required
scoreboard players set #checkrecipe swMath_V 0
execute if data storage minecraft:swpool {version:[1205]} run scoreboard players set #checkrecipe swMath_V 1
execute if data storage minecraft:swpool {version:[1205]} if entity @s[gamemode=creative] run scoreboard players set #checkrecipe swMath_V 0
execute if data storage minecraft:swpool {version:[1205]} unless data storage minecraft:swpool userecipe run scoreboard players set #checkrecipe swMath_V 0

execute if data storage minecraft:swpool {version:[1205]} if score #checkrecipe swMath_V matches 1 run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请用工作台制作球桌。（已开启配方设置，并且您不在创造模式）","color":"red"}]
execute if data storage minecraft:swpool {version:[1205]} if score #checkrecipe swMath_V matches 1 run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Please craft the table using the Crafting Table. (Recipe requirement is set to ON, and you are not in creative mode)","color":"red"}]

execute unless entity @s[tag=swPool_badsetting] if score #checkrecipe swMath_V matches 0 run function pool:classes/table/start_success

execute if entity @s[tag=swPool_badsetting] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"color":"red","text":"Invalid setting about game version or coefficients."}]
execute if entity @s[tag=swPool_badsetting] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"color":"red","text":"请检查系数和游戏版本是否正确设置。"}]

execute if entity @s[tag=swPool_badsetting] unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"underlined":true,"text":"<Set Game Version>","color":"gray","clickEvent":{"action":"suggest_command","value":"/function app:settings/pool/version"}}]
execute if entity @s[tag=swPool_badsetting] unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"underlined":true,"color":"gray","text":"<设置游戏版本>","clickEvent":{"action":"suggest_command","value":"/function app:settings/pool/version"}}]

execute if entity @s[tag=swPool_badsetting] unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"underlined":true,"text":"<Use Default Friction coefs.>","color":"gray","clickEvent":{"action":"suggest_command","value":"/function app:settings/pool/friction/default"}}]
execute if entity @s[tag=swPool_badsetting] unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"underlined":true,"color":"gray","text":"<点此使用默认摩擦系数值>","clickEvent":{"action":"suggest_command","value":"/function app:settings/pool/friction/default"}}]

tag @s remove swPool_badsetting
