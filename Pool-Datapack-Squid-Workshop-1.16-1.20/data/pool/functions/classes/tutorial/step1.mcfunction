scoreboard players set #tutorial_step swMath_V 0

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"[Step 1/5] ","color":"aqua"},{"text":"Open the ","color":"white"},{"text":"<Command Window>","color":"aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1"}},{"text":", click <Get Cue Stick>, and hold your new cue stick in your main hand!","color":"white"}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"[第 1/5 步] ","color":"aqua"},{"text":"打开 ","color":"white"},{"text":"<命令窗口>","color":"aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 1"}},{"text":"， 点击 <获取球杆>， 然后将新获得的球杆拿在主手上！","color":"white"}]

tellraw @a[tag=swPool_on_tutorial,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Quit Tutorial>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 4112403"}}]
tellraw @a[tag=swPool_on_tutorial,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<退出教程>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger swPool__trigger set 4112403"}}]

execute at @a[tag=swPool_on_tutorial] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1
