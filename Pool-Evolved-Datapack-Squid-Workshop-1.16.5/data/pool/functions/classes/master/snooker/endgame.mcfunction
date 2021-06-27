tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Game Ended."}]

execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score > Opponent swPool_Score run tellraw @a[tag=swPool_poolplay] [{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] if score @s swPool_Score < Opponent swPool_Score run tellraw @a[tag=swPool_poolplay] [{"text":"Opponent","color":"yellow"},{"text":" won."}]

execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay] [{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score > @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay] [{"selector":"@s","color":"yellow"},{"text":" won."}]
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_hitcue,limit=1] if score @s swPool_Score = @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] swPool_Score run tellraw @a[tag=swPool_poolplay] [{"text":"Tied.","color":"yellow"}]

execute if entity @s[tag=swPool_singleplayer] as @a[tag=swPool_poolplay] run function pool:classes/master/snooker/spfeedback
execute if entity @s[tag=swPool_multiplayer] as @a[tag=swPool_poolplay] run function pool:classes/master/snooker/mpfeedback


scoreboard objectives setdisplay sidebar
tellraw @a[tag=swPool_poolplay] [{"underlined":true,"text":"<Restart Multiplayer>","color":"gold","clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/start"}},{"text":" ","underlined":false},{"underlined":true,"text":"<Restart Singleplayer>","color":"yellow","clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/startsp"}}]
kill @e[tag=swPool_pin]
scoreboard players reset @a[tag=swPool_poolplay] swPool_Score
tag @a[tag=swPool_poolplay] remove swPool_poolplay

scoreboard players reset @a swPool_Score
scoreboard players reset Opponent swPool_Score
scoreboard players reset Stroke swPool_hidScore

