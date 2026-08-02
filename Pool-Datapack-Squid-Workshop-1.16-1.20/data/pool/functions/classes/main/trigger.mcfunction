execute if score @s swPool__trigger matches 1 run function app:help/pool/commandwindow

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1141 run function app:unload/pool
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1141 if entity @s[tag=swPool_whitelisted] run function app:unload/pool

execute if score @s swPool__trigger matches 11212 run function app:help/pool/noncreativewindow

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 11213 run function app:help/pool/rulewindow
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 11213 if entity @s[tag=swPool_whitelisted] run function app:help/pool/rulewindow

execute if score @s swPool__trigger matches 11214 run function app:help/pool/tableclothwindow

execute if score @s swPool__trigger matches 111110 run function app:get/pool/cuestick_helper

execute if score @s swPool__trigger matches 112151 run function app:help/pool/about/games

execute if score @s swPool__trigger matches 112152 run function app:help/pool/about/guide

execute if score @s swPool__trigger matches 112153 run function app:help/pool/about/rules

execute if score @s swPool__trigger matches 112171 run function app:help/pool/notes/release_note

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 411112 run function pool:classes/main/load
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 411112 if entity @s[tag=swPool_whitelisted] run function pool:classes/main/load

execute if score @s swPool__trigger matches 1121801 run function app:help/pool/settings/_help

execute if score @s swPool__trigger matches 1121803 run function app:help/pool/settings/_help_version

execute if score @s swPool__trigger matches 1121804 run function app:help/pool/settings/bot_player

execute if score @s swPool__trigger matches 1121805 run function app:help/pool/settings/datapack_management

execute if score @s swPool__trigger matches 1121807 run function app:help/pool/settings/game_settings

execute if score @s swPool__trigger matches 1121808 run function app:help/pool/settings/physics_settings

execute if score @s swPool__trigger matches 1121809 run function app:help/pool/settings/player_control

execute if score @s swPool__trigger matches 1121810 run function app:help/pool/settings/table_and_equipment

execute if score @s swPool__trigger matches 1121811 run function app:help/pool/settings/visuals

execute if score @s swPool__trigger matches 1135011 run function app:settings/pool/aim/cue_deflection

execute if score @s swPool__trigger matches 1135012 run function app:settings/pool/aim/nozoom

execute if score @s swPool__trigger matches 1135013 run function app:settings/pool/aim/zoom

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135021 run function app:settings/pool/bot/action_space_10
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135021 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/bot/action_space_10

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135022 run function app:settings/pool/bot/action_space_5
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135022 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/bot/action_space_5

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135023 run function app:settings/pool/bot/angle_std
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135023 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/bot/angle_std

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135024 run function app:settings/pool/bot/instant_mode_off
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135024 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/bot/instant_mode_off

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135025 run function app:settings/pool/bot/instant_mode_on
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135025 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/bot/instant_mode_on

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135026 run function app:settings/pool/bot/n_aims_eval
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135026 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/bot/n_aims_eval

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135027 run function app:settings/pool/bot/tick_per_eval
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135027 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/bot/tick_per_eval

execute if score @s swPool__trigger matches 1135031 run function app:settings/pool/breakshot/breakpower

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135032 run function app:settings/pool/breakshot/default_break
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135032 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/breakshot/default_break

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135033 run function app:settings/pool/breakshot/nn_break
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135033 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/breakshot/nn_break

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135034 run function app:settings/pool/breakshot/nn_complexity
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135034 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/breakshot/nn_complexity

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135041 run function app:settings/pool/cheating/allow
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135041 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/cheating/allow

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135042 run function app:settings/pool/cheating/disallow
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135042 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/cheating/disallow

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135051 run function app:settings/pool/equipment/ball_radius
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135051 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/equipment/ball_radius

execute if score @s swPool__trigger matches 1135052 run function app:settings/pool/equipment/stick_type

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135053 run function app:settings/pool/equipment/table_cloth_color
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135053 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/equipment/table_cloth_color

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135054 run function app:settings/pool/equipment/table_enforce_1x2
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135054 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/equipment/table_enforce_1x2

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135055 run function app:settings/pool/equipment/table_neglect_1x2
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135055 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/equipment/table_neglect_1x2

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135056 run function app:settings/pool/equipment/table_rim_type
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135056 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/equipment/table_rim_type

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135057 run function app:settings/pool/equipment/table_scale_fix
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135057 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/equipment/table_scale_fix

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135058 run function app:settings/pool/equipment/table_scale_unfix
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135058 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/equipment/table_scale_unfix

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135061 run function app:settings/pool/friction/clear
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135061 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/friction/clear

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135062 run function app:settings/pool/friction/default
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135062 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/friction/default

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135063 run function app:settings/pool/friction/impact
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135063 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/friction/impact

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135064 run function app:settings/pool/friction/rolling
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135064 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/friction/rolling

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135065 run function app:settings/pool/friction/sliding
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135065 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/friction/sliding

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135066 run function app:settings/pool/friction/striking
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135066 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/friction/striking

execute if score @s swPool__trigger matches 1135071 run function app:settings/pool/language/chinese_simplified

execute if score @s swPool__trigger matches 1135072 run function app:settings/pool/language/english

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135081 run function app:settings/pool/need_recipes/recipe_off
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135081 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/need_recipes/recipe_off

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135082 run function app:settings/pool/need_recipes/recipe_on
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135082 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/need_recipes/recipe_on

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135091 run function app:settings/pool/reload/cleanongoingsession
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135091 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/reload/cleanongoingsession

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135092 run function app:settings/pool/reload/keepongoingsession
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135092 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/reload/keepongoingsession

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135101 run function app:settings/pool/restitution/impact
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135101 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/restitution/impact

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135111 run function app:settings/pool/rules/_rule_window_sc
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135111 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/_rule_window_sc

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135112 run function app:settings/pool/rules/automatic_judge_off
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135112 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/automatic_judge_off

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135113 run function app:settings/pool/rules/automatic_judge_on
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135113 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/automatic_judge_on

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135114 run function app:settings/pool/rules/foul_reason_feedback
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135114 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/foul_reason_feedback

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135115 run function app:settings/pool/rules/foul_reason_hide
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135115 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/foul_reason_hide

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135116 run function app:settings/pool/rules/rail_rule_enforce
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135116 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/rail_rule_enforce

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135117 run function app:settings/pool/rules/rail_rule_ignore
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135117 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/rail_rule_ignore

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135118 run function app:settings/pool/rules/singleplayer_role_keep
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135118 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/singleplayer_role_keep

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135119 run function app:settings/pool/rules/singleplayer_role_switch
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135119 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/rules/singleplayer_role_switch

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135131 run function app:settings/pool/version/1_16
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135131 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/version/1_16

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135132 run function app:settings/pool/version/1_17
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135132 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/version/1_17

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135133 run function app:settings/pool/version/1_18
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135133 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/version/1_18

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135134 run function app:settings/pool/version/1_19
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135134 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/version/1_19

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135135 run function app:settings/pool/version/1_20_4_andminus
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135135 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/version/1_20_4_andminus

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135136 run function app:settings/pool/version/1_20_5_andplus
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135136 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/version/1_20_5_andplus

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135137 run function app:settings/pool/version/reset
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135137 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/version/reset

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135141 run function app:settings/pool/visuals/cueball_clean
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135141 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/visuals/cueball_clean

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135142 run function app:settings/pool/visuals/cueball_red_dots
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135142 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/visuals/cueball_red_dots

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135143 run function app:settings/pool/visuals/disable_ball_spinning
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135143 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/visuals/disable_ball_spinning

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135144 run function app:settings/pool/visuals/enable_ball_spinning
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135144 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/visuals/enable_ball_spinning

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135145 run function app:settings/pool/visuals/tp_duration
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 1135145 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/visuals/tp_duration

execute if score @s swPool__trigger matches 4110105 run function pool:classes/9ball/start

execute if score @s swPool__trigger matches 4110108 run function pool:classes/9ball/start_helper

execute if score @s swPool__trigger matches 4110111 run function pool:classes/9ball/startsp_helper

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4110112 run function pool:classes/9ball/startsp_helper_botmode
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4110112 if entity @s[tag=swPool_whitelisted] run function pool:classes/9ball/startsp_helper_botmode

execute if score @s swPool__trigger matches 4110604 run function pool:classes/cn8ball/start

execute if score @s swPool__trigger matches 4110607 run function pool:classes/cn8ball/start_helper

execute if score @s swPool__trigger matches 4110610 run function pool:classes/cn8ball/startsp_helper

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4110611 run function pool:classes/cn8ball/startsp_helper_botmode
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4110611 if entity @s[tag=swPool_whitelisted] run function pool:classes/cn8ball/startsp_helper_botmode

execute if score @s swPool__trigger matches 4110803 run function pool:classes/cue/help_adjust

execute if score @s swPool__trigger matches 4110804 run function pool:classes/cue/help_speed

execute if score @s swPool__trigger matches 4110806 run function pool:classes/cue/map

execute if score @s swPool__trigger matches 4111002 run function pool:classes/lobby/beginmp9ball

execute if score @s swPool__trigger matches 4111003 run function pool:classes/lobby/beginmpcn8ball

execute if score @s swPool__trigger matches 4111004 run function pool:classes/lobby/beginmpsnooker

execute if score @s swPool__trigger matches 4111005 run function pool:classes/lobby/beginmpuk8ball

execute if score @s swPool__trigger matches 4111006 run function pool:classes/lobby/beginsp9ball

execute if score @s swPool__trigger matches 4111007 run function pool:classes/lobby/beginspcn8ball

execute if score @s swPool__trigger matches 4111008 run function pool:classes/lobby/beginspsnooker

execute if score @s swPool__trigger matches 4111009 run function pool:classes/lobby/beginspuk8ball

execute if score @s swPool__trigger matches 4111010 run function pool:classes/lobby/call

execute if score @s swPool__trigger matches 4111011 run function pool:classes/lobby/joinmp9ball

execute if score @s swPool__trigger matches 4111012 run function pool:classes/lobby/joinmpcn8ball

execute if score @s swPool__trigger matches 4111013 run function pool:classes/lobby/joinmpsnooker

execute if score @s swPool__trigger matches 4111014 run function pool:classes/lobby/joinmpuk8ball

execute if score @s swPool__trigger matches 4111015 run function pool:classes/lobby/leave

execute if score @s swPool__trigger matches 4111016 run function pool:classes/lobby/spec_off

execute if score @s swPool__trigger matches 4111017 run function pool:classes/lobby/spec_on

execute if score @s swPool__trigger matches 4111020 run function pool:classes/lobby/terminate_helper

execute if score @s swPool__trigger matches 4111212 run function pool:classes/master/undo

execute if score @s swPool__trigger matches 4111901 run function pool:classes/practice/_lobby

execute if score @s swPool__trigger matches 4111907 run function pool:classes/practice/start

execute if score @s swPool__trigger matches 4111909 run function pool:classes/practice/start_helper

execute if score @s swPool__trigger matches 4111912 run function pool:classes/practice/switch_helper

execute if score @s swPool__trigger matches 4112006 run function pool:classes/snooker/start

execute if score @s swPool__trigger matches 4112008 run function pool:classes/snooker/start_helper

execute if score @s swPool__trigger matches 4112009 run function pool:classes/snooker/startsp

execute if score @s swPool__trigger matches 4112011 run function pool:classes/snooker/startsp_helper

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4112201 run function pool:classes/table/check
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4112201 if entity @s[tag=swPool_whitelisted] run function pool:classes/table/check

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4112212 run function pool:classes/table/set_preview
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4112212 if entity @s[tag=swPool_whitelisted] run function pool:classes/table/set_preview

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4112213 run function pool:classes/table/start
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 4112213 if entity @s[tag=swPool_whitelisted] run function pool:classes/table/start

execute if score @s swPool__trigger matches 4112306 run function pool:classes/uk8ball/start

execute if score @s swPool__trigger matches 4112308 run function pool:classes/uk8ball/start_helper

execute if score @s swPool__trigger matches 4112309 run function pool:classes/uk8ball/startsp

execute if score @s swPool__trigger matches 4112311 run function pool:classes/uk8ball/startsp_helper

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 11351211 run function app:settings/pool/snooker/display/dialogue
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 11351211 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/snooker/display/dialogue

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 11351212 run function app:settings/pool/snooker/display/sidebar
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 11351212 if entity @s[tag=swPool_whitelisted] run function app:settings/pool/snooker/display/sidebar

execute if score @s swPool__trigger matches 41112186 run function pool:classes/master/9ball/respot_9_manual

execute if score @s swPool__trigger matches 41112211 run function pool:classes/master/practice/ballinhand

execute if score @s swPool__trigger matches 41112226 run function pool:classes/master/snooker/progression_norule_control

execute if score @s swPool__trigger matches 41112227 run function pool:classes/master/snooker/progression_norule_control_1205

execute if score @s swPool__trigger matches 41112228 run function pool:classes/master/snooker/progression_norule_refresh_score

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 41122151 run function pool:classes/table/helpers/chest_check
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 41122151 if entity @s[tag=swPool_whitelisted] run function pool:classes/table/helpers/chest_check

execute unless data storage minecraft:swpool whitelist if score @s swPool__trigger matches 41122156 run function pool:classes/table/helpers/chest_set_preview
execute if data storage minecraft:swpool whitelist if score @s swPool__trigger matches 41122156 if entity @s[tag=swPool_whitelisted] run function pool:classes/table/helpers/chest_set_preview

execute if score @s swPool__trigger matches 411081001 run function pool:classes/cue/points_v2/p-2000_-2000

execute if score @s swPool__trigger matches 411081002 run function pool:classes/cue/points_v2/p-2000_-4000

execute if score @s swPool__trigger matches 411081003 run function pool:classes/cue/points_v2/p-2000_-6000

execute if score @s swPool__trigger matches 411081004 run function pool:classes/cue/points_v2/p-2000_-8000

execute if score @s swPool__trigger matches 411081005 run function pool:classes/cue/points_v2/p-2000_0

execute if score @s swPool__trigger matches 411081006 run function pool:classes/cue/points_v2/p-2000_2000

execute if score @s swPool__trigger matches 411081007 run function pool:classes/cue/points_v2/p-2000_4000

execute if score @s swPool__trigger matches 411081008 run function pool:classes/cue/points_v2/p-2000_6000

execute if score @s swPool__trigger matches 411081009 run function pool:classes/cue/points_v2/p-2000_8000

execute if score @s swPool__trigger matches 411081010 run function pool:classes/cue/points_v2/p-4000_-2000

execute if score @s swPool__trigger matches 411081011 run function pool:classes/cue/points_v2/p-4000_-4000

execute if score @s swPool__trigger matches 411081012 run function pool:classes/cue/points_v2/p-4000_-6000

execute if score @s swPool__trigger matches 411081013 run function pool:classes/cue/points_v2/p-4000_-8000

execute if score @s swPool__trigger matches 411081014 run function pool:classes/cue/points_v2/p-4000_0

execute if score @s swPool__trigger matches 411081015 run function pool:classes/cue/points_v2/p-4000_2000

execute if score @s swPool__trigger matches 411081016 run function pool:classes/cue/points_v2/p-4000_4000

execute if score @s swPool__trigger matches 411081017 run function pool:classes/cue/points_v2/p-4000_6000

execute if score @s swPool__trigger matches 411081018 run function pool:classes/cue/points_v2/p-4000_8000

execute if score @s swPool__trigger matches 411081019 run function pool:classes/cue/points_v2/p-6000_-2000

execute if score @s swPool__trigger matches 411081020 run function pool:classes/cue/points_v2/p-6000_-4000

execute if score @s swPool__trigger matches 411081021 run function pool:classes/cue/points_v2/p-6000_-6000

execute if score @s swPool__trigger matches 411081022 run function pool:classes/cue/points_v2/p-6000_0

execute if score @s swPool__trigger matches 411081023 run function pool:classes/cue/points_v2/p-6000_2000

execute if score @s swPool__trigger matches 411081024 run function pool:classes/cue/points_v2/p-6000_4000

execute if score @s swPool__trigger matches 411081025 run function pool:classes/cue/points_v2/p-6000_6000

execute if score @s swPool__trigger matches 411081026 run function pool:classes/cue/points_v2/p-8000_-2000

execute if score @s swPool__trigger matches 411081027 run function pool:classes/cue/points_v2/p-8000_-4000

execute if score @s swPool__trigger matches 411081028 run function pool:classes/cue/points_v2/p-8000_0

execute if score @s swPool__trigger matches 411081029 run function pool:classes/cue/points_v2/p-8000_2000

execute if score @s swPool__trigger matches 411081030 run function pool:classes/cue/points_v2/p-8000_4000

execute if score @s swPool__trigger matches 411081031 run function pool:classes/cue/points_v2/p0_-2000

execute if score @s swPool__trigger matches 411081032 run function pool:classes/cue/points_v2/p0_-4000

execute if score @s swPool__trigger matches 411081033 run function pool:classes/cue/points_v2/p0_-6000

execute if score @s swPool__trigger matches 411081034 run function pool:classes/cue/points_v2/p0_-8000

execute if score @s swPool__trigger matches 411081035 run function pool:classes/cue/points_v2/p0_0

execute if score @s swPool__trigger matches 411081036 run function pool:classes/cue/points_v2/p0_2000

execute if score @s swPool__trigger matches 411081037 run function pool:classes/cue/points_v2/p0_4000

execute if score @s swPool__trigger matches 411081038 run function pool:classes/cue/points_v2/p0_6000

execute if score @s swPool__trigger matches 411081039 run function pool:classes/cue/points_v2/p0_8000

execute if score @s swPool__trigger matches 411081040 run function pool:classes/cue/points_v2/p2000_-2000

execute if score @s swPool__trigger matches 411081041 run function pool:classes/cue/points_v2/p2000_-4000

execute if score @s swPool__trigger matches 411081042 run function pool:classes/cue/points_v2/p2000_-6000

execute if score @s swPool__trigger matches 411081043 run function pool:classes/cue/points_v2/p2000_-8000

execute if score @s swPool__trigger matches 411081044 run function pool:classes/cue/points_v2/p2000_0

execute if score @s swPool__trigger matches 411081045 run function pool:classes/cue/points_v2/p2000_2000

execute if score @s swPool__trigger matches 411081046 run function pool:classes/cue/points_v2/p2000_4000

execute if score @s swPool__trigger matches 411081047 run function pool:classes/cue/points_v2/p2000_6000

execute if score @s swPool__trigger matches 411081048 run function pool:classes/cue/points_v2/p2000_8000

execute if score @s swPool__trigger matches 411081049 run function pool:classes/cue/points_v2/p4000_-2000

execute if score @s swPool__trigger matches 411081050 run function pool:classes/cue/points_v2/p4000_-4000

execute if score @s swPool__trigger matches 411081051 run function pool:classes/cue/points_v2/p4000_-6000

execute if score @s swPool__trigger matches 411081052 run function pool:classes/cue/points_v2/p4000_-8000

execute if score @s swPool__trigger matches 411081053 run function pool:classes/cue/points_v2/p4000_0

execute if score @s swPool__trigger matches 411081054 run function pool:classes/cue/points_v2/p4000_2000

execute if score @s swPool__trigger matches 411081055 run function pool:classes/cue/points_v2/p4000_4000

execute if score @s swPool__trigger matches 411081056 run function pool:classes/cue/points_v2/p4000_6000

execute if score @s swPool__trigger matches 411081057 run function pool:classes/cue/points_v2/p4000_8000

execute if score @s swPool__trigger matches 411081058 run function pool:classes/cue/points_v2/p6000_-2000

execute if score @s swPool__trigger matches 411081059 run function pool:classes/cue/points_v2/p6000_-4000

execute if score @s swPool__trigger matches 411081060 run function pool:classes/cue/points_v2/p6000_-6000

execute if score @s swPool__trigger matches 411081061 run function pool:classes/cue/points_v2/p6000_0

execute if score @s swPool__trigger matches 411081062 run function pool:classes/cue/points_v2/p6000_2000

execute if score @s swPool__trigger matches 411081063 run function pool:classes/cue/points_v2/p6000_4000

execute if score @s swPool__trigger matches 411081064 run function pool:classes/cue/points_v2/p6000_6000

execute if score @s swPool__trigger matches 411081065 run function pool:classes/cue/points_v2/p8000_-2000

execute if score @s swPool__trigger matches 411081066 run function pool:classes/cue/points_v2/p8000_-4000

execute if score @s swPool__trigger matches 411081067 run function pool:classes/cue/points_v2/p8000_0

execute if score @s swPool__trigger matches 411081068 run function pool:classes/cue/points_v2/p8000_2000

execute if score @s swPool__trigger matches 411081069 run function pool:classes/cue/points_v2/p8000_4000

execute if score @s swPool__trigger matches 411081070 run function pool:classes/cue/points_v2/x_add_200

execute if score @s swPool__trigger matches 411081071 run function pool:classes/cue/points_v2/x_add_400

execute if score @s swPool__trigger matches 411081072 run function pool:classes/cue/points_v2/x_remove_200

execute if score @s swPool__trigger matches 411081073 run function pool:classes/cue/points_v2/x_remove_400

execute if score @s swPool__trigger matches 411081074 run function pool:classes/cue/points_v2/y_add_200

execute if score @s swPool__trigger matches 411081075 run function pool:classes/cue/points_v2/y_add_400

execute if score @s swPool__trigger matches 411081076 run function pool:classes/cue/points_v2/y_remove_200

execute if score @s swPool__trigger matches 411081077 run function pool:classes/cue/points_v2/y_remove_400

execute if score @s swPool__trigger matches 411081101 run function pool:classes/cue/speed/cancel

execute if score @s swPool__trigger matches 411081103 run function pool:classes/cue/speed/pl_000

execute if score @s swPool__trigger matches 411081104 run function pool:classes/cue/speed/pl_010

execute if score @s swPool__trigger matches 411081105 run function pool:classes/cue/speed/pl_020

execute if score @s swPool__trigger matches 411081106 run function pool:classes/cue/speed/pl_030

execute if score @s swPool__trigger matches 411081107 run function pool:classes/cue/speed/pl_040

execute if score @s swPool__trigger matches 411081108 run function pool:classes/cue/speed/pl_050

execute if score @s swPool__trigger matches 411081109 run function pool:classes/cue/speed/pl_060

execute if score @s swPool__trigger matches 411081110 run function pool:classes/cue/speed/pl_070

execute if score @s swPool__trigger matches 411081111 run function pool:classes/cue/speed/pl_080

execute if score @s swPool__trigger matches 411081112 run function pool:classes/cue/speed/pl_090

execute if score @s swPool__trigger matches 411081113 run function pool:classes/cue/speed/pl_100

execute if score @s swPool__trigger matches 411081114 run function pool:classes/cue/speed/ps_001

execute if score @s swPool__trigger matches 411081115 run function pool:classes/cue/speed/ps_002

execute if score @s swPool__trigger matches 411081116 run function pool:classes/cue/speed/ps_003

execute if score @s swPool__trigger matches 411081117 run function pool:classes/cue/speed/ps_004

execute if score @s swPool__trigger matches 411081118 run function pool:classes/cue/speed/ps_005

execute if score @s swPool__trigger matches 411081119 run function pool:classes/cue/speed/ps_006

execute if score @s swPool__trigger matches 411081120 run function pool:classes/cue/speed/ps_007

execute if score @s swPool__trigger matches 411081121 run function pool:classes/cue/speed/ps_008

execute if score @s swPool__trigger matches 411081122 run function pool:classes/cue/speed/ps_009

execute if score @s swPool__trigger matches 411191351 run function pool:classes/practice/balls/settings/snake_15

execute if score @s swPool__trigger matches 411191352 run function pool:classes/practice/balls/settings/snake_3

execute if score @s swPool__trigger matches 411191353 run function pool:classes/practice/balls/settings/snake_7

execute if score @s swPool__trigger matches 411191354 run function pool:classes/practice/balls/settings/vsnake_15

execute if score @s swPool__trigger matches 411191355 run function pool:classes/practice/balls/settings/vsnake_3

execute if score @s swPool__trigger matches 411191356 run function pool:classes/practice/balls/settings/vsnake_7


scoreboard players reset @s swPool__trigger
