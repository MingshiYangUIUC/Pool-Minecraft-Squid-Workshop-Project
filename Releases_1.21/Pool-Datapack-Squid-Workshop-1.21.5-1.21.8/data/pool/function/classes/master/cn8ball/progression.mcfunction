# Output messages of two languages are packed together.

# add Stroke here!
scoreboard players add Stroke swPool_hidScore 1

# if was breaking (now stroke is 1), remove breaking tag
execute if score Stroke swPool_hidScore matches 1 run tag @e[tag=swPool_pooltable,tag=swPool_cn8ball_breaking] remove swPool_cn8ball_breaking


# detect number of players
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

execute as @a[tag=swPool_poolplay,limit=1] at @s if entity @a[tag=swPool_poolplay,distance=0.1..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_multiplayer
execute as @a[tag=swPool_poolplay,limit=1] at @s unless entity @a[tag=swPool_poolplay,distance=0.1..] run tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

#rerack request
execute if entity @s[tag=swPool_rerack] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Pocketed black. Rerack!"}]
execute if entity @s[tag=swPool_rerack] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"黑球落袋，重新开球。"}]
execute if entity @s[tag=swPool_rerack] run tag @a[tag=swPool_spec] add swPool_spectemp
execute if entity @s[tag=swPool_rerack] run tag @a[tag=swPool_spec] remove swPool_spec
execute if entity @s[tag=swPool_rerack] run function pool:classes/master/undo_run


# clean up tags
tag @s remove swPool_foul
tag @a[tag=swPool_poolplay] remove swPool_foul
# @s is pooltable

# foul: if NOT open, hit wrong ball first.
execute unless entity @s[tag=swPool_cn8ball_open] as @a[tag=swPool_hitcue,limit=1] unless entity @s[tag=swPool_aimsolid,scores={swPool_firsthit=1}] unless entity @s[tag=swPool_aimstripe,scores={swPool_firsthit=2}] unless entity @s[tag=swPool_aim08,scores={swPool_firsthit=8}] run tag @s add swPool_foul

# foul: if not pocketing or not hitting rail after hitting ball (determined during hitrail logic not here)
execute if score Pocketed_Turn swPool_hidScore matches 0 if entity @s[tag=swPool_cn8ballmode,tag=!swPool_hitrail] run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul

# foul: if pocketed cue ball
execute if entity @s[tag=swPool_pktcue] run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul


# endgame?

tag @s[tag=!swPool_rerack,tag=swPool_pkt08] add swPool_endgame 
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08] run tag @a[tag=swPool_hitcue,tag=!swPool_aim08] add swPool_foul
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08] if score Pocketed_Turn swPool_hidScore matches 2.. run tag @a[tag=swPool_hitcue] add swPool_foul
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Completes the Game. "}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Completes the Game. "}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":" Wins."}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Wins."}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"完成本局。"}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"完成本局。"}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"获胜。"}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"获胜。"}]



# if not endgame, determine next player
# singleplayer: same player
# multiplayer or target balls, determine using a score

scoreboard players set #switchplayer swPool_var00 0
execute if entity @s[tag=swPool_singleplayer] run tag @a[tag=swPool_poolplay,limit=1] add swPool_nextturn


# if still open: swtich player (because if you pocket a ball and is legally assigned, it will no longer be open, see pocketing/main)
#execute if entity @s[tag=swPool_multiplayer,tag=swPool_cn8ball_open] run say still open switch
execute if entity @s[tag=swPool_multiplayer,tag=swPool_cn8ball_open] run scoreboard players set #switchplayer swPool_var00 1

# if no pocketed ball: switch player
#execute if score Pocketed_Turn swPool_hidScore matches 0 run say no pocketed ball switch
execute if score Pocketed_Turn swPool_hidScore matches 0 run scoreboard players set #switchplayer swPool_var00 1

# if foul, switch player
#execute if entity @a[tag=swPool_hitcue,tag=swPool_foul] run say foulswitch
execute if entity @a[tag=swPool_hitcue,tag=swPool_foul] run scoreboard players set #switchplayer swPool_var00 1

# if does not pocket a assigned object ball, switch player
#execute unless entity @s[tag=swPool_cn8ball_open] if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_aimsolid] unless entity @s[tag=swPool_pktsolid] run say not pocketed solid switch
#execute unless entity @s[tag=swPool_cn8ball_open] if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_aimstripe] unless entity @s[tag=swPool_pktstripe] run say not pocketed stripe switch
#execute unless entity @s[tag=swPool_cn8ball_open] if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_aim08] unless entity @s[tag=swPool_pkt08] run say not pocketed black switch

execute unless entity @s[tag=swPool_cn8ball_open] if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_aimsolid] unless entity @s[tag=swPool_pktsolid] run scoreboard players set #switchplayer swPool_var00 1
execute unless entity @s[tag=swPool_cn8ball_open] if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_aimstripe] unless entity @s[tag=swPool_pktstripe] run scoreboard players set #switchplayer swPool_var00 1
execute unless entity @s[tag=swPool_cn8ball_open] if entity @a[tag=swPool_hitcue,limit=1,tag=swPool_aim08] unless entity @s[tag=swPool_pkt08] run scoreboard players set #switchplayer swPool_var00 1

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
# if singleplayer and switch
execute if entity @s[tag=swPool_singleplayer] if score #switchplayer swPool_var00 matches 1 run execute as @a[tag=swPool_poolplay] run function pool:classes/master/cn8ball/switch


# if not switch, advance assigned object ball if needed. solid / stripe to black.
execute if score #switchplayer swPool_var00 matches 0 if entity @s[tag=swPool_pktsolid] unless entity @e[tag=swPool_pool,tag=swPool_solid,limit=1] run tag @a[tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimsolid] add swPool_aim08
execute if score #switchplayer swPool_var00 matches 0 if entity @s[tag=swPool_pktstripe] unless entity @e[tag=swPool_pool,tag=swPool_stripe,limit=1] run tag @a[tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimstripe] add swPool_aim08
tag @a[tag=swPool_aim08] remove swPool_aimsolid
tag @a[tag=swPool_aim08] remove swPool_aimstripe




#CHINESE
#SP
execute if entity @s[tag=swPool_cn8ball_open,tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"请自选目标球。"}]

# assigned ball output
execute if entity @s[tag=!swPool_cn8ball_open,tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_nextturn,tag=swPool_aimsolid] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"全色球","color":"aqua"}]
execute if entity @s[tag=!swPool_cn8ball_open,tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_nextturn,tag=swPool_aimstripe] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"花","color":"aqua"},{"text":"色","color":"white"},{"text":"球","color":"aqua"}]
execute if entity @s[tag=!swPool_cn8ball_open,tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_nextturn,tag=swPool_aim08] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"八号球","color":"black"}]


#ENGLISH
execute if entity @s[tag=swPool_cn8ball_open,tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Choose your target ball."}]

# assigned ball output
execute if entity @s[tag=!swPool_cn8ball_open,tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_nextturn,tag=swPool_aimsolid] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"Solid","color":"aqua"}]
execute if entity @s[tag=!swPool_cn8ball_open,tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_nextturn,tag=swPool_aimstripe] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"St","color":"aqua"},{"text":"ri","color":"white"},{"text":"pe","color":"aqua"}]
execute if entity @s[tag=!swPool_cn8ball_open,tag=!swPool_endgame] if entity @a[tag=swPool_poolplay,tag=swPool_nextturn,tag=swPool_aim08] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_nextturn]"},{"text":" please shoot. "},{"text":"Target ball: "},{"text":"Eight Ball","color":"black"}]


tag @a[tag=swPool_spectemp] add swPool_spec
tag @a[tag=swPool_spectemp] remove swPool_spectemp


#end of progression
tag @s remove swPool_pktcue
tag @s remove swPool_pktsolid
tag @s remove swPool_pktstripe
tag @s remove swPool_pkt08
tag @s remove swPool_foulpass
tag @s remove swPool_hitrail
#tag @s remove swPool_endgame
tag @s remove swPool_nextturn
tag @s remove swPool_switch
tag @s remove swPool_rerack
tag @a[tag=swPool_poolplay] remove swPool_hitcue
tag @a[tag=swPool_poolplay] remove swPool_nextturn
tag @a[tag=swPool_poolplay] remove swPool_foul
tag @a[tag=swPool_poolplay] remove swPool_foul_large
scoreboard players set @a[tag=swPool_poolplay] swPool_firsthit 0
scoreboard players set Pocketed_Turn swPool_hidScore 0




execute if entity @s[tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<Command Window>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 11"}},{"text":" ","underlined":false},{"underlined":true,"text":"</back>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 12"}}]
execute if entity @s[tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 13"}}]

execute if entity @s[tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 11"}},{"text":" ","underlined":false},{"underlined":true,"text":"<撤销上次击球>","color":"white","click_event":{"action":"run_command","command":"/trigger swPool_trigger set 12"}}]
execute if entity @s[tag=!swPool_endgame] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<调整下一次击球>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/trigger swPool_trigger set 13"}}]