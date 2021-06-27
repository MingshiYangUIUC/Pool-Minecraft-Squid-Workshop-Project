execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.1..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.1..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

execute unless entity @a[scores={swPool_firsthit=1..7}] run scoreboard players set @s[scores={swPool_foul=..3}] swPool_foul 4

execute unless entity @s[scores={swPool_var05=-10000000..10000000}] run scoreboard players set @s swPool_var05 0
scoreboard players set @e[tag=swPool_red,tag=swPool_pool] swPool_rank 1
scoreboard players set @e[tag=swPool_yellow,tag=swPool_pool] swPool_rank 2
scoreboard players set @e[tag=swPool_green,tag=swPool_pool] swPool_rank 3
scoreboard players set @e[tag=swPool_brown,tag=swPool_pool] swPool_rank 4
scoreboard players set @e[tag=swPool_blue,tag=swPool_pool] swPool_rank 5
scoreboard players set @e[tag=swPool_pink,tag=swPool_pool] swPool_rank 6
scoreboard players set @e[tag=swPool_black,tag=swPool_pool] swPool_rank 7


execute if entity @s[scores={swPool_firsthit=1..7}] unless score @a[tag=swPool_hitcue,limit=1] swPool_firsthit = @s swPool_firsthit run tag @s add swPool_fouled
execute if entity @s[scores={swPool_firsthit=8}] unless entity @a[tag=swPool_hitcue,scores={swPool_firsthit=2..7}] run tag @s add swPool_fouled


#execute if entity @s[tag=swPool_fouled] run say fouled

scoreboard players set @s[tag=!swPool_fouled] swPool_foul 0

execute if entity @e[tag=swPool_red,tag=swPool_pool] run scoreboard players set @s[tag=swPool_fouled] swPool_firsthit 1
execute unless entity @e[tag=swPool_pool,scores={swPool_rank=1}] if entity @e[tag=swPool_pool,scores={swPool_rank=2}] run scoreboard players set @s swPool_firsthit 2
execute unless entity @e[tag=swPool_pool,scores={swPool_rank=1..2}] if entity @e[tag=swPool_pool,scores={swPool_rank=3}] run scoreboard players set @s swPool_firsthit 3
execute unless entity @e[tag=swPool_pool,scores={swPool_rank=1..3}] if entity @e[tag=swPool_pool,scores={swPool_rank=4}] run scoreboard players set @s swPool_firsthit 4
execute unless entity @e[tag=swPool_pool,scores={swPool_rank=1..4}] if entity @e[tag=swPool_pool,scores={swPool_rank=5}] run scoreboard players set @s swPool_firsthit 5
execute unless entity @e[tag=swPool_pool,scores={swPool_rank=1..5}] if entity @e[tag=swPool_pool,scores={swPool_rank=6}] run scoreboard players set @s swPool_firsthit 6
execute unless entity @e[tag=swPool_pool,scores={swPool_rank=1..6}] if entity @e[tag=swPool_pool,scores={swPool_rank=7}] run scoreboard players set @s swPool_firsthit 7
execute unless entity @e[tag=swPool_pool,scores={swPool_rank=1..7}] run scoreboard players set @s swPool_firsthit -1

execute if entity @s[tag=swPool_firstcolor] unless entity @s[tag=swPool_fauled] run scoreboard players set @s[scores={swPool_firsthit=8}] swPool_firsthit 2

execute unless entity @e[tag=swPool_red,tag=swPool_pool] run scoreboard players set @s[tag=!swPool_fouled,tag=swPool_lastred,scores={swPool_firsthit=1..2}] swPool_firsthit 8
execute if entity @e[tag=swPool_red,tag=swPool_pool] run scoreboard players set @s[tag=!swPool_fouled,scores={swPool_firsthit=8}] swPool_firsthit 1
execute if entity @e[tag=swPool_red,tag=swPool_pool] if entity @s[scores={swPool_nred=1..}] run scoreboard players set @s[tag=!swPool_fouled,scores={swPool_firsthit=1}] swPool_firsthit 8

execute as @s[tag=swPool_fouled] unless entity @s[scores={swPool_foul=5..7}] run scoreboard players set @s swPool_foul 4

#score changes
scoreboard players operation @s[tag=swPool_fouled] swPool_foul > @a[tag=swPool_hitcue,limit=1] swPool_firsthit
scoreboard players set @s[tag=swPool_fouled] swPool_var05 0

scoreboard players operation @a[tag=swPool_hitcue,limit=1] swPool_Score += @s swPool_var05
scoreboard players operation @e[tag=swPool_poolplay,tag=!swPool_hitcue] swPool_Score += @s[tag=swPool_fouled] swPool_foul
execute if entity @s[tag=swPool_singleplayer] run scoreboard players operation Opponent swPool_Score += @s[tag=swPool_fouled] swPool_foul






#messages...
execute if entity @s[tag=swPool_fouled,tag=swPool_singleplayer] unless entity @a[tag=swPool_freeball] run tellraw @a[tag=swPool_poolplay] [{"text":"Foul. Opponent "},{"score":{"objective":"swPool_foul","name":"@s"}},{"text":"."}]
execute if entity @s[tag=swPool_fouled,tag=swPool_singleplayer] if entity @a[tag=swPool_freeball] run tellraw @a[tag=swPool_poolplay] [{"text":"Foul. Opponent "},{"score":{"objective":"swPool_foul","name":"@s"}},{"text":", freeball."}]

execute if entity @s[tag=swPool_fouled,tag=swPool_multiplayer] unless entity @a[tag=swPool_freeball] run tellraw @a[tag=swPool_poolplay] [{"text":"Foul. "},{"selector":"@a[tag=!swPool_hitcue,tag=swPool_poolplay]"},{"text":" "},{"score":{"objective":"swPool_foul","name":"@s"}},{"text":"."}]
execute if entity @s[tag=swPool_fouled,tag=swPool_multiplayer] if entity @a[tag=swPool_freeball] run tellraw @a[tag=swPool_poolplay] [{"text":"Foul. "},{"selector":"@a[tag=!swPool_hitcue,tag=swPool_poolplay]"},{"text":" "},{"score":{"objective":"swPool_foul","name":"@s"}},{"text":", freeball."}]

execute if entity @s[scores={swPool_firsthit=1}] run tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Please aim at Red."}]
execute if entity @s[scores={swPool_firsthit=2}] run tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Please aim at Yellow."}]
execute if entity @s[scores={swPool_firsthit=3}] run tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Please aim at Green."}]
execute if entity @s[scores={swPool_firsthit=4}] run tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Please aim at Brown."}]
execute if entity @s[scores={swPool_firsthit=5}] run tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Please aim at Blue."}]
execute if entity @s[scores={swPool_firsthit=6}] run tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Please aim at Pink."}]
execute if entity @s[scores={swPool_firsthit=7}] run tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Please aim at Black."}]
execute if entity @s[scores={swPool_firsthit=8}] run tellraw @a[tag=swPool_poolplay] [{"score":{"objective":"swPool_var05","name":"@s"}},{"text":", Please aim at Colour."}]

execute if entity @s[scores={swPool_firsthit=-1}] run function pool:classes/master/snooker/endgame
execute if entity @s[scores={swPool_firsthit=2}] as @e[scores={swPool_rank=2}] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[scores={swPool_firsthit=3}] as @e[scores={swPool_rank=3}] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[scores={swPool_firsthit=4}] as @e[scores={swPool_rank=4}] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[scores={swPool_firsthit=5}] as @e[scores={swPool_rank=5}] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[scores={swPool_firsthit=6}] as @e[scores={swPool_rank=6}] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[scores={swPool_firsthit=7}] as @e[scores={swPool_rank=7}] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[scores={swPool_firsthit=8}] as @e[scores={swPool_rank=2..7}] run data merge entity @s {CustomNameVisible:1b}

schedule function pool:classes/master/snooker/hidename 3s


#more messages...
execute if entity @s[tag=swPool_singleplayer] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn."}]

execute if entity @s[tag=swPool_multiplayer] if entity @s[tag=swPool_fouled] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn."}]
execute if entity @s[tag=swPool_multiplayer] unless entity @s[tag=swPool_fouled] if entity @s[scores={swPool_var05=0}] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn."}]
execute if entity @s[tag=swPool_multiplayer] unless entity @s[tag=swPool_fouled] if entity @s[scores={swPool_var05=1..}] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn."}]


#scoreboard players reset @e[tag=swPool_pool,tag=!swPool_red] swPool_rank
scoreboard players reset @e[tag=swPool_pool] swPool_player
tag @a remove swPool_hitcue
scoreboard players reset @a swPool_firsthit
scoreboard players set @s[tag=swPool_fouled] swPool_foul 0
tag @s remove swPool_fouled
tag @s remove swPool_lastred
tag @s remove swPool_firstcolor
scoreboard players set @s swPool_nred 0
scoreboard players set @s swPool_ncolor 0
scoreboard players reset @s swPool_var05
scoreboard players add Stroke swPool_hidScore 1


tellraw @a[tag=swPool_poolplay] [{"text":""},{"underlined":true,"text":"<Command Window>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}},{"text":" ","underlined":false},{"underlined":true,"text":"</back>","color":"","clickEvent":{"action":"run_command","value":"/function pool:classes/master/redo"}}]
tellraw @a[tag=swPool_poolplay] [{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]
