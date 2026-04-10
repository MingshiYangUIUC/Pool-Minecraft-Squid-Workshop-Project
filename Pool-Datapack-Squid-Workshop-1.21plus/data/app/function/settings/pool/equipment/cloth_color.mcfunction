# green, blue, red, and custom colors
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Cloth color. 0: green, 1: blue, 2: red, 3-5: custom_0-custom_2, applies at the next table replacement","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Custom: please replace cloth_rag_custom_... texture with your own x16 image files","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Default: 0. ","color":"gray"},{"text":"Current: "},{"score":{"objective":"swPool_C","name":"table_cloth_color"}},{"text":". "},{"underlined":true,"text":"<Click and type>","color":"white","click_event":{"action":"suggest_command","command":"/scoreboard players set table_cloth_color swPool_C "}}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"台布颜色。0：绿色，1：蓝色，2：红色，3-5：自定义0-自定义2，下次重置球桌后生效","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"自定义：可以自行更改材质包里的 cloth_rag_custom_... 图片文件","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"默认：0。","color":"gray"},{"text":"当前值: "},{"score":{"objective":"swPool_C","name":"table_cloth_color"}},{"text":". "},{"underlined":true,"text":"<点此处后输入>","color":"white","click_event":{"action":"suggest_command","command":"/scoreboard players set table_cloth_color swPool_C "}}]
