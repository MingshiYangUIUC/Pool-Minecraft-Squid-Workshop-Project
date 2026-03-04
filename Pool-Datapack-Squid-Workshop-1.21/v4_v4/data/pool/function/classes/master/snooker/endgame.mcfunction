#EN msg
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Game Ended."}]

execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score > Opponent swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score < Opponent swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Opponent","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score = Opponent swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Tied.","color":"yellow"}]

execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score = @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Tied.","color":"yellow"}]

#CN msg
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"score":{"objective":"swPool_var05","name":"@s"}},{"text":" 分，游戏结束。"}]

execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score > Opponent swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s","color":"yellow"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score < Opponent swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"对手","color":"yellow"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score = Opponent swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"平局。","color":"yellow"}]

execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s","color":"yellow"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@s","color":"yellow"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score = @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"平局。","color":"yellow"}]



execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] run function pool:classes/master/snooker/spfeedback
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_poolplay] run function pool:classes/master/snooker/mpfeedback


scoreboard objectives setdisplay sidebar
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<Kill current game>","color":"yellow","clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/terminate_helper"}},{"text":""},{"underlined":true,"text":"<Command Window>","color":"white","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]

tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"underlined":true,"text":"<结束当前游戏>","color":"yellow","clickEvent":{"action":"run_command","value":"/function pool:classes/lobby/terminate_helper"}},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"white","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}}]

kill @e[tag=swPool_pin]
#scoreboard players reset @a[tag=swPool_poolplay] swPool_Score
#tag @a[tag=swPool_poolplay] remove swPool_poolplay
tag @a[tag=swPool_spec] add swPool_spectemp 
tag @a[tag=swPool_spec] remove swPool_spec

#scoreboard players reset @a swPool_Score
#scoreboard players reset Opponent swPool_Score
#scoreboard players reset Stroke swPool_hidScore

