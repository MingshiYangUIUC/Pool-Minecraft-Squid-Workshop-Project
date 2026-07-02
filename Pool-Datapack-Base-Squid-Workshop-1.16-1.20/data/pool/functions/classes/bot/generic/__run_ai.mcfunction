# place cue ball somewhere
execute unless entity @e[tag=swPool_pool,tag=swPool_cue] run function pool:classes/bot/generic/_obtain_actions_entity_d0_ballinhand
#execute if entity @e[tag=swPool_pool,tag=swPool_cue] run say placed cue
# main function while cue ball is on table
execute if entity @e[tag=swPool_pool,tag=swPool_cue] if score Stroke swPool_hidScore matches 0 unless entity @e[type=armor_stand,tag=swPool_snookermode,limit=1] run function pool:classes/bot/generic/_obtain_actions_entity_d0_break
execute if entity @e[tag=swPool_pool,tag=swPool_cue] unless score Stroke swPool_hidScore matches 0 unless entity @e[type=armor_stand,tag=swPool_snookermode,limit=1] run function pool:classes/bot/generic/_obtain_actions_entity_d0_main