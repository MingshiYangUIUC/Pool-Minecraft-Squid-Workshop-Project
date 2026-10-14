# only one fixed action at d1
# executor is swPool_aim_obj_d1_selected
tellraw @a[tag=swPool_debug] [{"text":"D1 simulation start"}]

function pool:classes/bot/generic/_configure_shooter_d1
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0
function pool:classes/bot/generic/_configure_actions_entity_d1
