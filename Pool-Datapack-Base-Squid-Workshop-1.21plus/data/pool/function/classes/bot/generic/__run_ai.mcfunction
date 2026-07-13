tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"电脑玩家计算中..."}]
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Bot Player is thinking..."}]

tag @s add swPool_bot_thinking

# log current tag
execute if entity @s[tag=swPool_aimsolid] run tag @s add swPool_aimsolid_tmp
execute if entity @s[tag=swPool_aimstripe] run tag @s add swPool_aimstripe_tmp
execute if entity @s[tag=swPool_aim08] run tag @s add swPool_aim08_tmp

scoreboard players set #muteall swPool_C 1
scoreboard players set #botthinking swPool_C 1

# place cue ball somewhere if needed
execute unless entity @e[tag=swPool_pool,tag=swPool_cue] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"电脑玩家摆放母球..."}]
execute unless entity @e[tag=swPool_pool,tag=swPool_cue] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Bot Player is placing cue ball..."}]

scoreboard players set #try_threshold swMath_V 9000
execute unless entity @e[tag=swPool_pool,tag=swPool_cue] run function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand

# helper function for rendering
function pool:classes/bot/generic/__copy_unequip

# main function while cue ball is on table
execute if entity @e[tag=swPool_pool,tag=swPool_cue] if score Stroke swPool_hidScore matches 0 unless entity @e[type=item_display,tag=swPool_snookermode,limit=1] run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_break 10t
execute if entity @e[tag=swPool_pool,tag=swPool_cue] unless score Stroke swPool_hidScore matches 0 unless entity @e[type=item_display,tag=swPool_snookermode,limit=1] run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_main 2t

# these happen after the bot makes its shot, not here
#tag @s remove swPool_bot_thinking
#scoreboard players set #muteall swPool_C 0
#function pool:classes/bot/generic/__kill_equip
