# replacement of progression, evaluate a simulated action.

# Output messages of two languages are packed together.

# add Stroke here!
scoreboard players add Stroke swPool_hidScore 1

# if was breaking (now stroke is 1), remove breaking tag
execute if score Stroke swPool_hidScore matches 1 run tag @s[tag=swPool_pooltable,tag=swPool_cn8ball_breaking] remove swPool_cn8ball_breaking


# detect number of players (only need to care about singleplayer)
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_multiplayer
tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] remove swPool_singleplayer

tag @e[type=armor_stand,tag=swPool_pooltable,limit=1] add swPool_singleplayer

#rerack request
execute if entity @s[tag=swPool_pkt08] if score Stroke swPool_hidScore matches 1 run tag @s add swPool_rerack
#execute if entity @s[tag=swPool_rerack] run tellraw @a[tag=swPool_debug][tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Pocketed black. Rerack!"}]
#execute if entity @s[tag=swPool_rerack] run tellraw @a[tag=swPool_debug][tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"黑球落袋，重新开球。"}]
execute if entity @s[tag=swPool_rerack] run tag @a[tag=swPool_spec] add swPool_spectemp
execute if entity @s[tag=swPool_rerack] run tag @a[tag=swPool_spec] remove swPool_spec
execute if entity @s[tag=swPool_rerack] run tag @s remove swPool_pkt08
execute if entity @s[tag=swPool_rerack] run function pool:classes/master/undo_run

# clean up tags
tag @s remove swPool_foul
tag @a[tag=swPool_poolplay] remove swPool_foul
# fake shooter entity
tag @e[tag=swPool_shooter] remove swPool_foul
# @s is pooltable

# foul: if NOT open, hit wrong ball first.
execute unless entity @s[tag=swPool_cn8ball_open] as @e[tag=swPool_shooter,limit=1] unless entity @s[tag=swPool_aimsolid,scores={swPool_firsthit=1}] unless entity @s[tag=swPool_aimstripe,scores={swPool_firsthit=2}] unless entity @s[tag=swPool_aim08,scores={swPool_firsthit=8}] run tag @s add swPool_foul1
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul1] add swPool_foul
#execute if entity @e[tag=swPool_shooter,limit=1,tag=swPool_foul1] run  sayf1
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul1] remove swPool_foul1

# foul: hit 8 ball if should not hit 8 ball
execute as @e[tag=swPool_shooter,limit=1] if entity @s[scores={swPool_firsthit=8}] unless entity @s[tag=swPool_aim08] run tag @s add swPool_foul2
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul2] add swPool_foul
#execute if entity @e[tag=swPool_shooter,limit=1,tag=swPool_foul2] run  sayf2
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul2] remove swPool_foul2

# add hitrail if rail rule is ignored
execute if data storage minecraft:swpool ignore_rail_rule run tag @s add swPool_hitrail
# foul: if not pocketing or not hitting rail after hitting ball (determined during hitrail logic not here)
execute if score Pocketed_Turn swPool_hidScore matches 0 if entity @s[tag=swPool_cn8ballmode,tag=!swPool_hitrail] run tag @e[tag=swPool_shooter,limit=1] add swPool_foul3
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul3] add swPool_foul
#execute if entity @e[tag=swPool_shooter,limit=1,tag=swPool_foul3] run  sayf3
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul3] remove swPool_foul3

# foul: if pocketed cue ball
execute if entity @s[tag=swPool_pktcue] run tag @e[tag=swPool_shooter,limit=1] add swPool_foul4
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul4] add swPool_foul
#execute if entity @e[tag=swPool_shooter,limit=1,tag=swPool_foul4] run  sayf4
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul4] remove swPool_foul4

# foul: if behind headstring, cue ball does not move downward
execute if score #headstring swPool_var00 matches 1 unless entity @e[tag=swPool_cue,tag=swPool_pool,limit=1,sort=nearest,tag=swPool_downward] run tag @e[tag=swPool_shooter,limit=1] add swPool_foul5
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul5] add swPool_foul
#execute if entity @e[tag=swPool_shooter,limit=1,tag=swPool_foul5] run  sayf5
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul5] remove swPool_foul5


# endgame?

tag @s[tag=!swPool_rerack,tag=swPool_pkt08] add swPool_endgame 
execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08] run tag @e[tag=swPool_shooter,tag=!swPool_aim08] add swPool_foul6
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul6] add swPool_foul
tag @e[tag=swPool_shooter,limit=1,tag=swPool_foul6] remove swPool_foul6

#execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_singleplayer] if entity @e[tag=swPool_shooter,tag=!swPool_foul] run tellraw @a[tag=swPool_debug][tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@e[tag=swPool_shooter]"},{"text":" Completes the Game. "}]
#execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_singleplayer] if entity @e[tag=swPool_shooter,tag=swPool_foul] run tellraw @a[tag=swPool_debug][tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@e[tag=swPool_shooter]"},{"text":" Completes the Game. "}]
#execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_singleplayer] if entity @e[tag=swPool_shooter,tag=!swPool_foul] run tellraw @a[tag=swPool_debug][tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@e[tag=swPool_shooter]"},{"text":"完成本局。"}]
#execute if entity @s[tag=!swPool_rerack,tag=swPool_pkt08,tag=swPool_singleplayer] if entity @e[tag=swPool_shooter,tag=swPool_foul] run tellraw @a[tag=swPool_debug][tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@e[tag=swPool_shooter]"},{"text":"完成本局。"}]


# determine next player
scoreboard players set #switchplayer swPool_var00 0

# if still open: swtich player (because if you pocket a ball and is legally assigned, it will no longer be open, see pocketing/main)
execute if entity @s[tag=swPool_cn8ball_open] run scoreboard players set #switchplayer swPool_var00 1

# if open and pocketed any ball and keep open (no longer open if legally assigned a type): NO CHANGE
execute if score #switchplayer swPool_var00 matches 1 if score Pocketed_Turn swPool_hidScore matches 1.. if entity @s[tag=swPool_multiplayer,tag=swPool_cn8ball_open] run scoreboard players set #switchplayer swPool_var00 0

# if no pocketed ball: switch player
execute if score Pocketed_Turn swPool_hidScore matches 0 run scoreboard players set #switchplayer swPool_var00 1

# if foul, switch player
execute if entity @e[tag=swPool_shooter,tag=swPool_foul] run scoreboard players set #switchplayer swPool_var00 1

# if does not pocket a assigned object ball, switch player
execute unless entity @s[tag=swPool_cn8ball_open] if entity @e[tag=swPool_shooter,limit=1,tag=swPool_aimsolid] unless entity @s[tag=swPool_pktsolid] run scoreboard players set #switchplayer swPool_var00 1
execute unless entity @s[tag=swPool_cn8ball_open] if entity @e[tag=swPool_shooter,limit=1,tag=swPool_aimstripe] unless entity @s[tag=swPool_pktstripe] run scoreboard players set #switchplayer swPool_var00 1
execute unless entity @s[tag=swPool_cn8ball_open] if entity @e[tag=swPool_shooter,limit=1,tag=swPool_aim08] unless entity @s[tag=swPool_pkt08] run scoreboard players set #switchplayer swPool_var00 1

# if not switch, advance assigned object ball if needed. solid / stripe to black.
execute if score #switchplayer swPool_var00 matches 0 if entity @s[tag=swPool_pktsolid] unless entity @e[tag=swPool_pool,tag=swPool_solid,limit=1] run tag @e[tag=swPool_shooter,tag=!swPool_foul,tag=swPool_aimsolid] add swPool_aim08
execute if score #switchplayer swPool_var00 matches 0 if entity @s[tag=swPool_pktstripe] unless entity @e[tag=swPool_pool,tag=swPool_stripe,limit=1] run tag @e[tag=swPool_shooter,tag=!swPool_foul,tag=swPool_aimstripe] add swPool_aim08

# advance all player to hit 08 if their target ball is all gone
execute as @e[tag=swPool_shooter] if entity @s[tag=swPool_aimsolid] unless entity @e[tag=swPool_pool,tag=swPool_solid,limit=1] run tag @s add swPool_aim08
execute as @e[tag=swPool_shooter] if entity @s[tag=swPool_aimstripe] unless entity @e[tag=swPool_pool,tag=swPool_stripe,limit=1] run tag @s add swPool_aim08

tag @e[tag=swPool_aim08] remove swPool_aimsolid
tag @e[tag=swPool_aim08] remove swPool_aimstripe

tag @a[tag=swPool_spectemp] add swPool_spec
tag @a[tag=swPool_spectemp] remove swPool_spectemp


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
tag @s remove swPool_pktsolid
tag @s remove swPool_pktstripe
tag @s remove swPool_pkt08
tag @s remove swPool_foulpass
tag @s remove swPool_hitrail
#tag @s remove swPool_endgame
tag @s remove swPool_nextturn
tag @s remove swPool_switch
tag @s remove swPool_rerack
tag @e[tag=swPool_hitcue] remove swPool_hitcue
tag @e[tag=swPool_nextturn] remove swPool_nextturn
tag @e[tag=swPool_foul] remove swPool_foul
tag @e[tag=swPool_foul_large] remove swPool_foul_large
scoreboard players set @e[tag=swPool_shooter] swPool_firsthit 0
scoreboard players set Pocketed_Turn swPool_hidScore 0
