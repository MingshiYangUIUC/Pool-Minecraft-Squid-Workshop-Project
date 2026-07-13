
kill @e[tag=swPool_aim_pkt]
kill @e[tag=swPool_aim_obj]
kill @e[tag=swPool_aim_obj_d0]
kill @e[tag=swPool_aim_obj_rand]
kill @e[tag=swPool_shooter]
#execute at @e[tag=swPool_aim_obj,tag=!swPool_pkt_blocked] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force

tag @e[tag=swPool_tmp_legal] remove swPool_tmp_legal



scoreboard players reset #muteall swPool_C
scoreboard players reset #botthinking swPool_C

tellraw @a[tag=swPool_debug] [{"text":"DBG ","color":"white"},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1"}},{"text":" ","underlined":false},{"underlined":true,"text":"<撤销上次击球>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4111312"}}]
