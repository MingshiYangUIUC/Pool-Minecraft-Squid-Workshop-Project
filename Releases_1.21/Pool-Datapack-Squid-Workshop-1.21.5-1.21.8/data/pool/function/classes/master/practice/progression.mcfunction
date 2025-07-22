tag @a remove swPool_hitcue
scoreboard players reset @a swPool_firsthit

execute if entity @e[tag=swPool_cue,tag=swPool_pool] run tag @a[tag=swPool_poolplay] remove swPool_ballinhand
execute if entity @a[tag=swPool_ballinhand] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Ball in-hand."}]
execute if entity @a[tag=swPool_ballinhand] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请放置母球。"}]

tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<Command Window>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 11"}},{"text":" ","underlined":false},{"underlined":true,"text":"</back>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 12"}},{"text":" ","underlined":false},{"underlined":true,"text":"<Ball in Hand>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 134"}}]
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 13"}}]

tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 11"}},{"text":" ","underlined":false},{"underlined":true,"text":"<撤销上次击球>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 12"}},{"text":" ","underlined":false},{"underlined":true,"text":"<自由球>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 134"}}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<调整下一次击球>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 13"}}]