# force cleanup earlier session

# manually cancel remaining cleanup if a shot already end.
schedule clear pool:classes/bot/generic/__cleanup
schedule clear pool:classes/bot/generic/__cleanup_delay
function pool:classes/bot/generic/__clear_simulation_schedule

# handle fastfwd conditions upon interruption
execute if score #fastfwd_bot swMath_V matches 1 if entity @e[tag=swPool_shooter_d0,limit=1] run scoreboard players operation #fastfwd swMath_V = #fastfwd_tmp_d1 swMath_V
execute if score #fastfwd_bot swMath_V matches 1 if entity @e[tag=swPool_shooter_d0,limit=1] run scoreboard players operation #fastfwd_maxiter swMath_V = #fastfwd_maxiter_tmp_d1 swMath_V
execute if score #fastfwd_bot swMath_V matches 1 unless entity @e[tag=swPool_shooter_d0,limit=1] run scoreboard players operation #fastfwd swMath_V = #fastfwd_tmp swMath_V
execute if score #fastfwd_bot swMath_V matches 1 unless entity @e[tag=swPool_shooter_d0,limit=1] run scoreboard players operation #fastfwd_maxiter swMath_V = #fastfwd_maxiter_tmp swMath_V
scoreboard players reset #fastfwd_bot swMath_V

# remove helper entities and tags
kill @e[tag=swPool_aim_pkt]
kill @e[tag=swPool_aim_obj]
kill @e[tag=swPool_aim_obj_d0]
kill @e[tag=swPool_aim_obj_d1]
kill @e[tag=swPool_aim_obj_rand]
kill @e[tag=swPool_shooter]
kill @e[tag=swPool_shooter_d0]
kill @e[tag=swPool_temppin_d1]
tag @e[tag=swPool_tmp_legal] remove swPool_tmp_legal
tag @e[tag=swPool_tmp_legal_d0] remove swPool_tmp_legal_d0
