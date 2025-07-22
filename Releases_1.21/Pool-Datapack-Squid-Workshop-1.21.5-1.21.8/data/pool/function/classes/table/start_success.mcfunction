function pool:classes/table/clear

#EN version

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Do nothing if you don't want to place a new table."}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Choose x table size: "},{"underlined":true,"text":"<04> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 140"}},{"underlined":true,"text":"<06> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 141"}},{"underlined":true,"text":"<08> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 142"}},{"underlined":true,"text":"<10> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 143"}},{"underlined":true,"text":"<12> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 144"}},{"underlined":true,"text":"<14> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 145"}},{"underlined":true,"text":"<Reset>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 146"}}]


tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Choose z table size: "},{"underlined":true,"text":"<04> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 147"}},{"underlined":true,"text":"<06> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 148"}},{"underlined":true,"text":"<08> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 149"}},{"underlined":true,"text":"<10> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 150"}},{"underlined":true,"text":"<12> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 151"}},{"underlined":true,"text":"<14> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 152"}},{"underlined":true,"text":"<Reset>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 153"}}]


tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Suggested sizes: ","color":"white"},{"text":"4*6(Easy) ","color":"green"},{"text":"6*10(Moderate) ","color":"yellow"},{"text":"8*14(Hard)","color":"dark_red"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<Click>","color":"aqua","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 154"}},{"underlined":false,"text":" to check your choice and place the table.","color":"aqua"}]

##CN version

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"如果不想放置新的球桌，现在什么也不做。"}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"或点击选择x方向大小： "},{"underlined":true,"text":"<04> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 140"}},{"underlined":true,"text":"<06> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 141"}},{"underlined":true,"text":"<08> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 142"}},{"underlined":true,"text":"<10> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 143"}},{"underlined":true,"text":"<12> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 144"}},{"underlined":true,"text":"<14> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 145"}},{"underlined":true,"text":"<重置>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 146"}}]


tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"点击选择z方向大小： "},{"underlined":true,"text":"<04> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 147"}},{"underlined":true,"text":"<06> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 148"}},{"underlined":true,"text":"<08> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 149"}},{"underlined":true,"text":"<10> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 150"}},{"underlined":true,"text":"<12> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 151"}},{"underlined":true,"text":"<14> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 152"}},{"underlined":true,"text":"<重置>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 153"}}]


tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"建议大小： ","color":"white"},{"text":"4*6（简单） ","color":"green"},{"text":"6*10（中等） ","color":"yellow"},{"text":"8*14（困难）","color":"dark_red"}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<点击此处>","color":"aqua","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 154"}},{"underlined":false,"text":"检查你的选择并尝试放置球桌。","color":"aqua"}]