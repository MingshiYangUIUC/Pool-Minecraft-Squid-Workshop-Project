# practice lobby

#   <NO BALLS>
# <|snake> <1> <3> <7> <15>
# <-snake> ...
# <Lsnake> ...

# CN
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<空球桌（自由摆球）> ","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 135"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<长边蛇彩> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 136"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 137"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 138"}},{"text":" "}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<短边蛇彩> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 139"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 140"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 141"}},{"text":" "}]
#tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<L型蛇彩> ","color":"white"},{"text":"<敬请期待>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 142"}},{"text":" "}]

# EN
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Empty Table (freely place balls)> ","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 135"}}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Long  side line up> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 136"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 137"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 138"}},{"text":" "}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Short side line up> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 139"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 140"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 141"}},{"text":" "}]
#tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<L shape line up> ","color":"white"},{"text":"<Working on it...>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 142"}},{"text":" "}]
