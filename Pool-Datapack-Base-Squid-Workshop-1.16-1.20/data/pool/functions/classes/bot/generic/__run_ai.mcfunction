function pool:classes/bot/generic/__prepare_ai

tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"电脑玩家计算中..."}]
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Bot Player is thinking..."}]

tag @s add swPool_bot_thinking

# log current tag
execute if entity @s[tag=swPool_aimsolid] run tag @s add swPool_aimsolid_tmp
execute if entity @s[tag=swPool_aimstripe] run tag @s add swPool_aimstripe_tmp
execute if entity @s[tag=swPool_aim08] run tag @s add swPool_aim08_tmp

# store snooker target ball
scoreboard players operation swPool_firsthit_tmp swPool_firsthit = 000c2be1-0001-414d-0000-000000000000 swPool_firsthit
# ensure that rank of snooker ball exist
execute if score swPool_snookermode swMath_V matches 1 run scoreboard players set @e[tag=swPool_red,tag=swPool_pool] swPool_rank 1
execute if score swPool_snookermode swMath_V matches 1 run scoreboard players set @e[tag=swPool_yellow,tag=swPool_pool] swPool_rank 2
execute if score swPool_snookermode swMath_V matches 1 run scoreboard players set @e[tag=swPool_green,tag=swPool_pool] swPool_rank 3
execute if score swPool_snookermode swMath_V matches 1 run scoreboard players set @e[tag=swPool_brown,tag=swPool_pool] swPool_rank 4
execute if score swPool_snookermode swMath_V matches 1 run scoreboard players set @e[tag=swPool_blue,tag=swPool_pool] swPool_rank 5
execute if score swPool_snookermode swMath_V matches 1 run scoreboard players set @e[tag=swPool_pink,tag=swPool_pool] swPool_rank 6
execute if score swPool_snookermode swMath_V matches 1 run scoreboard players set @e[tag=swPool_black,tag=swPool_pool] swPool_rank 7

scoreboard players set #muteall swPool_C 1
scoreboard players set #botthinking swPool_C 1

# place cue ball somewhere if needed
execute unless entity @e[tag=swPool_pool,tag=swPool_cue] run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ ","color":"white"},{"text":"电脑玩家摆放母球..."}]
execute unless entity @e[tag=swPool_pool,tag=swPool_cue] run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ ","color":"white"},{"text":"Bot Player is placing cue ball..."}]

# normal place
execute unless score swPool_snookermode swMath_V matches 1 run scoreboard players set #try_threshold swMath_V 9000
execute unless score swPool_snookermode swMath_V matches 1 unless entity @e[tag=swPool_pool,tag=swPool_cue] run function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand
# snooker place between yellow and brown
execute if score swPool_snookermode swMath_V matches 1 unless entity @e[tag=swPool_pool,tag=swPool_cue] run function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand_snooker

tag @s remove swPool_ballinhand

# helper function for rendering
function pool:classes/bot/generic/__copy_unequip

scoreboard players reset #tryoutloopmax swMath_V
# main function while cue ball is on table
execute if entity @e[tag=swPool_pool,tag=swPool_cue] if score Stroke swPool_hidScore matches 0 unless entity @e[type=armor_stand,tag=swPool_snookermode,limit=1] run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_break 10t
execute if entity @e[tag=swPool_pool,tag=swPool_cue] unless score Stroke swPool_hidScore matches 0 unless entity @e[type=armor_stand,tag=swPool_snookermode,limit=1] run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_main 2t

# snooker: do not break, always shot normally
execute if entity @e[tag=swPool_pool,tag=swPool_cue] if entity @e[type=armor_stand,tag=swPool_snookermode,limit=1] run schedule function pool:classes/bot/generic/_obtain_actions_entity_d0_main 2t

# these happen after the bot makes its shot, not here
#tag @s remove swPool_bot_thinking
#scoreboard players set #muteall swPool_C 0
#function pool:classes/bot/generic/__kill_equip
