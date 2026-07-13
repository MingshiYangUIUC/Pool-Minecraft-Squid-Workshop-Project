# Output messages of two languages are packed together.

# add Stroke here!
scoreboard players add Stroke swPool_hidScore 1

# if was breaking (now stroke is 1), remove breaking tag
execute if score Stroke swPool_hidScore matches 1 run tag @s[tag=swPool_pooltable,tag=swPool_9ball_breaking] remove swPool_9ball_breaking


# detect number of players (only need to care about singleplayer)
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

# clean up tags
tag @s remove swPool_foul
tag @a[tag=swPool_poolplay] remove swPool_foul
# fake shooter entity
tag @e[tag=swPool_shooter] remove swPool_foul
# @s is pooltable

# detect smallest not pocketed ball
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_09,limit=1] run scoreboard players set #least_survival swPool_var00 9
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_08,limit=1] run scoreboard players set #least_survival swPool_var00 8
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_07,limit=1] run scoreboard players set #least_survival swPool_var00 7
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_06,limit=1] run scoreboard players set #least_survival swPool_var00 6
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_05,limit=1] run scoreboard players set #least_survival swPool_var00 5
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_04,limit=1] run scoreboard players set #least_survival swPool_var00 4
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_03,limit=1] run scoreboard players set #least_survival swPool_var00 3
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_02,limit=1] run scoreboard players set #least_survival swPool_var00 2
execute if entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_01,limit=1] run scoreboard players set #least_survival swPool_var00 1

# foul: no valid first hit
execute unless score @e[tag=swPool_shooter,limit=1] swPool_firsthit matches 1..9 run tag @e[tag=swPool_shooter,limit=1] add swPool_foul1
#execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul1] run tellraw @a[tag=swPool_debug][tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：未击中目标球。"}]
#execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul1] run tellraw @a[tag=swPool_debug][tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: did not hit any object ball."}]
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul1] add swPool_foul
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul1] remove swPool_foul1

# foul: the smallest ball on table is not first hit
execute if score @e[tag=swPool_shooter,limit=1] swPool_firsthit > #least_survival swPool_var00 run tag @e[tag=swPool_shooter,limit=1] add swPool_foul2
#execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul2] run tellraw @a[tag=swPool_debug][tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：未击中正确的目标球。"}]
#execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul2] run tellraw @a[tag=swPool_debug][tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: did not hit the correct object ball."}]
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul2] add swPool_foul
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul2] remove swPool_foul2

#tellraw @a[tag=swPool_debug][tag=swPool_debug] [{"text":"Firsthit "},{"score":{"objective":"swPool_firsthit","name":"@a[tag=swPool_hitcue,limit=1]"}}]
#tellraw @a[tag=swPool_debug][tag=swPool_debug] [{"text":"Pocketed_Turn "},{"score":{"objective":"swPool_hidScore","name":"Pocketed_Turn"}}]
#execute if entity @s[tag=swPool_9ballmode,tag=swPool_hitrail] run tellraw @a[tag=swPool_debug][tag=swPool_debug] [{"text":"Hitrail!"}]

# add hitrail if rail rule is ignored
execute if data storage minecraft:swpool ignore_rail_rule run tag @s add swPool_hitrail
# foul: if not pocketing or not hitting rail after hitting ball (determined during hitrail logic not here)
execute if score Pocketed_Turn swPool_hidScore matches 0 if entity @s[tag=swPool_9ballmode,tag=!swPool_hitrail] run tag @e[tag=swPool_shooter,limit=1] add swPool_foul3
#execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul3] run tellraw @a[tag=swPool_debug][tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：（击中子球后）没有球碰撞库边或落袋。"}]
#execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul3] run tellraw @a[tag=swPool_debug][tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: no balls potted or touched the rail (after hitting an object ball)."}]
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul3] add swPool_foul
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul3] remove swPool_foul3
#execute if score Pocketed_Turn swPool_hidScore matches 0 if entity @s[tag=swPool_9ballmode,tag=!swPool_hitrail] run tell @a[tag=swPool_debug] Debug: no rail or pocket

# foul: if pocketed cue ball
execute if entity @s[tag=swPool_pktcue] run tag @e[tag=swPool_shooter,limit=1] add swPool_foul4
#execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul4] run tellraw @a[tag=swPool_debug][tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：母球落袋。"}]
#execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul4] run tellraw @a[tag=swPool_debug][tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: cue ball is potted."}]
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul4] add swPool_foul
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul4] remove swPool_foul4
#execute if entity @s[tag=swPool_pktcue] run tell @a[tag=swPool_debug] Debug: pocketed cue ball

# foul: if behind headstring, cue ball does not move downward (actually it is not applicable)

# End game, if no foul and 9 is potted. 
# otherwise: respot and foul
execute unless entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_09,limit=1] if entity @e[tag=swPool_shooter,tag=!swPool_foul] run tag @s add swPool_endgame 

# respot 9 if not end game
execute unless entity @e[type=armor_stand,tag=swPool_pool,tag=swPool_09,limit=1] if entity @e[tag=swPool_shooter,tag=swPool_foul] at @s run function pool:classes/master/9ball/respot_9

# if not endgame, determine next player
# singleplayer: same player
# multiplayer or target balls, determine using a score

scoreboard players set #switchplayer swPool_var00 0
#execute if entity @s[tag=swPool_singleplayer] run tag @a[tag=swPool_poolplay,limit=1] add swPool_nextturn

# switch only when foul and when there is no ball pocketed. Any pocketed ball leads to no switch.
# if no pocketed ball: switch player
execute if score Pocketed_Turn swPool_hidScore matches 0 run scoreboard players set #switchplayer swPool_var00 1

# if foul, switch player
execute if entity @e[tag=swPool_shooter,tag=swPool_foul] run scoreboard players set #switchplayer swPool_var00 1

# player assignment
# 0: same player
# 1: the other player
#execute if entity @s[tag=swPool_multiplayer] if score #switchplayer swPool_var00 matches 0 run tag @a[tag=swPool_poolplay,tag=swPool_hitcue,limit=1] add swPool_nextturn
#execute if entity @s[tag=swPool_multiplayer] if score #switchplayer swPool_var00 matches 1 run tag @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] add swPool_nextturn


# object ball assignment
# assign smallest ball if not endgame 
# (message removed here)
execute if entity @s[tag=swPool_endgame] run scoreboard players reset #least_survival swPool_var00

# get final score
# if not switch player but made target ball: 1
# if switch player but not foul: 0
# if foul: -1
scoreboard players set #simresult swMath_V 10000
execute if score #switchplayer swPool_var00 matches 1 unless entity @e[tag=swPool_shooter,tag=swPool_foul] run scoreboard players set #simresult swMath_V 0
execute if entity @e[tag=swPool_shooter,tag=swPool_foul] run scoreboard players set #simresult swMath_V -10000

# if endgame, score * 2
execute if entity @s[tag=swPool_endgame] run scoreboard players operation #simresult swMath_V *= #C_2 swMath_C
execute if entity @s[tag=swPool_endgame] run scoreboard players set #simendgame swMath_V 1


#end of progression
tag @s remove swPool_pktcue
tag @s remove swPool_hitrail
#tag @s remove swPool_endgame
tag @s remove swPool_nextturn
tag @e[tag=swPool_shooter] remove swPool_hitcue
scoreboard players set @e[tag=swPool_shooter] swPool_firsthit 0
scoreboard players set Pocketed_Turn swPool_hidScore 0
scoreboard players reset #least_survival swPool_var00
