tag @s remove swPool_foul
tag @s[tag=swPool_endaward] remove swPool_awarded
tag @s[tag=swPool_endaward] remove swPool_endaward
tag @a remove swPool_streak

#general fouls: not hitting aimed ball, not pocket or hit rail. this one does not foul if in awarded turn.
execute unless entity @s[tag=swPool_awarded] as @a[tag=swPool_hitcue] unless entity @s[tag=swPool_aimred,scores={swPool_firsthit=1}] unless entity @s[tag=swPool_aimylw,scores={swPool_firsthit=2}] unless entity @s[tag=swPool_aimblk,scores={swPool_firsthit=7}] run tag @s add swPool_foul

#no foul if no pkted ball and if not hitting black
execute if score Pocketed_Total swPool_hidScore matches 0 unless entity @a[tag=swPool_hitcue,scores={swPool_firsthit=7}] run tag @a[tag=swPool_foul] remove swPool_foul


execute unless entity @s[tag=swPool_hitrail] unless score Pocketed_Turn swPool_hidScore matches 1.. run tag @a[tag=swPool_hitcue] add swPool_foul
execute if entity @s[tag=swPool_pktcue] run tag @a[tag=swPool_hitcue] add swPool_foul


#freeball
execute if entity @s[tag=swPool_pktcue] run tag @a[tag=swPool_hitcue,limit=1] add swPool_foul
execute if entity @s[tag=swPool_pktcue,tag=swPool_multiplayer] run tag @a[tag=!swPool_hitcue,tag=swPool_poolplay,limit=1] add swPool_freeball
execute if entity @s[tag=swPool_pktcue,tag=swPool_singleplayer] run tag @a[tag=swPool_hitcue,tag=swPool_poolplay] add swPool_freeball
execute if entity @s[tag=swPool_pktcue] as @a[tag=swPool_freeball] run function app:get/pool/cueball

#remove foul if foulpass
execute if entity @s[tag=swPool_foulpass] run tag @a[tag=swPool_foul] remove swPool_foul

#pocketed black ball, unless rerack...
tag @s[tag=!swPool_rerack,tag=swPool_pktblk] add swPool_endgame 
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk] run tag @a[tag=swPool_hitcue,tag=!swPool_aimblk] add swPool_foul
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk] if score Pocketed_Total swPool_hidScore matches 2.. run tag @a[tag=swPool_hitcue] add swPool_foul
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk] if entity @a[tag=swPool_hitcue,tag=!swPool_foul] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Won. "}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_multiplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":" Won."}]
execute if entity @s[tag=!swPool_rerack,tag=swPool_pktblk,tag=swPool_singleplayer] if entity @a[tag=swPool_hitcue,tag=swPool_foul] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" Lost!"}]

#streak if no foul and pocketed correct ball and remaining ball of same color
execute if entity @s[tag=swPool_pktred] run tag @a[tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimred] add swPool_streak
execute if entity @s[tag=swPool_pktylw] run tag @a[tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimylw] add swPool_streak

#change to black if no ball of same color
execute if entity @s[tag=swPool_pktred] unless entity @e[tag=swPool_pool,tag=swPool_red,limit=1] run tag @a[tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimred] add swPool_aimblk
execute if entity @s[tag=swPool_pktylw] unless entity @e[tag=swPool_pool,tag=swPool_yellow,limit=1] run tag @a[tag=swPool_hitcue,tag=!swPool_foul,tag=swPool_aimylw] add swPool_aimblk
tag @a[tag=swPool_aimblk] remove swPool_aimred
tag @a[tag=swPool_aimblk] remove swPool_aimylw

#time passes by awards if not streak
execute as @a[tag=swPool_hitcue] if entity @s[tag=!swPool_streak] run tag @e[tag=swPool_pooltable,tag=swPool_awarded] add swPool_endaward

#awards. awarded player can firsthit any ball but cannot pocket black unless there is only black left
execute if entity @a[tag=swPool_foul] run tag @s add swPool_awarded
execute if entity @a[tag=swPool_foul] run tag @s remove swPool_endaward

execute if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer,tag=swPool_awarded,tag=!swPool_endaward] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" gets two visits."}]
execute if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer,tag=swPool_awarded,tag=!swPool_endaward] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":" gets two visits."}]
execute if entity @s[tag=!swPool_endgame,tag=swPool_endaward] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":" gets one visit left."}]



#change target if single player, unless streak, and unless endaward, but always do so if foul
execute if entity @s[tag=swPool_singleplayer,tag=!swPool_endgame] if entity @a[tag=swPool_foul] run tag @s add swPool_switch
execute if entity @s[tag=swPool_singleplayer,tag=!swPool_endgame] unless entity @s[tag=swPool_endaward] unless entity @a[tag=swPool_streak] run tag @s add swPool_switch
execute if entity @s[tag=swPool_switch,tag=!swPool_endgame] run execute as @a[tag=swPool_poolplay] run function pool:classes/master/uk8ball/switch



#Output messages

#foul and freeball
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_foul] run tellraw @a[tag=swPool_poolplay] [{"text":"Foul."}]
execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_freeball] run tellraw @a[tag=swPool_poolplay] [{"text":"Freeball."}]

#if there is no target...
#SP
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at any except black."}]
#MP
execute if score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_multiplayer] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at any except black."}]

#single player non-switch output
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at red."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at yellow."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_singleplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at black."}]

#Multiplayer non-switch
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at red."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at yellow."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=!swPool_switch] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at black."}]

#Multiplayer switch
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at red."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at yellow."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=!swPool_awarded,tag=swPool_multiplayer,tag=swPool_switch] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at black."}]

#Multiplayer awarded
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at red."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at yellow."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at black."}]

#Multiplayer endaward
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimred] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at red."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimylw] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at yellow."}]
execute unless score Pocketed_Total swPool_hidScore matches 0 if entity @s[tag=!swPool_endgame,tag=swPool_awarded,tag=swPool_multiplayer] if entity @a[tag=swPool_poolplay,tag=swPool_hitcue,tag=swPool_aimblk] run tellraw @a[tag=swPool_poolplay] [{"selector":"@a[tag=swPool_poolplay,tag=!swPool_hitcue]"},{"text":"'s Turn. "},{"text":"Please aim at black."}]

#execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_aimred] run say aim red
#execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_aimylw] run say aim yellow
#execute if entity @s[tag=!swPool_endgame] if entity @a[tag=swPool_aimblk] run say aim black
#execute if entity @s[tag=!swPool_endgame] if score Pocketed_Total swPool_hidScore matches 0 run say aim any except black

#rerack request
execute if entity @s[tag=swPool_rerack] run function pool:classes/master/redo_run



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
scoreboard players set @a[tag=swPool_poolplay] swPool_firsthit 0
scoreboard players set Pocketed_Turn swPool_hidScore 0



tellraw @a[tag=swPool_poolplay] [{"text":""},{"underlined":true,"text":"<Command Window>","color":"","clickEvent":{"action":"run_command","value":"/function app:help/pool/commandwindow"}},{"text":" ","underlined":false},{"underlined":true,"text":"</back>","color":"","clickEvent":{"action":"run_command","value":"/function pool:classes/master/redo"}}]
tellraw @a[tag=swPool_poolplay] [{"text":"<Adjust the next strike angles.>","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/cue/map"}}]