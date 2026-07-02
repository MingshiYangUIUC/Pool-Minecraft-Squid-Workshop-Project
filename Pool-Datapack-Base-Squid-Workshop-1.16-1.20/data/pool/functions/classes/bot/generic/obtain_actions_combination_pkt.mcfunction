# summon entity at all cue ball aim points (relevant to the legal ball) while performing rule out.

# record self location 
function pool:classes/master/read_tmppos

# create aim markers while rule out / mark various scenarios
scoreboard players set objid swPool_objid 0
execute at @e[tag=swPool_tmp_legal] run function pool:classes/bot/generic/obtain_actions_combination_obj

