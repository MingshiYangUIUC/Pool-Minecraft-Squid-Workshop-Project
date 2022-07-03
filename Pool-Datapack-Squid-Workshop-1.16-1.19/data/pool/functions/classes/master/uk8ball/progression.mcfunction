# Output messages of two languages are packed together.

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

tag @s remove swPool_foul
tag @s[tag=swPool_endaward] remove swPool_awarded
tag @s[tag=swPool_endaward] remove swPool_endaward
# tag @a remove swPool_streak BELOW!!!

#foul if not hitball&hitrail and not pocket (exclude breakshot, and not foul if both hitball and hitrail) (this foul overwrite any awards)
#    hitrail needs not to happen after hitball
execute unless score Stroke swPool_hidScore matches 0 if score Pocketed_Turn swPool_hidScore matches 0 run tag @a[tag=swPool_hitcue] add swPool_foul_large
execute unless score Stroke swPool_hidScore matches 0 if entity @s[tag=swPool_hitrail] if entity @a[tag=swPool_hitcue,scores={swPool_firsthit=1..7}] run tag @a[tag=swPool_hitcue,tag=swPool_foul_large] remove swPool_foul_large
execute if entity @a[tag=swPool_foul_large] run tag @s remove swPool_awarded
execute if entity @a[tag=swPool_foul_large] run tag @s add swPool_endaward
#execute if entity @a[tag=swPool_foul_large] run say foul_large
#execute if entity @s[tag=swPool_hitrail] run say hitrail
tag @a[tag=swPool_foul_large] add swPool_foul

#other general fouls: not hitting aimed ball, not pocket or hit rail. 
# this one does not foul if in 1st awarded turn (not streak).
execute unless entity @s[tag=swPool_awarded] as @a[tag=swPool_hitcue,limit=1] unless entity @s[tag=swPool_aimred,scores={swPool_firsthit=1}] unless entity @s[tag=swPool_aimylw,scores={swPool_firsthit=2}] unless entity @s[tag=swPool_aimblk,scores={swPool_firsthit=7}] run tag @s add swPool_foul
execute if entity @s[tag=swPool_awarded] as @a[tag=swPool_hitcue,tag=swPool_streak] unless entity @s[tag=swPool_aimred,scores={swPool_firsthit=1}] unless entity @s[tag=swPool_aimylw,scores={swPool_firsthit=2}] unless entity @s[tag=swPool_aimblk,scores={swPool_firsthit=7}] run tag @s add swPool_foul
#execute if entity @a[tag=swPool_foul] run say foul_aim
tag @a remove swPool_streak

# if awarded but foul, clear streak
execute if entity @s[tag=swPool_awarded] as @a[tag=swPool_hitcue] unless entity @s[tag=swPool_aimred,scores={swPool_firsthit=1}] unless entity @s[tag=swPool_aimylw,scores={swPool_firsthit=2}] unless entity @s[tag=swPool_aimblk,scores={swPool_firsthit=7}] run tag @s add swPool_endstreak

#no foul if not any pkted ball and if not hitting black
execute if score Pocketed_Total swPool_hidScore matches 0 unless entity @a[tag=swPool_hitcue,scores={swPool_firsthit=7}] run tag @a[tag=swPool_foul] remove swPool_foul

#foul of no hitrail and pocket cueball and pocket opponent's ball (not an issue if in 1st award visit) [OPPONENT'S BALL? NOT CLEAR, NOT A RULE BECAUSE IT IS HARD] 
execute unless entity @s[tag=swPool_hitrail] unless score Pocketed_Turn swPool_hidScore matches 1.. run tag @a[tag=swPool_hitcue] add swPool_foul
#execute if entity @s[tag=swPool_pktcue] run tag @a[tag=swPool_hitcue] add swPool_foul
#execute unless entity @s[tag=swPool_awarded] if entity @s[tag=swPool_pktylw] run tag @a[tag=swPool_hitcue,tag=swPool_aimred] add swPool_foul
#execute unless entity @s[tag=swPool_awarded] if entity @s[tag=swPool_pktred] run tag @a[tag=swPool_hitcue,tag=swPool_aimylw] add swPool_foul

#freeball
execute if entity @s[tag=swPool_pktcue] run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul
execute if entity @s[tag=swPool_pktcue,tag=swPool_multiplayer] run tag @a[tag=!swPool_hitcue,tag=swPool_poolplay,limit=1] add swPool_ballinhand
execute if entity @s[tag=swPool_pktcue,tag=swPool_singleplayer] run tag @a[tag=swPool_hitcue,tag=swPool_poolplay] add swPool_ballinhand
execute if entity @s[tag=swPool_pktcue] as @a[tag=swPool_ballinhand] run function app:get/pool/cueball

#remove foul if foulpass
execute if entity @s[tag=swPool_foulpass] unless entity @a[tag=swPool_ballinhand] run tag @a[tag=swPool_foul] remove swPool_foul

#pocketed black ball, unless rerack...
tag @s[tag=!swPool_rerack,tag=swPool_pktblk] add swPool_endgame 
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk] run tag @a[tag=swPool_hitcue,tag=!swPool_aimblk] add swPool_foul
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk] if score Pocketed_Turn swPool_hidScore matches 2.. run tag @a[tag=swPool_hitcue] add swPool_foul
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Completes the Game. "}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Completes the Game. "}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":" Wins."}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Wins."}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"完成本局。"}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"完成本局。"}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"获胜。"}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"获胜。"}]
#streak if no foul and pocketed correct ball and remaining ball of same color, also pocket the first ball
# also no instance of endstreak
execute if entity @s[tag=swPool_pktred] run tag @a[tag=!swPool_endstreak,tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimred] add swPool_streak
execute if entity @s[tag=swPool_pktylw] run tag @a[tag=!swPool_endstreak,tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimylw] add swPool_streak
execute if entity @s[tag=swPool_pkt1st] unless entity @s[tag=swPool_pktblk] run tag @a[tag=!swPool_endstreak,tag=swPool_hitcue,tag=!swPool_foul] add swPool_streak
tag @a[tag=swPool_endstreak] remove swPool_endstreak
tag @s[tag=swPool_pkt1st] remove swPool_pkt1st

#change to black if no ball of same color
execute if entity @s[tag=swPool_pktred] unless entity @e[tag=swPool_pool,tag=swPool_red,limit=1] run tag @a[tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimred] add swPool_aimblk
execute if entity @s[tag=swPool_pktylw] unless entity @e[tag=swPool_pool,tag=swPool_yellow,limit=1] run tag @a[tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimylw] add swPool_aimblk
tag @a[tag=swPool_aimblk] remove swPool_aimred
tag @a[tag=swPool_aimblk] remove swPool_aimylw

#time passes by awards if not streak
execute as @a[tag=swPool_hitcue] if entity @s[tag=!swPool_streak] run tag @e[tag=swPool_pooltable,tag=swPool_awarded] add swPool_endaward
execute as @a[tag=swPool_hitcue] if entity @s[tag=!swPool_streak] run tag @e[tag=swPool_pooltable,tag=swPool_awarded] remove swPool_awarded

#awards. awarded player can firstly hit any ball but cannot pocket black unless there is only black left
execute if entity @a[tag=swPool_foul] run tag @s add swPool_awarded
execute if entity @a[tag=swPool_foul] run tag @s remove swPool_endaward

#    MP: does not change player if in streak, first valid ball in pocket count as streak
execute if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer,tag=swPool_awarded,tag=!swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" gets two visits."}]
execute unless entity @a[tag=swPool_streak] if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=swPool_awarded,tag=!swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":" gets two visits."}]
execute if entity @a[tag=swPool_streak] if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=swPool_awarded,tag=!swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" gets two visits."}]
execute if entity @s[tag=!swPool_endgame,tag=swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" gets one visit left."}]
execute if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer,tag=swPool_awarded,tag=!swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"有两次击球机会。"}]
execute unless entity @a[tag=swPool_streak] if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=swPool_awarded,tag=!swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"有两次击球机会。"}]
execute if entity @a[tag=swPool_streak] if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=swPool_awarded,tag=!swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"有两次击球机会。"}]
execute if entity @s[tag=!swPool_endgame,tag=swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"还有一次击球机会。"}]


#change target (switch) if single player, unless streak, and unless endaward, but always do so if foul
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_foul] run tag @s add swPool_switch
execute if entity @s[tag=!swPool_endgame] unless entity @s[tag=swPool_endaward] unless entity @a[tag=swPool_streak] run tag @s add swPool_switch
execute if entity @s[tag=swPool_singleplayer,tag=swPool_switch,tag=!swPool_endgame] run execute as @a[tag=swPool_poolplay] run function pool:classes/master/uk8ball/switch



#Output messages

#foul and freeball
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Foul."}]
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_ballinhand] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Ball in-hand."}]
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_foul] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"犯规。"}]
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_ballinhand] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"请放置母球。"}]

#change to aimblack if no ball remains
execute as @a[tag=swPool_aimred] unless entity @e[tag=swPool_red,tag=swPool_pool,limit=1] run tag @s add swPool_aimblk
execute as @a[tag=swPool_aimylw] unless entity @e[tag=swPool_yellow,tag=swPool_pool,limit=1] run tag @s add swPool_aimblk
tag @a[tag=swPool_aimblk] remove swPool_aimred
tag @a[tag=swPool_aimblk] remove swPool_aimylw



#if there is no target aim selected...
#ENGLISH
#SP
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is any except black."}]
#MP include whether endaward
#say mpnotarget
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is any except black."}]
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=!swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is any except black."}]

#single player non-switch output
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"red","text":"red"},{"text":"."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"yellow","text":"yellow"},{"text":"."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"black","text":"black"},{"text":"."}]

#Multiplayer non-switch
#say mpnonswitch
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"red","text":"red"},{"text":"."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"yellow","text":"yellow"},{"text":"."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"black","text":"black"},{"text":"."}]

#Multiplayer switch
#say mpswitch
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"red","text":"red"},{"text":"."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"yellow","text":"yellow"},{"text":"."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"black","text":"black"},{"text":"."}]

#Multiplayer awarded, consider cases of streak or not
#say mpaw1
execute unless entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"red","text":"red"},{"text":"."}]
execute unless entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"yellow","text":"yellow"},{"text":"."}]
execute unless entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"black","text":"black"},{"text":"."}]
#say mpaw2
execute if entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"red","text":"red"},{"text":"."}]
execute if entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"yellow","text":"yellow"},{"text":"."}]
execute if entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"black","text":"black"},{"text":"."}]


#CHINESE
#SP
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"请自选目标球。"}]
#MP include whether endaward
#say mpnotarget
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"请自选目标球。"}]
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=!swPool_endaward] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"请击球。"},{"text":"请自选目标球。"}]

#single player non-switch output
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"红","color":"red"},{"text":"球。"}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黄","color":"yellow"},{"text":"球。"}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黑","color":"black"},{"text":"球。"}]

#Multiplayer non-switch
#say mpnonswitch
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"红","color":"red"},{"text":"球。"}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黄","color":"yellow"},{"text":"球。"}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黑","color":"black"},{"text":"球。"}]

#Multiplayer switch
#say mpswitch
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"红","color":"red"},{"text":"球。"}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黄","color":"yellow"},{"text":"球。"}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黑","color":"black"},{"text":"球。"}]

#Multiplayer awarded, consider cases of streak or not
#say mpaw1
execute unless entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"红","color":"red"},{"text":"球。"}]
execute unless entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黄","color":"yellow"},{"text":"球。"}]
execute unless entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黑","color":"black"},{"text":"球。"}]
#say mpaw2
execute if entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"红","color":"red"},{"text":"球。"}]
execute if entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黄","color":"yellow"},{"text":"球。"}]
execute if entity @a[tag=swPool_streak] unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"请击球。"},{"text":"目标球为"},{"text":"黑","color":"black"},{"text":"球。"}]





#Multiplayer endaward
#say mpend
#execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_endaward,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_spec] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"red","text":"red"},{"text":"."}]
#execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_endaward,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_spec] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"yellow","text":"yellow"},{"text":"."}]
#execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_endaward,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_spec] [{"text":"➇ ","color":"white"},{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Target ball is "},{"color":"black","text":"black"},{"text":"."}]

#execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_aimred] run say aim red
#execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_aimylw] run say aim yellow
#execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_aimblk] run say aim black
#execute if entity @s[tag=!swPool_endgame] if score Pocketed_Total swPool_hidScore matches 0 run say aim any except black



tag @a[tag=swPool_spectemp] add swPool_spec
tag @a[tag=swPool_spectemp] remove swPool_spectemp


#end of progression
tag @s remove swPool_pktcue
tag @s remove swPool_pktred
tag @s remove swPool_pktylw
tag @s remove swPool_pktblk
tag @s remove swPool_foulpass
tag @s remove swPool_hitrail
#tag @s remove swPool_endgame
tag @s remove swPool_switch
tag @s remove swPool_rerack
tag @a[tag=swPool_poolplay] remove swPool_hitcue
tag @a[tag=swPool_poolplay] remove swPool_foul
tag @a[tag=swPool_poolplay] remove swPool_foul_large
scoreboard players set @a[tag=swPool_poolplay] swPool_firsthit 0
scoreboard players set Pocketed_Turn swPool_hidScore 0

scoreboard players add Stroke swPool_hidScore 1


tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<Command Window>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}},{"text":" ","underlined":false},{"underlined":true,"text":"</back>","color":"","clickEvent":{"action":"run_command","value":"/function pool:classes/master/undo"}}]
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]

tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":""},{"underlined":true,"text":"<命令窗口>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}},{"text":" ","underlined":false},{"underlined":true,"text":"<撤销上次击球>","color":"","clickEvent":{"action":"run_command","value":"/function pool:classes/master/undo"}}]
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"<调整下一次击球>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]