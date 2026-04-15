# original and custom stick
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Cue stick. 1: House cue, 2: custom, 3: custom, 4: custom, 5: custom","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Custom: modify / DIY files named 'cuestickX.json' under 'assets/minecraft/models/item' in the resource pack. Supports 5 different models.","color":"white"}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Default: 1. ","color":"gray"},{"text":"Current: "},{"score":{"objective":"swPool_sticktype","name":"@s"}},{"text":". "},{"underlined":true,"text":"<Click and type>","color":"white","click_event":{"action":"suggest_command","command":"/scoreboard players set @s swPool_sticktype "}}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"球杆。1：公杆，2：自定义，3：自定义，4：自定义，5：自定义","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"自定义：需要更改/自创资源包 'assets/minecraft/models/item' 处名为 'cuestickX.json' 的文件。最多可以有五个不同模型。","color":"white"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"默认：1。","color":"gray"},{"text":"当前值: "},{"score":{"objective":"swPool_sticktype","name":"@s"}},{"text":". "},{"underlined":true,"text":"<点此处后输入>","color":"white","click_event":{"action":"suggest_command","command":"/scoreboard players set @s swPool_sticktype "}}]
