# Output messages of two languages are packed together.

# add Stroke here!
scoreboard players add Stroke swPool_hidScore 1

# if was breaking (now stroke is 1), remove breaking tag
execute if score Stroke swPool_hidScore matches 1 run tag @s[tag=swPool_pooltable,tag=swPool_9ball_breaking] remove swPool_9ball_breaking


# detect number of players
tag @e[type=item_display,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=item_display,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.1..] run tag @e[type=item_display,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.1..] run tag @e[type=item_display,tag=swPool_pooltable,limit=1] add swPool_singleplayer


# clean up tags
tag @s remove swPool_foul
tag @a[tag=swPool_poolplay] remove swPool_foul
# @s is pooltable

# detect smallest not pocketed ball
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_09,limit=1] run scoreboard players set #least_survival swPool_var00 9
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_08,limit=1] run scoreboard players set #least_survival swPool_var00 8
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_07,limit=1] run scoreboard players set #least_survival swPool_var00 7
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_06,limit=1] run scoreboard players set #least_survival swPool_var00 6
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_05,limit=1] run scoreboard players set #least_survival swPool_var00 5
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_04,limit=1] run scoreboard players set #least_survival swPool_var00 4
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_03,limit=1] run scoreboard players set #least_survival swPool_var00 3
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_02,limit=1] run scoreboard players set #least_survival swPool_var00 2
execute if entity @e[type=item_display,tag=swPool_pool,tag=swPool_01,limit=1] run scoreboard players set #least_survival swPool_var00 1

# foul: no valid first hit
execute unless score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 1..9 run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul1
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul1] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：未击中目标球。"}]
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul1] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: did not hit any object ball."}]
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul1] add swPool_foul
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul1] remove swPool_foul1
#execute unless score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 1..9 run tell @a[tag=swPool_debug] Debug: the smallest ball on table is not hit

# foul: the smallest ball on table is not first hit
execute if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit > #least_survival swPool_var00 run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul2
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul2] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：未击中正确的目标球。"}]
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul2] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: did not hit the correct object ball."}]
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul2] add swPool_foul
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul2] remove swPool_foul2
#execute if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit > #least_survival swPool_var00 run tell @a[tag=swPool_debug] Debug: the smallest ball on table is not hit

#tellraw @a[tag=swPool_debug] [{"text":"Firsthit "},{"score":{"objective":"swPool_firsthit","name":"@a[tag=swPool_hitcue,limit=1]"}}]
#tellraw @a[tag=swPool_debug] [{"text":"Pocketed_Turn "},{"score":{"objective":"swPool_hidScore","name":"Pocketed_Turn"}}]
#execute if entity @s[tag=swPool_9ballmode,tag=swPool_hitrail] run tellraw @a[tag=swPool_debug] [{"text":"Hitrail!"}]

# add hitrail if rail rule is ignored
execute if data storage minecraft:swpool ignore_rail_rule run tag @s add swPool_hitrail
# foul: if not pocketing or not hitting rail after hitting ball (determined during hitrail logic not here)
execute if score Pocketed_Turn swPool_hidScore matches 0 if entity @s[tag=swPool_9ballmode,tag=!swPool_hitrail] run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul3
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul3] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：（击中子球后）没有球碰撞库边或落袋。"}]
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul3] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: no balls potted or touched the rail (after hitting an object ball)."}]
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul3] add swPool_foul
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul3] remove swPool_foul3
#execute if score Pocketed_Turn swPool_hidScore matches 0 if entity @s[tag=swPool_9ballmode,tag=!swPool_hitrail] run tell @a[tag=swPool_debug] Debug: no rail or pocket

# foul: if pocketed cue ball
execute if entity @s[tag=swPool_pktcue] run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul4
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul4] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：母球落袋。"}]
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul4] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: cue ball is potted."}]
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul4] add swPool_foul
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul4] remove swPool_foul4
#execute if entity @s[tag=swPool_pktcue] run tell @a[tag=swPool_debug] Debug: pocketed cue ball

# foul: if behind headstring, cue ball does not move downward (actually it is not applicable)
execute if score #headstring swPool_var00 matches 1 unless entity @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest,tag=swPool_downward] run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul5
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul5] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规原因：线后自由球未向开球区外击打。"}]
execute if data storage minecraft:swpool feedback_foul if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_foul5] run tellraw @a[tag=swPool_hitcue,limit=1,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Reason of foul: ball in hand behind the headstring did not aim towards outside of kitchen."}]
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul5] add swPool_foul
tag @a[tag=swPool_hitcue,limit=1,tag=swPool_foul5] remove swPool_foul5
#execute if score #headstring swPool_var00 matches 1 unless entity @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest,tag=swPool_downward] run tell @a[tag=swPool_debug] Debug: wrong shooting direction when placed behind headstring

# End game, if no foul and 9 is potted. 
# otherwise: respot and foul
execute unless entity @e[type=item_display,tag=swPool_pool,tag=swPool_09,limit=1] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tag @s add swPool_endgame 

execute if entity @s[tag=swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Completes the Game. "}]
execute if entity @s[tag=swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Completes the Game. "}]
execute if entity @s[tag=swPool_endgame,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":" Wins."}]
execute if entity @s[tag=swPool_endgame,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Wins."}]

execute if entity @s[tag=swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"完成本局。"}]
execute if entity @s[tag=swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"完成本局。"}]
execute if entity @s[tag=swPool_endgame,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"获胜。"}]
execute if entity @s[tag=swPool_endgame,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"获胜。"}]

# respot 9 if not end game
execute unless entity @e[type=item_display,tag=swPool_pool,tag=swPool_09,limit=1] if entity @a[tag=swPool_hitcue,tag=swPool_foul] at @s run function pool:classes/master/9ball/respot_9

# if not endgame, determine next player
# singleplayer: same player
# multiplayer or target balls, determine using a score

scoreboard players set #switchplayer swPool_var00 0
execute if entity @s[tag=swPool_singleplayer] run tag @a[tag=swPool_poolplay,limit=1] add swPool_nextturn

# switch only when foul and when there is no ball pocketed. Any pocketed ball leads to no switch.
# if no pocketed ball: switch player
#execute if score Pocketed_Turn swPool_hidScore matches 0 run say no pocketed ball switch
execute if score Pocketed_Turn swPool_hidScore matches 0 run scoreboard players set #switchplayer swPool_var00 1

# if foul, switch player
#execute if entity @a[tag=swPool_hitcue,tag=swPool_foul] run say foulswitch
execute if entity @a[tag=swPool_hitcue,tag=swPool_foul] run scoreboard players set #switchplayer swPool_var00 1


# player assignment
# 0: same player
# 1: the other player
execute if entity @s[tag=swPool_multiplayer] if score #switchplayer swPool_var00 matches 0 run tag @a[tag=swPool_poolplay,tag=swPool_hitcue,limit=1] add swPool_nextturn
execute if entity @s[tag=swPool_multiplayer] if score #switchplayer swPool_var00 matches 1 run tag @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1] add swPool_nextturn

# give the next player ball in hand if foul.
# if first shot, uk8ball style ball in hand, else: practice style ball in hand (determined in main function not here)
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_foul] as @a[tag=swPool_poolplay,tag=swPool_nextturn] run function pool:classes/master/practice/ballinhand
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_foul] as @a[tag=swPool_poolplay,tag=swPool_nextturn] run function app:get/pool/cueball_helper

# ball in hand message
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_foul]"},{"text":"犯规，"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"获得自由球。"}]
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_foul]"},{"text":" Foul. "},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" gets ball in hand."}]

# object ball assignment

# assign smallest ball if not endgame
execute if entity @s[tag=swPool_endgame] run scoreboard players reset #least_survival swPool_var00
# Chinese
execute if score #least_survival swPool_var00 matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"➀","color":"yellow"},{"text":"号球"}]
execute if score #least_survival swPool_var00 matches 2 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"➁","color":"blue"},{"text":"号球"}]
execute if score #least_survival swPool_var00 matches 3 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"➂","color":"red"},{"text":"号球"}]
execute if score #least_survival swPool_var00 matches 4 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"➃","color":"light_purple"},{"text":"号球"}]
execute if score #least_survival swPool_var00 matches 5 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"➄","color":"gold"},{"text":"号球"}]
execute if score #least_survival swPool_var00 matches 6 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"➅","color":"green"},{"text":"号球"}]
execute if score #least_survival swPool_var00 matches 7 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"➆","color":"dark_red"},{"text":"号球"}]
execute if score #least_survival swPool_var00 matches 8 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"➇","color":"black"},{"text":"号球"}]
execute if score #least_survival swPool_var00 matches 9 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"⓽","color":"yellow"},{"text":"号球"}]

# English
execute if score #least_survival swPool_var00 matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"➀","color":"yellow"}]
execute if score #least_survival swPool_var00 matches 2 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"➁","color":"blue"}]
execute if score #least_survival swPool_var00 matches 3 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"➂","color":"red"}]
execute if score #least_survival swPool_var00 matches 4 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"➃","color":"light_purple"}]
execute if score #least_survival swPool_var00 matches 5 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"➄","color":"gold"}]
execute if score #least_survival swPool_var00 matches 6 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"➅","color":"green"}]
execute if score #least_survival swPool_var00 matches 7 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"➆","color":"dark_red"}]
execute if score #least_survival swPool_var00 matches 8 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"➇","color":"black"}]
execute if score #least_survival swPool_var00 matches 9 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"⓽","color":"yellow"}]


#end of progression
tag @s remove swPool_pktcue
tag @s remove swPool_hitrail
#tag @s remove swPool_endgame
tag @s remove swPool_nextturn
tag @a[tag=swPool_poolplay] remove swPool_hitcue
tag @a[tag=swPool_poolplay] remove swPool_nextturn
tag @a[tag=swPool_poolplay] remove swPool_foul
scoreboard players set @a[tag=swPool_poolplay] swPool_firsthit 0
scoreboard players set Pocketed_Turn swPool_hidScore 0
scoreboard players reset #least_survival swPool_var00



execute if entity @s[tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<Command Window>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 22"}},{"text":" ","underlined":false},{"underlined":true,"text":"<undo>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 203"}}]
execute if entity @s[tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike.>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 58"}}]

execute if entity @s[tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 22"}},{"text":" ","underlined":false},{"underlined":true,"text":"<撤销上次击球>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 203"}}]
execute if entity @s[tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<调整下一次击球>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 58"}}]
