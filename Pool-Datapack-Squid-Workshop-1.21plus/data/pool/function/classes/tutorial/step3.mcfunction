scoreboard players set #tutorial_step swMath_V 0

execute as @a[tag=swPool_on_tutorial] at @s run function pool:classes/practice/start_helper


tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 3/5] ","color":"green"},{"text":"Your table is ready! You're now in Practice Mode, and I've given you some balls to play with. Here, you can place any balls and take shots without worrying about rules! Want to try another game mode later? Open the Game Lobby from the Command Window.","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 3/5 步] ","color":"green"},{"text":"球桌准备好了！ 你现在已经进入练习模式， 我也给了你一些球。 在这里，你可以自由摆球、 随意击球，不用管任何规则！ 之后想试试其他玩法？ 可以从命令窗口打开游戏大厅。","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 3/5] ","color":"green"},{"text":"Let's start by placing the cue ball and at least one other ball on the table.","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 3/5 步] ","color":"green"},{"text":"先来试着在球桌上放置母球， 和至少一颗其他球吧！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 3/5] ","color":"green"},{"text":"Hold a ball in your main hand and aim at the table surface. When you see green particles, right-click to place the ball! Note that different game modes have different rules for cue ball placement, so check the chat for specific instructions.","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 3/5 步] ","color":"green"},{"text":"把球拿在主手上， 对准球桌台面。 当你看到绿色粒子效果时， 点击鼠标右键就能放置球了！ 注意， 不同游戏模式对母球的摆放位置有不同的限制， 请查看聊天栏中的具体提示。","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Quit Tutorial>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4112403"}}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<退出教程>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4112403"}}]

execute at @a[tag=swPool_on_tutorial] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1
