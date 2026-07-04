gamerule maxCommandChainLength 999999999

tag @s add swPool_bot_thinking
scoreboard players set #muteall swPool_C 1
scoreboard players set #botthinking swPool_C 1

# place cue ball somewhere if needed
execute unless entity @e[tag=swPool_pool,tag=swPool_cue] run function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand

# helper function for rendering
function pool:classes/bot/generic/__copy_unequip

# main function while cue ball is on table
execute if entity @e[tag=swPool_pool,tag=swPool_cue] if score Stroke swPool_hidScore matches 0 unless entity @e[type=armor_stand,tag=swPool_snookermode,limit=1] run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_break 4t
execute if entity @e[tag=swPool_pool,tag=swPool_cue] unless score Stroke swPool_hidScore matches 0 unless entity @e[type=armor_stand,tag=swPool_snookermode,limit=1] run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_main 2t

# these happen after the bot makes its shot, not here
#tag @s remove swPool_bot_thinking
#scoreboard players set #muteall swPool_C 0
#function pool:classes/bot/generic/__kill_equip
