tellraw @s[tag=swPool_EN] [{"text":"➇ Player Control","color":"gold"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 玩家控制","color":"gold"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/cue_deflection>","click_event":{"action":"run_command","command":"/function app:settings/pool/aim/cue_deflection"}},{"underlined":false,"color":"gold","text":"    manually adjust cue ball deflection (10000 = 1° right from the player's perspective)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/cue_deflection>","click_event":{"action":"run_command","command":"/function app:settings/pool/aim/cue_deflection"}},{"underlined":false,"color":"gold","text":"    手动调整母球偏移 （10000 表示从玩家视角向右偏转 1°）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/zoom>","click_event":{"action":"run_command","command":"/function app:settings/pool/aim/zoom"}},{"underlined":false,"color":"gold","text":"    you are given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/zoom>","click_event":{"action":"run_command","command":"/function app:settings/pool/aim/zoom"}},{"underlined":false,"color":"gold","text":"    瞄准球时（按住shift） 画面会放大（缓慢效果）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/nozoom>","click_event":{"action":"run_command","command":"/function app:settings/pool/aim/nozoom"}},{"underlined":false,"color":"gold","text":"    you are not given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<aim/nozoom>","click_event":{"action":"run_command","command":"/function app:settings/pool/aim/nozoom"}},{"underlined":false,"color":"gold","text":"    瞄准球时（按住shift） 画面不会放大"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<breakshot/breakpower>","click_event":{"action":"run_command","command":"/function app:settings/pool/breakshot/breakpower"}},{"underlined":false,"color":"gold","text":"    (8/9 ball) modify the relative speed boost of your breakshot (120 means 120% speed)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"gold"},{"underlined":true,"color":"gold","text":"<breakshot/breakpower>","click_event":{"action":"run_command","command":"/function app:settings/pool/breakshot/breakpower"}},{"underlined":false,"color":"gold","text":"    （八/九球）更改自己开球时的速度增幅 （120为120%速度）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"color":"white","text":"<Back>","click_event":{"action":"run_command","command":"/function app:help/pool/settings/_help"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"color":"white","text":"<返回>","click_event":{"action":"run_command","command":"/function app:help/pool/settings/_help"}}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"color":"white","text":"<Command Window>","click_event":{"action":"run_command","command":"/function app:help/pool/commandwindow"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"color":"white","text":"<命令窗口>","click_event":{"action":"run_command","command":"/function app:help/pool/commandwindow"}}]
