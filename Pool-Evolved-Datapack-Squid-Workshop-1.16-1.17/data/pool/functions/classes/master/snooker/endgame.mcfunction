#EN msg
tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Game Ended."}]

execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score > Opponent swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score < Opponent swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"Opponent","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score = Opponent swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"Tied.","color":"yellow"}]

execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score = @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"text":"Tied.","color":"yellow"}]

#CN msg
tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":" 分，游戏结束。"}]

execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score > Opponent swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"selector":"@s","color":"yellow"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score < Opponent swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"对手","color":"yellow"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score = Opponent swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"平局。","color":"yellow"}]

execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"selector":"@s","color":"yellow"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"selector":"@s","color":"yellow"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score = @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"text":"平局。","color":"yellow"}]



execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] run function pool:classes/master/snooker/spfeedback
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_poolplay] run function pool:classes/master/snooker/mpfeedback


scoreboard objectives setdisplay sidebar
tellraw @a[tag=swPool_poolplay,tag=swPool_EN] [{"underlined":true,"text":"<Restart Multiplayer>","color":"gold","clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/start"}},{"text":" ","underlined":false},{"underlined":true,"text":"<Restart Singleplayer>","color":"yellow","clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/startsp"}},{"text":""},{"underlined":true,"text":"<Command Window>","color":"white","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]

tellraw @a[tag=swPool_poolplay,tag=swPool_CN] [{"underlined":true,"text":"<重新开始多人游戏>","color":"gold","clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/start"}},{"text":" ","underlined":false},{"underlined":true,"text":"<重新开始单人游戏>","color":"yellow","clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/startsp"}},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"white","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]

kill @e[tag=swPool_pin]
scoreboard players reset @a[tag=swPool_poolplay] swPool_Score
tag @a[tag=swPool_poolplay] remove swPool_poolplay

scoreboard players reset @a swPool_Score
scoreboard players reset Opponent swPool_Score
scoreboard players reset Stroke swPool_hidScore
