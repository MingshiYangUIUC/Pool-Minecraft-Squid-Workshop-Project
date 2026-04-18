tellraw @s[tag=swPool_EN] [{"text":"➇ Below is a list of all Settings, you can click to run, but changing scoreboard values may require higher permission levels.", "color":"gold"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 以下是所有设置列表，可以点击执行，但是计分板数值更改可能需要更高权限等级。", "color":"gold"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/cue_deflection>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/aim/cue_deflection"}},{"underlined":false, "color":"white","text":"    manually adjust cue ball deflection (10000 = 1° right from the player's perspective)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/cue_deflection>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/aim/cue_deflection"}},{"underlined":false, "color":"white","text":"    手动调整母球偏移（10000 表示从玩家视角向右偏转 1°）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/zoom>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/aim/zoom"}},{"underlined":false, "color":"white","text":"    you are given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/zoom>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/aim/zoom"}},{"underlined":false, "color":"white","text":"    瞄准球时（按住shift）画面会放大（缓慢效果）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/nozoom>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/aim/nozoom"}},{"underlined":false, "color":"white","text":"    you are not given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/nozoom>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/aim/nozoom"}},{"underlined":false, "color":"white","text":"    瞄准球时（按住shift）画面不会放大"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/breakpower>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/breakshot/breakpower"}},{"underlined":false, "color":"white","text":"    (8/9 ball) modify relative speed of breakshot (120 means 120% speed)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/breakpower>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/breakshot/breakpower"}},{"underlined":false, "color":"white","text":"    （八/九球）更改开球相对速度（120为120%速度）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/default_break>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/breakshot/default_break"}},{"underlined":false, "color":"white","text":"    (8/9 ball) default calculation when breaking rack (only elastic collisions)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/default_break>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/breakshot/default_break"}},{"underlined":false, "color":"white","text":"    （八/九球）炸球堆使用普通计算（弹性碰撞）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/nn_break>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/breakshot/nn_break"}},{"underlined":false, "color":"white","text":"    (8/9 ball) neural network calculation when breaking rack (more realistic)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/nn_break>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/breakshot/nn_break"}},{"underlined":false, "color":"white","text":"    （八/九球）炸球堆使用神经网络计算（更真实）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/nn_complexity>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/breakshot/nn_complexity"}},{"underlined":false, "color":"white","text":"    (8/9 ball) nn model selection (cost vs accuracy)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/nn_complexity>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/breakshot/nn_complexity"}},{"underlined":false, "color":"white","text":"    （八/九球）神经网络复杂度（速度vs精度）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<cheating/allow>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/cheating/allow"}},{"underlined":false, "color":"white","text":"    you are allowed to cheat, you can undo your shoot. This is the default now"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<cheating/allow>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/cheating/allow"}},{"underlined":false, "color":"white","text":"    允许作弊，可撤回击球（现在已经默认开启）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<cheating/disallow>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/cheating/disallow"}},{"underlined":false, "color":"white","text":"    you are not allowed to cheat, you cannot undo your shoot"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<cheating/disallow>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/cheating/disallow"}},{"underlined":false, "color":"white","text":"    禁止作弊，无法撤回击球"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/cloth_color>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/equipment/cloth_color"}},{"underlined":false, "color":"white","text":"    change the cloth color of the table, effective when placing a new table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/cloth_color>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/equipment/cloth_color"}},{"underlined":false, "color":"white","text":"    更改球桌台布的颜色，下次放置球桌时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/stick_type>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/equipment/stick_type"}},{"underlined":false, "color":"white","text":"    change the cue stick appearance, effective when getting a new stick"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/stick_type>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/equipment/stick_type"}},{"underlined":false, "color":"white","text":"    更改球杆的外观，下次获取球杆时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/table_rim_type>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/equipment/table_rim_type"}},{"underlined":false, "color":"white","text":"    change the material of table side rims, effective when placing a new table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/table_rim_type>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/equipment/table_rim_type"}},{"underlined":false, "color":"white","text":"    更改球桌侧沿的材质，下次放置球桌时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":false,"text":"GROUP friction/*"},{"underlined":false, "color":"white","text":"    these functions set friction parameters. Physically 0-10000 corresponds to 0.0000-1.0000 in simulation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":false,"text":"GROUP friction/*"},{"underlined":false, "color":"white","text":"    设置摩擦参数，数值0-10000等效于0.0000-1.0000"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/clear>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/clear"}},{"underlined":false, "color":"white","text":"    reset all friction values"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/clear>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/clear"}},{"underlined":false, "color":"white","text":"    重置所有摩擦参数"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/default>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/default"}},{"underlined":false, "color":"white","text":"    set all friction values to my default (suggested) values"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/default>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/default"}},{"underlined":false, "color":"white","text":"    设置所有摩擦参数为推荐默认值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/impact>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/impact"}},{"underlined":false, "color":"white","text":"    adjust the friction parameter used when ball strikes the cushion"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/impact>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/impact"}},{"underlined":false, "color":"white","text":"    设置碰库时的值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/rolling>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/rolling"}},{"underlined":false, "color":"white","text":"    adjust the friction parameter used when ball is rolling on the table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/rolling>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/rolling"}},{"underlined":false, "color":"white","text":"    设置滚动时的值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/sliding>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/sliding"}},{"underlined":false, "color":"white","text":"    adjust the friction parameter used when ball is sliding on the table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/sliding>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/sliding"}},{"underlined":false, "color":"white","text":"    设置滑动时的值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/striking>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/striking"}},{"underlined":false, "color":"white","text":"    adjust the friction parameter used when striking the cue ball with cue stick"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/striking>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/friction/striking"}},{"underlined":false, "color":"white","text":"    设置球杆击球时的值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<language/chinese_simplified>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/language/chinese_simplified"}},{"underlined":false, "color":"white","text":"    set datapack language to Simplified Chinese."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<language/chinese_simplified>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/language/chinese_simplified"}},{"underlined":false, "color":"white","text":"    将语言切换为简体中文"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<language/english>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/language/english"}},{"underlined":false, "color":"white","text":"    set datapack language to English."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<language/english>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/language/english"}},{"underlined":false, "color":"white","text":"    将语言切换为英语"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<reload/cleanongoingsession>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/reload/cleanongoingsession"}},{"underlined":false, "color":"white","text":"    remove your tables, balls, games, etc. when you run /reload"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<reload/cleanongoingsession>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/reload/cleanongoingsession"}},{"underlined":false, "color":"white","text":"    运行 /reload 时清除球桌、球、对局等"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<reload/keepongoingsession>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/reload/keepongoingsession"}},{"underlined":false, "color":"white","text":"    retain your tables, balls, games, etc. when you run /reload"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<reload/keepongoingsession>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/reload/keepongoingsession"}},{"underlined":false, "color":"white","text":"    运行 /reload 时保留球桌、球、对局等"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<snooker/display/dialogue>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/snooker/display/dialogue"}},{"underlined":false, "color":"white","text":"    use chat window to show Snooker game scores"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<snooker/display/dialogue>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/snooker/display/dialogue"}},{"underlined":false, "color":"white","text":"    用聊天框显示斯诺克比分"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<snooker/display/sidebar>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/snooker/display/sidebar"}},{"underlined":false, "color":"white","text":"    use sidebar to show Snooker game scores"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<snooker/display/sidebar>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/snooker/display/sidebar"}},{"underlined":false, "color":"white","text":"    用计分板显示斯诺克比分"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":false,"text":"GROUP version/*"},{"underlined":false, "color":"white","text":"    these functions configure the version of Minecraft client. Only applicable to mc1.16-1.20."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":false,"text":"GROUP version/*"},{"underlined":false, "color":"white","text":"    这些函数用于设定你的客户端版本，仅适用于mc1.16-1.20版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_16>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_16"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.16.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_16>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_16"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.16.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_17>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_17"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.17.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_17>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_17"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.17.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_18>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_18"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.18.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_18>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_18"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.18.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_19>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_19"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.19.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_19>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_19"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.19.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_20_4_andminus>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_20_4_andminus"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.20.4 and previous 1.20 versions"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_20_4_andminus>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_20_4_andminus"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.20.4 及之前的 1.20 版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_20_5_andplus>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_20_5_andplus"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.20.5 and future 1.20 versions"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_20_5_andplus>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/1_20_5_andplus"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.20.5 及之后的 1.20 版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/reset>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/reset"}},{"underlined":false, "color":"white","text":"    reset the version of your Minecraft client (for 1.20.X and before)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/reset>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/version/reset"}},{"underlined":false, "color":"white","text":"    重置你的客户端版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/cueball_clean>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/cueball_clean"}},{"underlined":false, "color":"white","text":"    switch to pure white cue ball (do not use when a game is active)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/cueball_clean>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/cueball_clean"}},{"underlined":false, "color":"white","text":"    切换成纯白色白球（球局进行中请勿使用）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/cueball_red_dots>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/cueball_red_dots"}},{"underlined":false, "color":"white","text":"    switch to cue ball with red dots (do not use when a game is active)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/cueball_red_dots>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/cueball_red_dots"}},{"underlined":false, "color":"white","text":"    切换成带红点的白球（球局进行中请勿使用）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/disable_ball_spinning>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/disable_ball_spinning"}},{"underlined":false, "color":"white","text":"    the balls do not show rolling animation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/disable_ball_spinning>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/disable_ball_spinning"}},{"underlined":false, "color":"white","text":"    关闭球的旋转动画"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/enable_ball_spinning>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/enable_ball_spinning"}},{"underlined":false, "color":"white","text":"    the balls show rolling animation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/enable_ball_spinning>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/enable_ball_spinning"}},{"underlined":false, "color":"white","text":"    启用球的旋转动画"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/tp_duration>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/tp_duration"}},{"underlined":false, "color":"white","text":"    adjust teleport_duration of Item Display (1.21 and after)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/tp_duration>","clickEvent":{"action":"run_command","value":"/function app:settings/pool/visuals/tp_duration"}},{"underlined":false, "color":"white","text":"    调整Item Display的teleport_duration（动画平滑度，1.21及之后版本）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ End of the list of all Settings.", "color":"gold"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 结束所有设置列表。", "color":"gold"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"italic":false,"text":"<Command Window>","color":"white","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"italic":false,"text":"<命令窗口>","color":"white","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]
