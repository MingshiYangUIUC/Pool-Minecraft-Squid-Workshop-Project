# green, blue, red, and custom colors
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Cloth color. 1: green, 2: blue, 3: red, 4: custom_0, 5: custom_1, 6: custom_2, applies at the next table replacement","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Using custom cloth texture: please replace 'cloth_rag_custom_X' texture with your own x16 image files under 'assets/minecraft/textures/item/pool' in the resource pack。","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Default: 1. ","color":"gray"},{"text":"Current: "},{"score":{"objective":"swPool_C","name":"C_tcc"}},{"text":". "},{"underlined":true,"text":"<Click and type>","color":"white","clickEvent":{"action":"suggest_command","value":"/trigger swPool_C_tcc_tr set "}}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"台布颜色。1：绿色，2：蓝色，3：红色，4：自定义_0，5：自定义_1，6：自定义_2，下次重置球桌后生效","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"添加自定义台布材质：可以自行覆盖资源包 'assets/minecraft/textures/item/pool' 处的 'cloth_rag_custom_X' x16 图片文件","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"默认：1。","color":"gray"},{"text":"当前值: "},{"score":{"objective":"swPool_C","name":"C_tcc"}},{"text":". "},{"underlined":true,"text":"<点此处后输入>","color":"white","clickEvent":{"action":"suggest_command","value":"/trigger swPool_C_tcc_tr set "}}]
