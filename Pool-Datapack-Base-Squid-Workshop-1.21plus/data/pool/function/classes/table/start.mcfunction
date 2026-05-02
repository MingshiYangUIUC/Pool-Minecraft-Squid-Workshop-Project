function pool:classes/table/clear

tag @a remove swPool_badsetting

execute unless data storage minecraft:swpool {version:[1]} run tag @s add swPool_badsetting
execute if score C_muk swPool_C matches 0 if score C_mur swPool_C matches 0 if score C_muk swPool_C matches 0 run tag @s add swPool_badsetting


execute unless entity @s[tag=swPool_badsetting] run function pool:classes/table/start_success

execute if entity @s[tag=swPool_badsetting] run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"color":"red","text":"Invalid setting about game version or coefficients."}]
execute if entity @s[tag=swPool_badsetting] run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"color":"red","text":"请检查系数和游戏版本是否正确设置。"}]

execute if entity @s[tag=swPool_badsetting] unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"underlined":true,"text":"<Set Game Version>","color":"gray","click_event":{"action":"suggest_command","command":"/function app:settings/pool/version"}}]
execute if entity @s[tag=swPool_badsetting] unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"underlined":true,"color":"gray","text":"<设置游戏版本>","click_event":{"action":"suggest_command","command":"/function app:settings/pool/version"}}]

execute if entity @s[tag=swPool_badsetting] unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_EN] [{"text":"➇ ","color":"gray"},{"underlined":true,"text":"<Use Default Friction coefs.>","color":"gray","click_event":{"action":"suggest_command","command":"/function app:settings/pool/friction/default"}}]
execute if entity @s[tag=swPool_badsetting] unless data storage minecraft:swpool {version:[1]} run tellraw @a[tag=swPool_CN] [{"text":"➇ ","color":"gray"},{"underlined":true,"color":"gray","text":"<点此使用默认摩擦系数值>","click_event":{"action":"suggest_command","command":"/function app:settings/pool/friction/default"}}]

tag @s remove swPool_badsetting
