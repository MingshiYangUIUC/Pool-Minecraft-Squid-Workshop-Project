# can configure ball radius, and pocket will be scaled accordingly.
# must be 1.21plus
execute unless data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"此功能仅支持1.21及以上版本！","color":"red"}]
execute unless data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"This feature only support version 1.21 and after!","color":"red"}]

execute if data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Change the pool-ball radius (1000 = 10 cm). By default, pockets and other table components will scale with the selected radius when a new table is placed. Use equipment/table_scale_fix to keep them at the default scale.","color":"white"}]
execute if data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Default: 1250。","color":"gray"},{"text":"Current: "},{"score":{"objective":"swPool_C","name":"C_r"}},{"text":". "},{"underlined":true,"text":"<Click and type>","color":"white","click_event":{"action":"suggest_command","command":"/scoreboard players set C_r swPool_C "}}]

execute if data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"更改台球半径（1000 = 10 cm）。 默认情况下，下次放置球桌时，袋口等球桌部件会随当前半径缩放。 使用 equipment/table_scale_fix 可将其保持为默认尺寸。","color":"white"}]
execute if data storage minecraft:swpool {version:[1210]} run tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"默认：1250。","color":"gray"},{"text":"当前值: "},{"score":{"objective":"swPool_C","name":"C_r"}},{"text":". "},{"underlined":true,"text":"<点此处后输入>","color":"white","click_event":{"action":"suggest_command","command":"/scoreboard players set C_r swPool_C "}}]
