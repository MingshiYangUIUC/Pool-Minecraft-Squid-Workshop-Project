tellraw @s[tag=swPool_EN] [{"text":"➇ Below is a list of all Settings, you can click to run, but changing scoreboard values may require higher permission levels.", "color":"gold"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 以下是所有设置列表，可以点击执行，但是计分板数值更改可能需要更高权限等级。", "color":"gold"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/cue_deflection>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133011"}},{"underlined":false, "color":"white","text":"    manually adjust cue ball deflection (10000 = 1° right from the player's perspective)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/cue_deflection>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133011"}},{"underlined":false, "color":"white","text":"    手动调整母球偏移（10000 表示从玩家视角向右偏转 1°）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/zoom>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133013"}},{"underlined":false, "color":"white","text":"    you are given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/zoom>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133013"}},{"underlined":false, "color":"white","text":"    瞄准球时（按住shift）画面会放大（缓慢效果）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/nozoom>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133012"}},{"underlined":false, "color":"white","text":"    you are not given screen zoom-in (slowness effect) when you point towards cue ball (pressing shift)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<aim/nozoom>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133012"}},{"underlined":false, "color":"white","text":"    瞄准球时（按住shift）画面不会放大"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<bot/action_space_5>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133022"}},{"underlined":false, "color":"white","text":"    Bot evaluates 5 force-spin combinations per aim point."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<bot/action_space_5>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133022"}},{"underlined":false, "color":"white","text":"    电脑玩家基于每个瞄准点评估 5 种力度和旋转的组合。"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<bot/action_space_10>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133021"}},{"underlined":false, "color":"white","text":"    Bot evaluates 10 force-spin combinations per aim point. Increase tick_per_eval if needed."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<bot/action_space_10>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133021"}},{"underlined":false, "color":"white","text":"    电脑玩家基于每个瞄准点评估 10 种力度和旋转的组合。"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<bot/n_aims_eval>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133024"}},{"underlined":false, "color":"white","text":"    Adjust the number of aim points evaluated by the bot. Higher values make the bot stronger."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<bot/n_aims_eval>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133024"}},{"underlined":false, "color":"white","text":"    调整电脑玩家评估的瞄准点数量，数值越高电脑玩家越强"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<bot/tick_per_eval>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133025"}},{"underlined":false, "color":"white","text":"    Adjust the tick time allocated to each bot simulation. Increase this to reduce lag accumulation."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<bot/tick_per_eval>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133025"}},{"underlined":false, "color":"white","text":"    调整每次模拟分配的刻数，调高可减少卡顿累积"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/breakpower>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133031"}},{"underlined":false, "color":"white","text":"    (8/9 ball) modify relative speed of breakshot (120 means 120% speed)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/breakpower>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133031"}},{"underlined":false, "color":"white","text":"    （八/九球）更改开球相对速度（120为120%速度）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/default_break>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133032"}},{"underlined":false, "color":"white","text":"    (8/9 ball) default calculation when breaking rack (only elastic collisions)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/default_break>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133032"}},{"underlined":false, "color":"white","text":"    （八/九球）炸球堆使用普通计算（弹性碰撞）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/nn_break>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133033"}},{"underlined":false, "color":"white","text":"    (8/9 ball) neural network calculation when breaking rack (more realistic)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/nn_break>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133033"}},{"underlined":false, "color":"white","text":"    （八/九球）炸球堆使用神经网络计算（更真实）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/nn_complexity>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133034"}},{"underlined":false, "color":"white","text":"    (8/9 ball) nn model selection (cost vs accuracy)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<breakshot/nn_complexity>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133034"}},{"underlined":false, "color":"white","text":"    （八/九球）神经网络复杂度（速度vs精度）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<cheating/allow>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133041"}},{"underlined":false, "color":"white","text":"    you are allowed to cheat, you can undo your shoot. This is the default now"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<cheating/allow>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133041"}},{"underlined":false, "color":"white","text":"    允许作弊，可撤回击球（现在已经默认开启）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<cheating/disallow>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133042"}},{"underlined":false, "color":"white","text":"    you are not allowed to cheat, you cannot undo your shoot"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<cheating/disallow>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133042"}},{"underlined":false, "color":"white","text":"    禁止作弊，无法撤回击球"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/ball_radius>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133051"}},{"underlined":false, "color":"white","text":"    Only available for 1.21 and later versions. Change the radius of pool ball (1000=10cm), pockets will be scaled accordingly during new table placement."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/ball_radius>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133051"}},{"underlined":false, "color":"white","text":"    仅适用于1.21及之后版本。更改台球的半径(1000=10cm)，下次放置球桌时袋口会相应缩放。"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/cloth_color>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133052"}},{"underlined":false, "color":"white","text":"    change the cloth color of the table, effective when placing a new table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/cloth_color>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133052"}},{"underlined":false, "color":"white","text":"    更改球桌台布的颜色，下次放置球桌时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/enforce_1x2>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133053"}},{"underlined":false, "color":"white","text":"    Only available for 1.21 and later versions. If the table is placed with length equal to 2× width, the playable area will be adjusted to an exact 1:2 ratio."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/enforce_1x2>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133053"}},{"underlined":false, "color":"white","text":"    仅适用于1.21及之后版本。如果放置球桌时长度设为宽度的 2 倍，球桌可用区域会被调整为精确的 1:2 比例。"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/neglect_1x2>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133054"}},{"underlined":false, "color":"white","text":"    Only available for 1.21 and later versions. If the table is placed with length equal to 2× width, the playable area will **not** be adjusted to an exact 1:2 ratio."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/neglect_1x2>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133054"}},{"underlined":false, "color":"white","text":"    仅适用于1.21及之后版本。如果放置球桌时长度设为宽度的 2 倍，球桌可用区域**不会**被强制调整为精确的 1:2 比例。"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/stick_type>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133055"}},{"underlined":false, "color":"white","text":"    change the cue stick appearance, effective when getting a new stick"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/stick_type>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133055"}},{"underlined":false, "color":"white","text":"    更改球杆的外观，下次获取球杆时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/table_rim_type>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133056"}},{"underlined":false, "color":"white","text":"    change the material of table side rims, effective when placing a new table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<equipment/table_rim_type>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133056"}},{"underlined":false, "color":"white","text":"    更改球桌侧沿的材质，下次放置球桌时生效"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":false,"text":"GROUP friction/*"},{"underlined":false, "color":"white","text":"    these functions set friction parameters. Physically 0-10000 corresponds to 0.0000-1.0000 in simulation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":false,"text":"GROUP friction/*"},{"underlined":false, "color":"white","text":"    设置摩擦参数，数值0-10000等效于0.0000-1.0000"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/clear>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133061"}},{"underlined":false, "color":"white","text":"    reset all friction values"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/clear>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133061"}},{"underlined":false, "color":"white","text":"    重置所有摩擦参数"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/default>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133062"}},{"underlined":false, "color":"white","text":"    set all friction values to my default (suggested) values"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/default>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133062"}},{"underlined":false, "color":"white","text":"    设置所有摩擦参数为推荐默认值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/impact>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133063"}},{"underlined":false, "color":"white","text":"    adjust the friction parameter used when ball strikes the cushion"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/impact>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133063"}},{"underlined":false, "color":"white","text":"    设置碰库时的值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/rolling>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133064"}},{"underlined":false, "color":"white","text":"    adjust the friction parameter used when ball is rolling on the table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/rolling>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133064"}},{"underlined":false, "color":"white","text":"    设置滚动时的值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/sliding>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133065"}},{"underlined":false, "color":"white","text":"    adjust the friction parameter used when ball is sliding on the table"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/sliding>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133065"}},{"underlined":false, "color":"white","text":"    设置滑动时的值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/striking>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133066"}},{"underlined":false, "color":"white","text":"    adjust the friction parameter used when striking the cue ball with cue stick"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<friction/striking>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133066"}},{"underlined":false, "color":"white","text":"    设置球杆击球时的值"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<language/chinese_simplified>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133071"}},{"underlined":false, "color":"white","text":"    set datapack language to Simplified Chinese."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<language/chinese_simplified>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133071"}},{"underlined":false, "color":"white","text":"    将语言切换为简体中文"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<language/english>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133072"}},{"underlined":false, "color":"white","text":"    set datapack language to English."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<language/english>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133072"}},{"underlined":false, "color":"white","text":"    将语言切换为英语"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<need_recipes/recipe_off>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133081"}},{"underlined":false, "color":"white","text":"    Disable crafting recipe requirements in non-Creative mode (Minecraft 1.20.5+). Cue sticks and pool tables can be obtained directly through the command window."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<need_recipes/recipe_off>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133081"}},{"underlined":false, "color":"white","text":"    关闭非创造模式下的配方要求（适用于 Minecraft 1.20.5+）。球杆和球桌可直接通过命令窗口获取。"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<need_recipes/recipe_on>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133082"}},{"underlined":false, "color":"white","text":"    Enable crafting recipe requirements in non-Creative mode (Minecraft 1.20.5+). Cue sticks and pool tables must be obtained through crafting."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<need_recipes/recipe_on>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133082"}},{"underlined":false, "color":"white","text":"    开启非创造模式下的配方要求（适用于 Minecraft 1.20.5+）。球杆和球桌需要通过合成获得。"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<reload/cleanongoingsession>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133091"}},{"underlined":false, "color":"white","text":"    remove your tables, balls, games, etc. when you run /reload"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<reload/cleanongoingsession>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133091"}},{"underlined":false, "color":"white","text":"    运行 /reload 时清除球桌、球、对局等"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<reload/keepongoingsession>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133092"}},{"underlined":false, "color":"white","text":"    retain your tables, balls, games, etc. when you run /reload"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<reload/keepongoingsession>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133092"}},{"underlined":false, "color":"white","text":"    运行 /reload 时保留球桌、球、对局等"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<restitution/impact>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133101"}},{"underlined":false, "color":"white","text":"    Impact (cushion) restitution coef, physically 0-10000 corresponds to 0.0000-1.0000 in simulation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<restitution/impact>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133101"}},{"underlined":false, "color":"white","text":"    撞击（库边）的恢复系数，数值0-10000等效于0.0000-1.0000"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<snooker/display/dialogue>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 11331211"}},{"underlined":false, "color":"white","text":"    use chat window to show Snooker game scores"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<snooker/display/dialogue>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 11331211"}},{"underlined":false, "color":"white","text":"    用聊天框显示斯诺克比分"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<snooker/display/sidebar>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 11331212"}},{"underlined":false, "color":"white","text":"    use sidebar to show Snooker game scores"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<snooker/display/sidebar>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 11331212"}},{"underlined":false, "color":"white","text":"    用计分板显示斯诺克比分"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":false,"text":"GROUP version/*"},{"underlined":false, "color":"white","text":"    these functions configure the version of Minecraft client. Only applicable to mc1.16-1.20."}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":false,"text":"GROUP version/*"},{"underlined":false, "color":"white","text":"    这些函数用于设定你的客户端版本，仅适用于mc1.16-1.20版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_16>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133131"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.16.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_16>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133131"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.16.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_17>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133132"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.17.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_17>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133132"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.17.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_18>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133133"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.18.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_18>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133133"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.18.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_19>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133134"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.19.x"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_19>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133134"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.19.x"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_20_4_andminus>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133135"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.20.4 and previous 1.20 versions"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_20_4_andminus>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133135"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.20.4 及之前的 1.20 版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_20_5_andplus>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133136"}},{"underlined":false, "color":"white","text":"    set the version of your Minecraft client if you play 1.20.5 and future 1.20 versions"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/1_20_5_andplus>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133136"}},{"underlined":false, "color":"white","text":"    设置你的客户端版本为 1.20.5 及之后的 1.20 版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/reset>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133137"}},{"underlined":false, "color":"white","text":"    reset the version of your Minecraft client (for 1.20.X and before)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<version/reset>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133137"}},{"underlined":false, "color":"white","text":"    重置你的客户端版本"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/cueball_clean>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133141"}},{"underlined":false, "color":"white","text":"    switch to pure white cue ball (do not use when a game is active)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/cueball_clean>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133141"}},{"underlined":false, "color":"white","text":"    切换成纯白色白球（球局进行中请勿使用）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/cueball_red_dots>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133142"}},{"underlined":false, "color":"white","text":"    switch to cue ball with red dots (do not use when a game is active)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/cueball_red_dots>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133142"}},{"underlined":false, "color":"white","text":"    切换成带红点的白球（球局进行中请勿使用）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/disable_ball_spinning>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133143"}},{"underlined":false, "color":"white","text":"    the balls do not show rolling animation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/disable_ball_spinning>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133143"}},{"underlined":false, "color":"white","text":"    关闭球的旋转动画"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/enable_ball_spinning>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133144"}},{"underlined":false, "color":"white","text":"    the balls show rolling animation"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/enable_ball_spinning>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133144"}},{"underlined":false, "color":"white","text":"    启用球的旋转动画"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/tp_duration>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133145"}},{"underlined":false, "color":"white","text":"    adjust teleport_duration of Item Display (1.21 and after)"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"gold"},{"underlined":true,"text":"<visuals/tp_duration>","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1133145"}},{"underlined":false, "color":"white","text":"    调整Item Display的teleport_duration（动画平滑度，1.21及之后版本）"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ End of the list of all Settings.", "color":"gold"}]
tellraw @s[tag=swPool_CN] [{"text":"➇ 结束所有设置列表。", "color":"gold"}]

tellraw @s[tag=swPool_EN] [{"text":"➇ ", "color":"white"},{"underlined":true,"italic":false,"text":"<Command Window>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1"}}]
tellraw @s[tag=swPool_CN] [{"text":"➇ ", "color":"white"},{"underlined":true,"italic":false,"text":"<命令窗口>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1"}}]
