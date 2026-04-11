function pool:classes/table/clear

#EN version

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Do nothing if you don't want to place a new table."}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Choose x table size: "},{"underlined":true,"text":"<04> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 167"}},{"underlined":true,"text":"<06> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 168"}},{"underlined":true,"text":"<08> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 169"}},{"underlined":true,"text":"<10> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 170"}},{"underlined":true,"text":"<12> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 171"}},{"underlined":true,"text":"<14> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 172"}},{"underlined":true,"text":"<Reset>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 173"}}]


tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Choose z table size: "},{"underlined":true,"text":"<04> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 174"}},{"underlined":true,"text":"<06> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 175"}},{"underlined":true,"text":"<08> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 176"}},{"underlined":true,"text":"<10> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 177"}},{"underlined":true,"text":"<12> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 178"}},{"underlined":true,"text":"<14> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 179"}},{"underlined":true,"text":"<Reset>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 180"}}]


tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Suggested sizes: ","color":"white"},{"text":"4*6(Easy) ","color":"green"},{"text":"6*10(Moderate) ","color":"yellow"},{"text":"8*14(Hard)","color":"dark_red"},{"text":" Note: at least 1 meter of space is also required around the table.","color":"white"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<Preview>","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 181"}}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<Click>","color":"aqua","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 182"}},{"underlined":false,"text":" to check your choice and place the table.","color":"aqua"}]

#CN version

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"如果不想放置新的球桌，现在什么也不做。"}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"或点击选择x方向大小： "},{"underlined":true,"text":"<04> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 167"}},{"underlined":true,"text":"<06> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 168"}},{"underlined":true,"text":"<08> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 169"}},{"underlined":true,"text":"<10> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 170"}},{"underlined":true,"text":"<12> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 171"}},{"underlined":true,"text":"<14> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 172"}},{"underlined":true,"text":"<重置>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 173"}}]


tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"　点击选择z方向大小： "},{"underlined":true,"text":"<04> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 174"}},{"underlined":true,"text":"<06> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 175"}},{"underlined":true,"text":"<08> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 176"}},{"underlined":true,"text":"<10> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 177"}},{"underlined":true,"text":"<12> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 178"}},{"underlined":true,"text":"<14> ","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 179"}},{"underlined":true,"text":"<重置>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 180"}}]


tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"建议大小： ","color":"white"},{"text":"4*6（简单） ","color":"green"},{"text":"6*10（中等） ","color":"yellow"},{"text":"8*14（困难）","color":"dark_red"},{"text":" 注意：球桌周围也需要至少一米的空间","color":"white"}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<预览大小>","color":"green","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 181"}}]

tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<点击此处>","color":"aqua","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 182"}},{"underlined":false,"text":"检查你的选择并尝试放置球桌。","color":"aqua"}]