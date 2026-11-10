scoreboard players set #tutorial_step swMath_V 0


tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 4/5] ","color":"light_purple"},{"text":"Nice, the balls are in place! Did you set yourself up for an easy shot or a tricky one?","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 4/5 步] ","color":"light_purple"},{"text":"不错，球都摆好了！ 你给自己准备的是简单的一杆， 还是有点难度的挑战呢？","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 4/5] ","color":"light_purple"},{"text":"Not quite where you wanted a ball? Click ","color":"white"},{"text":"<Remove the last ball>","color":"light_purple","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/master/undo"}},{"text":" to remove the most recently placed ball.","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 4/5 步] ","color":"light_purple"},{"text":"球没摆到想要的位置？ 点击 ","color":"white"},{"text":"<撤销本次摆球>","color":"light_purple","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/master/undo"}},{"text":"， 就能移除刚刚放置的球。","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 4/5] ","color":"light_purple"},{"text":"Time for your first shot! Hold your cue stick in your main hand, hold down right-click to charge, and release to shoot!","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 4/5 步] ","color":"light_purple"},{"text":"该打出你的第一杆了！ 把球杆拿在主手上， 按住鼠标右键蓄力， 松开右键就能击球！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 4/5] ","color":"light_purple"},{"text":"Press Shift to automatically face the cue ball and line up your shot.","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 4/5 步] ","color":"light_purple"},{"text":"按下 Shift 键， 就能自动面向母球， 方便你瞄准击球！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 4/5] ","color":"light_purple"},{"text":"Tip: While holding Shift, move around to fine-tune your aim using the aiming marker!","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 4/5 步] ","color":"light_purple"},{"text":"小技巧： 按住 Shift 键并移动位置， 配合瞄准标记， 就能更精准地调整击球方向！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Quit Tutorial>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/tutorial/end"}}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<退出教程>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/function pool:classes/tutorial/end"}}]

execute at @a[tag=swPool_on_tutorial] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1
