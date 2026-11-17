scoreboard players set #tutorial_step swMath_V 0


tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 5/5] ","color":"yellow"},{"text":"You did it, pool master! You're probably better than 99% of people on Earth at playing pool in Minecraft! Did you notice that the longer you charge, the more powerful your shot becomes?","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 5/5 步] ","color":"yellow"},{"text":"成功了！ 你已经是台球大师了！ 在 Minecraft 里打台球这件事上， 你可能已经超过了地球上 99% 的人！ 有没有发现， 蓄力时间越长，击球的力度就越大？","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 5/5] ","color":"yellow"},{"text":"Did you pot the object ball? If not, wait until all the balls stop, then click ","color":"white"},{"text":"<undo>","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/master/undo"}},{"text":" to undo your last shot and try again!","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 5/5 步] ","color":"yellow"},{"text":"目标球进袋了吗？ 如果没有， 等所有球停下来后， 点击 ","color":"white"},{"text":"<撤销上次击球>","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/master/undo"}},{"text":"，再试一次吧！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 5/5] ","color":"yellow"},{"text":"Tutorial complete! Congratulations, and have fun!","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 5/5 步] ","color":"yellow"},{"text":"教程完成！ 恭喜你， 接下来尽情享受台球的乐趣吧！","color":"white"}]

# Optional advanced tip
tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Pro Tip] ","color":"aqua"},{"text":"Want to take your shots to the next level? Click ","color":"white"},{"text":"<Adjust the Next Shot>","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/cue/map"}},{"text":" before shooting! You can adjust where your cue strikes the cue ball for draw and follow shots, or even elevate your cue for a swerve shot. You can also preset your shot power instead of timing your charge. This button appears at the start of each turn and after placing the cue ball.","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[进阶技巧] ","color":"aqua"},{"text":"想让你的球技更上一层楼？ 击球前点击 ","color":"white"},{"text":"<调整下一次击球>","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/cue/map"}},{"text":"！ 你可以调整球杆击打母球的位置， 打出低杆、高杆，甚至抬高球杆打出弧线球！ 还可以预先设置击球力度， 不必再靠蓄力时间控制力量。 每次轮到你击球时， 以及刚放置母球后， 都会出现这个按钮。","color":"white"}]

# Next steps
tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[What's Next?] ","color":"green"},{"text":"Ready for more? Open the ","color":"white"},{"text":"<Command Window>","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/function app:help/pool/commandwindow"}},{"text":" to explore different game modes, challenge the bot, or customize your table. Have fun!","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[接下来呢？] ","color":"green"},{"text":"准备好探索更多玩法了吗？ 打开 ","color":"white"},{"text":"<命令窗口>","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/function app:help/pool/commandwindow"}},{"text":"，体验不同的游戏模式， 挑战电脑玩家， 或者自定义你的球桌。 祝你玩得开心！","color":"white"}]

execute at @a[tag=swPool_on_tutorial] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1

function pool:classes/tutorial/end
