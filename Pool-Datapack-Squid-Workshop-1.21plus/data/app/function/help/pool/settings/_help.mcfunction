tellraw @s[tag=swPool_EN] [{"text":"➇ Below is a list of all Settings, you can click to run, but changing scoreboard values may require higher permission levels.", "color":"gold"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 以下是所有设置列表，可以点击执行，但是计分板数值更改可能需要更高权限等级。", "color":"gold"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<aim/cue_deflection>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 23"}},{"underlined":false,"text":"    manually adjust cue ball deflection (10000 = 1° right from the player's perspective)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<aim/cue_deflection>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 23"}},{"underlined":false,"text":"    手动调整母球偏移（10000 表示从玩家视角向右偏转 1°）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<aim/zoom>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 24"}},{"underlined":false,"text":"    you are given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<aim/zoom>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 24"}},{"underlined":false,"text":"    瞄准球时（按住shift）画面会放大（缓慢效果）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<aim/nozoom>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 25"}},{"underlined":false,"text":"    you are not given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<aim/nozoom>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 25"}},{"underlined":false,"text":"    瞄准球时（按住shift）画面不会放大"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<breakshot/breakpower>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 26"}},{"underlined":false,"text":"    (8/9 ball) increase speed of breakshot (120 means 120% speed)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<breakshot/breakpower>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 26"}},{"underlined":false,"text":"    （八/九球）开球速度提升（120为120%速度）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<breakshot/default_break>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 27"}},{"underlined":false,"text":"    (8/9 ball) default calculation when breaking rack (only elastic collisions)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<breakshot/default_break>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 27"}},{"underlined":false,"text":"    （八/九球）炸球堆使用普通计算（弹性碰撞）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<breakshot/nn_break>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 28"}},{"underlined":false,"text":"    (8/9 ball) neural network calculation when breaking rack (more realistic)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<breakshot/nn_break>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 28"}},{"underlined":false,"text":"    （八/九球）炸球堆使用神经网络计算（更真实）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<breakshot/nn_complexity>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 29"}},{"underlined":false,"text":"    (8/9 ball) nn model selection (cost vs accuracy)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<breakshot/nn_complexity>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 29"}},{"underlined":false,"text":"    （八/九球）神经网络复杂度（速度vs精度）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<cheating/allow>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 30"}},{"underlined":false,"text":"    you are allowed to cheat, you can undo your shoot. This is the default now"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<cheating/allow>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 30"}},{"underlined":false,"text":"    允许作弊，可撤回击球（现在已经默认开启）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<cheating/disallow>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 31"}},{"underlined":false,"text":"    you are not allowed to cheat, you cannot undo your shoot"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<cheating/disallow>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 31"}},{"underlined":false,"text":"    禁止作弊，无法撤回击球"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<equipment/cloth_color>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 32"}},{"underlined":false,"text":"    change the cloth color of the table, effective when placing a new table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<equipment/cloth_color>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 32"}},{"underlined":false,"text":"    更改球桌台布的颜色，下次放置球桌时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<equipment/stick_type>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 10"}},{"underlined":false,"text":"    change the cue stick appearance, effective when getting a new stick"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<equipment/stick_type>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 10"}},{"underlined":false,"text":"    更改球杆的外观，下次获取球杆时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<equipment/table_rim_type>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 33"}},{"underlined":false,"text":"    change the material of table side rims, effective when placing a new table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<equipment/table_rim_type>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 33"}},{"underlined":false,"text":"    更改球桌侧沿的材质，下次放置球桌时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":false,"text":"GROUP friction/*"},{"underlined":false,"text":"    these functions set friction parameters. Physically 0-10000 corresponds to 0.0000-1.0000 in simulation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":false,"text":"GROUP friction/*"},{"underlined":false,"text":"    设置摩擦参数，数值0-10000等效于0.0000-1.0000"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<friction/clear>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 34"}},{"underlined":false,"text":"    reset all friction values"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<friction/clear>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 34"}},{"underlined":false,"text":"    重置所有摩擦参数"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<friction/default>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 35"}},{"underlined":false,"text":"    set all friction values to my default (suggested) values"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<friction/default>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 35"}},{"underlined":false,"text":"    设置为推荐默认摩擦值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<friction/impact>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 36"}},{"underlined":false,"text":"    adjust the friction parameter used when ball strikes the cushion"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<friction/impact>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 36"}},{"underlined":false,"text":"    设置碰库时的摩擦值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<friction/rolling>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 37"}},{"underlined":false,"text":"    adjust the friction parameter used when ball is rolling on the table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<friction/rolling>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 37"}},{"underlined":false,"text":"    设置滚动时的摩擦值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<friction/sliding>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 38"}},{"underlined":false,"text":"    adjust the friction parameter used when ball is sliding on the table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<friction/sliding>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 38"}},{"underlined":false,"text":"    设置滑动时的摩擦值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<friction/striking>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 39"}},{"underlined":false,"text":"    adjust the friction parameter used when striking the cue ball with cue stick"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<friction/striking>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 39"}},{"underlined":false,"text":"    设置球杆击球时的摩擦值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<language/chinese_simplified>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 40"}},{"underlined":false,"text":"    set datapack language to Simplified Chinese."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<language/chinese_simplified>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 40"}},{"underlined":false,"text":"    将语言切换为简体中文"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<language/english>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 41"}},{"underlined":false,"text":"    set datapack language to English."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<language/english>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 41"}},{"underlined":false,"text":"    将语言切换为英语"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<reload/cleanongoingsession>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 42"}},{"underlined":false,"text":"    remove your tables, balls, games, etc. when you run /reload"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<reload/cleanongoingsession>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 42"}},{"underlined":false,"text":"    运行 /reload 时清除球桌、球、对局等"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<reload/keepongoingsession>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 43"}},{"underlined":false,"text":"    retain your tables, balls, games, etc. when you run /reload"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<reload/keepongoingsession>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 43"}},{"underlined":false,"text":"    运行 /reload 时保留球桌、球、对局等"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<snooker/display/dialogue>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 44"}},{"underlined":false,"text":"    use chat window to show Snooker game scores"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<snooker/display/dialogue>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 44"}},{"underlined":false,"text":"    用聊天框显示斯诺克比分"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<snooker/display/sidebar>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 45"}},{"underlined":false,"text":"    use sidebar to show Snooker game scores"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<snooker/display/sidebar>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 45"}},{"underlined":false,"text":"    用计分板显示斯诺克比分"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":false,"text":"GROUP version/*"},{"underlined":false,"text":"    these functions configure the version of Minecraft client. Applicable to 1.16-1.20."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":false,"text":"GROUP version/*"},{"underlined":false,"text":"    这些函数用于设定你的客户端版本，适用于1.16-1.20版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<version/1_16>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 46"}},{"underlined":false,"text":"    set the version of your Minecraft client if you play 1.16.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<version/1_16>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 46"}},{"underlined":false,"text":"    设置你的客户端版本为 1.16.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<version/1_17>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 47"}},{"underlined":false,"text":"    set the version of your Minecraft client if you play 1.17.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<version/1_17>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 47"}},{"underlined":false,"text":"    设置你的客户端版本为 1.17.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<version/1_18>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 48"}},{"underlined":false,"text":"    set the version of your Minecraft client if you play 1.18.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<version/1_18>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 48"}},{"underlined":false,"text":"    设置你的客户端版本为 1.18.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<version/1_19>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 49"}},{"underlined":false,"text":"    set the version of your Minecraft client if you play 1.19.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<version/1_19>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 49"}},{"underlined":false,"text":"    设置你的客户端版本为 1.19.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<version/1_20_4_andminus>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 50"}},{"underlined":false,"text":"    set the version of your Minecraft client if you play 1.20.4 and previous 1.20 versions"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<version/1_20_4_andminus>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 50"}},{"underlined":false,"text":"    设置你的客户端版本为 1.20.4 及之前的 1.20 版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<version/1_20_5_andplus>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 51"}},{"underlined":false,"text":"    set the version of your Minecraft client if you play 1.20.5 and future 1.20 versions"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<version/1_20_5_andplus>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 51"}},{"underlined":false,"text":"    设置你的客户端版本为 1.20.5 及之后的 1.20 版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<version/reset>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 52"}},{"underlined":false,"text":"    reset the version of your Minecraft client (for 1.20.X and before)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<version/reset>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 52"}},{"underlined":false,"text":"    重置你的客户端版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<visuals/cueball_clean>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 53"}},{"underlined":false,"text":"    switch to pure white cue ball (do not use when a game is active)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<visuals/cueball_clean>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 53"}},{"underlined":false,"text":"    切换成纯白色白球（球局进行中请勿使用）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<visuals/cueball_red_dots>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 54"}},{"underlined":false,"text":"    switch to cue ball with red dots (do not use when a game is active)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<visuals/cueball_red_dots>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 54"}},{"underlined":false,"text":"    切换成带红点的白球（球局进行中请勿使用）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<visuals/disable_ball_spinning>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 55"}},{"underlined":false,"text":"    the balls do not show rolling animation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<visuals/disable_ball_spinning>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 55"}},{"underlined":false,"text":"    关闭球的旋转动画"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<visuals/enable_ball_spinning>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 56"}},{"underlined":false,"text":"    the balls show rolling animation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"text":"<visuals/enable_ball_spinning>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 56"}},{"underlined":false,"text":"    启用球的旋转动画"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<visuals/tp_duration>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 57"}},{"underlined":false,"text":"    adjust teleport_duration of Item Display (1.21.4 and after)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gray"},{"underlined":true,"text":"<visuals/tp_duration>","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 57"}},{"underlined":false,"text":"    调整Item Display的teleport_duration（动画平滑度，1.21.4及之后版本）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ End of the list of all Settings.", "color":"gold"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 结束所有设置列表。", "color":"gold"}]

