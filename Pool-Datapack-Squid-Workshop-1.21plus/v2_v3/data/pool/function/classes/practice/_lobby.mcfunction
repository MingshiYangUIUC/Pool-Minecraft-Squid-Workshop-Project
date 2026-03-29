# practice lobby

#   <NO BALLS>
# <|snake> <1> <3> <7> <15>
# <-snake> ...
# <Lsnake> ...

# CN
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<空球桌（自由摆球）> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/start_helper"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<长边蛇彩> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/snake_3"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/snake_7"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/snake_15"}},{"text":" "}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<短边蛇彩> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/vsnake_3"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/vsnake_7"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/vsnake_15"}},{"text":" "}]
#tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<L型蛇彩> ","color":"white"},{"text":"<敬请期待>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tell @s coming soon"}},{"text":" "}]

# EN
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Empty Table (freely place balls)> ","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/start_helper"}}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Long  side line up> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/snake_3"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/snake_7"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/snake_15"}},{"text":" "}]
tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Short side line up> ","color":"white"},{"text":"<3>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/vsnake_3"}},{"text":" "},{"text":"<7>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/vsnake_7"}},{"text":" "},{"text":"<15>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/practice/balls/settings/vsnake_15"}},{"text":" "}]
#tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<L shape line up> ","color":"white"},{"text":"<Working on it...>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/tell @s coming soon"}},{"text":" "}]
