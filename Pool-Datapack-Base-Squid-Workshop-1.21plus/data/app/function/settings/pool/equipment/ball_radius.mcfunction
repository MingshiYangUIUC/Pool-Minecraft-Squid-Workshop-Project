# can configure ball radius, and pocket will be scaled accordingly.
# must be 1.21plus
execute unless data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"此功能仅支持1.21及以上版本！","color":"red"}]
execute unless data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"This feature only support version 1.21 and after!","color":"red"}]

execute if data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Change the radius of pool ball (1000=10cm), pockets will be scaled accordingly during new table placement.","color":"white"}]
execute if data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Default: 1250。","color":"gray"},{"text":"Current: "},{"score":{"objective":"swPool_C","name":"C_r"}},{"text":". "},{"underlined":true,"text":"<Click and type>","color":"white","click_event":{"action":"suggest_command","command":"/scoreboard players set C_r swPool_C "}}]

execute if data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"更改台球的半径(1000=10cm)，下次放置球桌时袋口会相应缩放。","color":"white"}]
execute if data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"默认：1250。","color":"gray"},{"text":"当前值: "},{"score":{"objective":"swPool_C","name":"C_r"}},{"text":". "},{"underlined":true,"text":"<点此处后输入>","color":"white","click_event":{"action":"suggest_command","command":"/scoreboard players set C_r swPool_C "}}]
