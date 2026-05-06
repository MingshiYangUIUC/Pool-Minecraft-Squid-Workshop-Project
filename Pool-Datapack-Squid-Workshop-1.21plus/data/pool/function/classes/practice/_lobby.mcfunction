# practice lobby

#   <NO BALLS>
# <|snake> <1> <3> <7> <15>
# <-snake> ...
# <Lsnake> ...

# CN
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<空球桌（自由摆球）> ","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4111909"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<长边蛇彩> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191352"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191353"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191351"}},{"text":" "}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<短边蛇彩> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191355"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191356"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191354"}},{"text":" "}]

# EN
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Empty Table (freely place balls)> ","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4111909"}}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Long  side line up> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191352"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191353"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191351"}},{"text":" "}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Short side line up> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191355"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191356"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 411191354"}},{"text":" "}]

tellraw @s[tag=swPool_EN,gamemode=!creative] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<Non-Creative Notice>","color":"red","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 11212"}}]
tellraw @s[tag=swPool_CN,gamemode=!creative] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<非创造模式须知>","color":"red","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 11212"}}]
