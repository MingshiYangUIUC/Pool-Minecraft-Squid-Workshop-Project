tellraw @s[tag=swPool_EN] [{"text":"➇ Player Control","color":"gold"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 玩家控制","color":"gold"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/cue_deflection>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1135011"}},{"underlined":false,"color":"gold","text":"    manually adjust cue ball deflection (10000 = 1° right from the player's perspective)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/cue_deflection>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1135011"}},{"underlined":false,"color":"gold","text":"    手动调整母球偏移 （10000 表示从玩家视角向右偏转 1°）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/zoom>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1135013"}},{"underlined":false,"color":"gold","text":"    you are given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/zoom>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1135013"}},{"underlined":false,"color":"gold","text":"    瞄准球时（按住shift） 画面会放大（缓慢效果）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/nozoom>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1135012"}},{"underlined":false,"color":"gold","text":"    you are not given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/nozoom>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1135012"}},{"underlined":false,"color":"gold","text":"    瞄准球时（按住shift） 画面不会放大"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<breakshot/breakpower>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1135031"}},{"underlined":false,"color":"gold","text":"    (8/9 ball) modify the relative speed boost of your breakshot (120 means 120% speed)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<breakshot/breakpower>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1135031"}},{"underlined":false,"color":"gold","text":"    （八/九球）更改自己开球时的速度增幅 （120为120%速度）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"color":"white","text":"<Back>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1121801"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"color":"white","text":"<返回>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1121801"}}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"color":"white","text":"<Command Window>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"color":"white","text":"<命令窗口>","clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1"}}]
