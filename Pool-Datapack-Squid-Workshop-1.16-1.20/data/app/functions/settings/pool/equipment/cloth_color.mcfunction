# green, blue, red, and custom colors
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Cloth color. 0: green, 1: blue, 2: red, 3: custom_0, 4: custom_1, 5: custom_2, applies at the next table replacement","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Using custom cloth texture: please replace 'cloth_rag_custom_X' texture with your own x16 image files under 'assets/minecraft/textures/item/pool' in the resource pack。","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Default: 0. ","color":"gray"},{"text":"Current: "},{"score":{"objective":"swPool_C","name":"table_cloth_color"}},{"text":". "},{"underlined":true,"text":"<Click and type>","color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set table_cloth_color swPool_C "}}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"台布颜色。0：绿色，1：蓝色，2：红色，3：自定义_0，4：自定义_1，5：自定义_2，下次重置球桌后生效","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"添加自定义台布材质：可以自行覆盖资源包 'assets/minecraft/textures/item/pool' 处的 'cloth_rag_custom_X' x16 图片文件","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"默认：0。","color":"gray"},{"text":"当前值: "},{"score":{"objective":"swPool_C","name":"table_cloth_color"}},{"text":". "},{"underlined":true,"text":"<点此处后输入>","color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set table_cloth_color swPool_C "}}]
