scoreboard players set #tutorial_step swMath_V 0


tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 2/5] ","color":"gold"},{"text":"Nice, you've got your cue stick! Want a different look? Check out the custom cue stick options in the Command Window.","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 2/5 步] ","color":"gold"},{"text":"不错，球杆到手！ 想换个造型？ 命令窗口里还有多种球杆样式供你选择！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 2/5] ","color":"gold"},{"text":"Now stand on the ground and open the ","color":"white"},{"text":"<Command Window>","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1"}},{"text":" to build your table. You can customize its size and appearance!","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 2/5 步] ","color":"gold"},{"text":"现在，站在地面上，打开 ","color":"white"},{"text":"<命令窗口>","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 1"}},{"text":" 来放置球桌。 你还可以自由调整球桌的大小和外观！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 2/5] ","color":"gold"},{"text":"Can't find the Command Window? Run /function app:help/pool/commandwindow or /trigger swPool__trigger set 1 to open it again.","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 2/5 步] ","color":"gold"},{"text":"找不到命令窗口了？ 输入 /function app:help/pool/commandwindow 或 /trigger swPool__trigger set 1 就能重新打开！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 2/5] ","color":"gold"},{"text":"Or skip the setup for now and click below to let me place a default table for you!","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 2/5 步] ","color":"gold"},{"text":"或者， 先跳过这些设置， 点击下面的按钮， 让我帮你直接放置一张默认球桌！","color":"white"}]

# click to run
tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"italic":false,"text":"<Place Default Table>","color":"gold","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4112409"}}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"italic":false,"text":"<放置默认球桌>","color":"gold","click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4112409"}}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Quit Tutorial>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4112403"}}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<退出教程>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool__trigger set 4112403"}}]

execute at @a[tag=swPool_on_tutorial] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1
