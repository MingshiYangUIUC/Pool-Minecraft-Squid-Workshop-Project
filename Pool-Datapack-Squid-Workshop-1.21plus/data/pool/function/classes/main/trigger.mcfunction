execute if score @s swPool_trigger matches 1 run function app:unload/pool
execute if score @s swPool_trigger matches 2 run function pool:classes/main/load
execute if score @s swPool_trigger matches 3 run function pool:classes/lobby/call
execute if score @s swPool_trigger matches 4 run function app:help/pool/rulewindow
execute if score @s swPool_trigger matches 5 run function pool:classes/lobby/terminate_helper
execute if score @s swPool_trigger matches 6 run function pool:classes/practice/_lobby
execute if score @s swPool_trigger matches 7 run function pool:classes/practice/switch_helper
execute if score @s swPool_trigger matches 8 run function pool:classes/table/start
execute if score @s swPool_trigger matches 9 run function app:get/pool/cuestick_helper
execute if score @s swPool_trigger matches 10 run function app:settings/pool/equipment/stick_type
execute if score @s swPool_trigger matches 11 run function app:help/pool/settings/_help
execute if score @s swPool_trigger matches 12 run function app:help/pool/notes/release_note
execute if score @s swPool_trigger matches 13 run function app:settings/pool/rules/automatic_judge_on
execute if score @s swPool_trigger matches 14 run function app:settings/pool/rules/automatic_judge_off
execute if score @s swPool_trigger matches 15 run function app:settings/pool/rules/foul_reason_feedback
execute if score @s swPool_trigger matches 16 run function app:settings/pool/rules/foul_reason_hide
execute if score @s swPool_trigger matches 17 run function app:settings/pool/rules/rail_rule_enforce
execute if score @s swPool_trigger matches 18 run function app:settings/pool/rules/rail_rule_ignore
execute if score @s swPool_trigger matches 19 run function app:settings/pool/rules/singleplayer_role_switch
execute if score @s swPool_trigger matches 20 run function app:settings/pool/rules/singleplayer_role_keep
execute if score @s swPool_trigger matches 21 run function app:help/pool/about/rules
execute if score @s swPool_trigger matches 22 run function app:help/pool/commandwindow
execute if score @s swPool_trigger matches 23 run function app:settings/pool/aim/cue_deflection
execute if score @s swPool_trigger matches 24 run function app:settings/pool/aim/zoom
execute if score @s swPool_trigger matches 25 run function app:settings/pool/aim/nozoom
execute if score @s swPool_trigger matches 26 run function app:settings/pool/breakshot/breakpower
execute if score @s swPool_trigger matches 27 run function app:settings/pool/breakshot/default_break
execute if score @s swPool_trigger matches 28 run function app:settings/pool/breakshot/nn_break
execute if score @s swPool_trigger matches 29 run function app:settings/pool/breakshot/nn_complexity
execute if score @s swPool_trigger matches 30 run function app:settings/pool/cheating/allow
execute if score @s swPool_trigger matches 31 run function app:settings/pool/cheating/disallow
execute if score @s swPool_trigger matches 32 run function app:settings/pool/equipment/cloth_color
execute if score @s swPool_trigger matches 33 run function app:settings/pool/equipment/table_rim_type
execute if score @s swPool_trigger matches 34 run function app:settings/pool/friction/clear
execute if score @s swPool_trigger matches 35 run function app:settings/pool/friction/default
execute if score @s swPool_trigger matches 36 run function app:settings/pool/friction/impact
execute if score @s swPool_trigger matches 37 run function app:settings/pool/friction/rolling
execute if score @s swPool_trigger matches 38 run function app:settings/pool/friction/sliding
execute if score @s swPool_trigger matches 39 run function app:settings/pool/friction/striking
execute if score @s swPool_trigger matches 40 run function app:settings/pool/language/chinese_simplified
execute if score @s swPool_trigger matches 41 run function app:settings/pool/language/english
execute if score @s swPool_trigger matches 42 run function app:settings/pool/reload/cleanongoingsession
execute if score @s swPool_trigger matches 43 run function app:settings/pool/reload/keepongoingsession
execute if score @s swPool_trigger matches 44 run function app:settings/pool/snooker/display/dialogue
execute if score @s swPool_trigger matches 45 run function app:settings/pool/snooker/display/sidebar
execute if score @s swPool_trigger matches 46 run function app:settings/pool/version/1_16
execute if score @s swPool_trigger matches 47 run function app:settings/pool/version/1_17
execute if score @s swPool_trigger matches 48 run function app:settings/pool/version/1_18
execute if score @s swPool_trigger matches 49 run function app:settings/pool/version/1_19
execute if score @s swPool_trigger matches 50 run function app:settings/pool/version/1_20_4_andminus
execute if score @s swPool_trigger matches 51 run function app:settings/pool/version/1_20_5_andplus
execute if score @s swPool_trigger matches 52 run function app:settings/pool/version/reset
execute if score @s swPool_trigger matches 53 run function app:settings/pool/visuals/cueball_clean
execute if score @s swPool_trigger matches 54 run function app:settings/pool/visuals/cueball_red_dots
execute if score @s swPool_trigger matches 55 run function app:settings/pool/visuals/disable_ball_spinning
execute if score @s swPool_trigger matches 56 run function app:settings/pool/visuals/enable_ball_spinning
execute if score @s swPool_trigger matches 57 run function app:settings/pool/visuals/tp_duration
execute if score @s swPool_trigger matches 58 run function pool:classes/cue/map
execute if score @s swPool_trigger matches 59 run function pool:classes/9ball/start
execute if score @s swPool_trigger matches 60 run function pool:classes/cn8ball/start
execute if score @s swPool_trigger matches 61 run function pool:classes/cue/points_v2/p-4000_8000
execute if score @s swPool_trigger matches 62 run function pool:classes/cue/points_v2/p-2000_8000
execute if score @s swPool_trigger matches 63 run function pool:classes/cue/points_v2/p0_8000
execute if score @s swPool_trigger matches 64 run function pool:classes/cue/points_v2/p2000_8000
execute if score @s swPool_trigger matches 65 run function pool:classes/cue/points_v2/p4000_8000
execute if score @s swPool_trigger matches 66 run scoreboard players set pitch swPool_var00 800000
execute if score @s swPool_trigger matches 67 run scoreboard players set pitch swPool_var00 850000
execute if score @s swPool_trigger matches 68 run function pool:classes/cue/points_v2/p-6000_6000
execute if score @s swPool_trigger matches 69 run function pool:classes/cue/points_v2/p-4000_6000
execute if score @s swPool_trigger matches 70 run function pool:classes/cue/points_v2/p-2000_6000
execute if score @s swPool_trigger matches 71 run function pool:classes/cue/points_v2/p0_6000
execute if score @s swPool_trigger matches 72 run function pool:classes/cue/points_v2/p2000_6000
execute if score @s swPool_trigger matches 73 run function pool:classes/cue/points_v2/p4000_6000
execute if score @s swPool_trigger matches 74 run function pool:classes/cue/points_v2/p6000_6000
execute if score @s swPool_trigger matches 75 run scoreboard players set pitch swPool_var00 700000
execute if score @s swPool_trigger matches 76 run scoreboard players set pitch swPool_var00 750000
execute if score @s swPool_trigger matches 77 run function pool:classes/cue/points_v2/p-8000_4000
execute if score @s swPool_trigger matches 78 run function pool:classes/cue/points_v2/p-6000_4000
execute if score @s swPool_trigger matches 79 run function pool:classes/cue/points_v2/p-4000_4000
execute if score @s swPool_trigger matches 80 run function pool:classes/cue/points_v2/p-2000_4000
execute if score @s swPool_trigger matches 81 run function pool:classes/cue/points_v2/p0_4000
execute if score @s swPool_trigger matches 82 run function pool:classes/cue/points_v2/p2000_4000
execute if score @s swPool_trigger matches 83 run function pool:classes/cue/points_v2/p4000_4000
execute if score @s swPool_trigger matches 84 run function pool:classes/cue/points_v2/p6000_4000
execute if score @s swPool_trigger matches 85 run function pool:classes/cue/points_v2/p8000_4000
execute if score @s swPool_trigger matches 86 run scoreboard players set pitch swPool_var00 600000
execute if score @s swPool_trigger matches 87 run scoreboard players set pitch swPool_var00 650000
execute if score @s swPool_trigger matches 88 run function pool:classes/cue/points_v2/p-8000_2000
execute if score @s swPool_trigger matches 89 run function pool:classes/cue/points_v2/p-6000_2000
execute if score @s swPool_trigger matches 90 run function pool:classes/cue/points_v2/p-4000_2000
execute if score @s swPool_trigger matches 91 run function pool:classes/cue/points_v2/p-2000_2000
execute if score @s swPool_trigger matches 92 run function pool:classes/cue/points_v2/p0_2000
execute if score @s swPool_trigger matches 93 run function pool:classes/cue/points_v2/p2000_2000
execute if score @s swPool_trigger matches 94 run function pool:classes/cue/points_v2/p4000_2000
execute if score @s swPool_trigger matches 95 run function pool:classes/cue/points_v2/p6000_2000
execute if score @s swPool_trigger matches 96 run function pool:classes/cue/points_v2/p8000_2000
execute if score @s swPool_trigger matches 97 run scoreboard players set pitch swPool_var00 500000
execute if score @s swPool_trigger matches 98 run scoreboard players set pitch swPool_var00 550000
execute if score @s swPool_trigger matches 99 run function pool:classes/cue/points_v2/p-8000_0
execute if score @s swPool_trigger matches 100 run function pool:classes/cue/points_v2/p-6000_0
execute if score @s swPool_trigger matches 101 run function pool:classes/cue/points_v2/p-4000_0
execute if score @s swPool_trigger matches 102 run function pool:classes/cue/points_v2/p-2000_0
execute if score @s swPool_trigger matches 103 run function pool:classes/cue/points_v2/p0_0
execute if score @s swPool_trigger matches 104 run function pool:classes/cue/points_v2/p2000_0
execute if score @s swPool_trigger matches 105 run function pool:classes/cue/points_v2/p4000_0
execute if score @s swPool_trigger matches 106 run function pool:classes/cue/points_v2/p6000_0
execute if score @s swPool_trigger matches 107 run function pool:classes/cue/points_v2/p8000_0
execute if score @s swPool_trigger matches 108 run scoreboard players set pitch swPool_var00 400000
execute if score @s swPool_trigger matches 109 run scoreboard players set pitch swPool_var00 450000
execute if score @s swPool_trigger matches 110 run function pool:classes/cue/points_v2/p-8000_-2000
execute if score @s swPool_trigger matches 111 run function pool:classes/cue/points_v2/p-6000_-2000
execute if score @s swPool_trigger matches 112 run function pool:classes/cue/points_v2/p-4000_-2000
execute if score @s swPool_trigger matches 113 run function pool:classes/cue/points_v2/p-2000_-2000
execute if score @s swPool_trigger matches 114 run function pool:classes/cue/points_v2/p0_-2000
execute if score @s swPool_trigger matches 115 run function pool:classes/cue/points_v2/p2000_-2000
execute if score @s swPool_trigger matches 116 run function pool:classes/cue/points_v2/p4000_-2000
execute if score @s swPool_trigger matches 117 run function pool:classes/cue/points_v2/p6000_-2000
execute if score @s swPool_trigger matches 118 run function pool:classes/cue/points_v2/p8000_-2000
execute if score @s swPool_trigger matches 119 run scoreboard players set pitch swPool_var00 300000
execute if score @s swPool_trigger matches 120 run scoreboard players set pitch swPool_var00 350000
execute if score @s swPool_trigger matches 121 run function pool:classes/cue/points_v2/p-8000_-4000
execute if score @s swPool_trigger matches 122 run function pool:classes/cue/points_v2/p-6000_-4000
execute if score @s swPool_trigger matches 123 run function pool:classes/cue/points_v2/p-4000_-4000
execute if score @s swPool_trigger matches 124 run function pool:classes/cue/points_v2/p-2000_-4000
execute if score @s swPool_trigger matches 125 run function pool:classes/cue/points_v2/p0_-4000
execute if score @s swPool_trigger matches 126 run function pool:classes/cue/points_v2/p2000_-4000
execute if score @s swPool_trigger matches 127 run function pool:classes/cue/points_v2/p4000_-4000
execute if score @s swPool_trigger matches 128 run function pool:classes/cue/points_v2/p6000_-4000
execute if score @s swPool_trigger matches 129 run function pool:classes/cue/points_v2/p8000_-4000
execute if score @s swPool_trigger matches 130 run scoreboard players set pitch swPool_var00 200000
execute if score @s swPool_trigger matches 131 run scoreboard players set pitch swPool_var00 250000
execute if score @s swPool_trigger matches 132 run function pool:classes/cue/points_v2/p-6000_-6000
execute if score @s swPool_trigger matches 133 run function pool:classes/cue/points_v2/p-4000_-6000
execute if score @s swPool_trigger matches 134 run function pool:classes/cue/points_v2/p-2000_-6000
execute if score @s swPool_trigger matches 135 run function pool:classes/cue/points_v2/p0_-6000
execute if score @s swPool_trigger matches 136 run function pool:classes/cue/points_v2/p2000_-6000
execute if score @s swPool_trigger matches 137 run function pool:classes/cue/points_v2/p4000_-6000
execute if score @s swPool_trigger matches 138 run function pool:classes/cue/points_v2/p6000_-6000
execute if score @s swPool_trigger matches 139 run scoreboard players set pitch swPool_var00 100000
execute if score @s swPool_trigger matches 140 run scoreboard players set pitch swPool_var00 150000
execute if score @s swPool_trigger matches 141 run function pool:classes/cue/points_v2/p-4000_-8000
execute if score @s swPool_trigger matches 142 run function pool:classes/cue/points_v2/p-2000_-8000
execute if score @s swPool_trigger matches 143 run function pool:classes/cue/points_v2/p0_-8000
execute if score @s swPool_trigger matches 144 run function pool:classes/cue/points_v2/p2000_-8000
execute if score @s swPool_trigger matches 145 run function pool:classes/cue/points_v2/p4000_-8000
execute if score @s swPool_trigger matches 146 run scoreboard players set pitch swPool_var00 0
execute if score @s swPool_trigger matches 147 run scoreboard players set pitch swPool_var00 50000
execute if score @s swPool_trigger matches 148 run function pool:classes/cue/points_v2/x_remove_400
execute if score @s swPool_trigger matches 149 run function pool:classes/cue/points_v2/x_remove_200
execute if score @s swPool_trigger matches 150 run function pool:classes/cue/points_v2/x_add_200
execute if score @s swPool_trigger matches 151 run function pool:classes/cue/points_v2/x_add_400
execute if score @s swPool_trigger matches 152 run function pool:classes/cue/help_adjust
execute if score @s swPool_trigger matches 153 run function pool:classes/cue/points_v2/y_remove_400
execute if score @s swPool_trigger matches 154 run function pool:classes/cue/points_v2/y_remove_200
execute if score @s swPool_trigger matches 155 run function pool:classes/cue/points_v2/y_add_200
execute if score @s swPool_trigger matches 156 run function pool:classes/cue/points_v2/y_add_400
execute if score @s swPool_trigger matches 157 run function pool:classes/9ball/start_helper
execute if score @s swPool_trigger matches 158 run function pool:classes/lobby/joinmp9ball
execute if score @s swPool_trigger matches 159 run function pool:classes/cn8ball/start_helper
execute if score @s swPool_trigger matches 160 run function pool:classes/lobby/joinmpcn8ball
execute if score @s swPool_trigger matches 161 run function pool:classes/snooker/start_helper
execute if score @s swPool_trigger matches 162 run function pool:classes/lobby/joinmpsnooker
execute if score @s swPool_trigger matches 163 run function pool:classes/uk8ball/start_helper
execute if score @s swPool_trigger matches 164 run function pool:classes/lobby/joinmpuk8ball
execute if score @s swPool_trigger matches 165 run function pool:classes/lobby/beginmp9ball
execute if score @s swPool_trigger matches 166 run function pool:classes/9ball/startsp_helper
execute if score @s swPool_trigger matches 167 run function pool:classes/lobby/beginmpcn8ball
execute if score @s swPool_trigger matches 168 run function pool:classes/cn8ball/startsp_helper
execute if score @s swPool_trigger matches 169 run function pool:classes/lobby/beginmpsnooker
execute if score @s swPool_trigger matches 170 run function pool:classes/snooker/startsp_helper
execute if score @s swPool_trigger matches 171 run function pool:classes/lobby/beginmpuk8ball
execute if score @s swPool_trigger matches 172 run function pool:classes/uk8ball/startsp_helper
execute if score @s swPool_trigger matches 173 run function pool:classes/lobby/beginspsnooker
execute if score @s swPool_trigger matches 174 run function pool:classes/lobby/beginspuk8ball
execute if score @s swPool_trigger matches 175 run function pool:classes/lobby/beginspcn8ball
execute if score @s swPool_trigger matches 176 run function pool:classes/lobby/beginsp9ball
execute if score @s swPool_trigger matches 177 run tag @s add swPool_spec
execute if score @s swPool_trigger matches 178 run tag @s remove swPool_spec
execute if score @s swPool_trigger matches 179 run function pool:classes/lobby/leave
execute if score @s swPool_trigger matches 180 run function app:help/pool/about/games
execute if score @s swPool_trigger matches 181 run function pool:classes/master/undo
execute if score @s swPool_trigger matches 182 run function pool:classes/master/9ball/respot_9
execute if score @s swPool_trigger matches 183 run function pool:classes/master/practice/ballinhand
execute if score @s swPool_trigger matches 184 run function pool:classes/master/snooker/progression_norule_refresh_score
execute if score @s swPool_trigger matches 185 run function pool:classes/master/snooker/progression_norule_control
execute if score @s swPool_trigger matches 186 run function pool:classes/master/snooker/progression_norule_control_1205
execute if score @s swPool_trigger matches 187 run function pool:classes/practice/start_helper
execute if score @s swPool_trigger matches 188 run function pool:classes/practice/balls/settings/snake_3
execute if score @s swPool_trigger matches 189 run function pool:classes/practice/balls/settings/snake_7
execute if score @s swPool_trigger matches 190 run function pool:classes/practice/balls/settings/snake_15
execute if score @s swPool_trigger matches 191 run function pool:classes/practice/balls/settings/vsnake_3
execute if score @s swPool_trigger matches 192 run function pool:classes/practice/balls/settings/vsnake_7
execute if score @s swPool_trigger matches 193 run function pool:classes/practice/balls/settings/vsnake_15
execute if score @s swPool_trigger matches 194 run tell @s coming soon
execute if score @s swPool_trigger matches 195 run function pool:classes/snooker/start
execute if score @s swPool_trigger matches 196 run function pool:classes/practice/start
execute if score @s swPool_trigger matches 197 run function pool:classes/snooker/startsp
execute if score @s swPool_trigger matches 198 run function pool:classes/uk8ball/start
execute if score @s swPool_trigger matches 199 run function pool:classes/uk8ball/startsp
execute if score @s swPool_trigger matches 200 run function pool:classes/table/check
execute if score @s swPool_trigger matches 201 run scoreboard players set @s swPool_sizex 13750
execute if score @s swPool_trigger matches 202 run scoreboard players set @s swPool_sizex 23750
execute if score @s swPool_trigger matches 203 run scoreboard players set @s swPool_sizex 33750
execute if score @s swPool_trigger matches 204 run scoreboard players set @s swPool_sizex 43750
execute if score @s swPool_trigger matches 205 run scoreboard players set @s swPool_sizex 53750
execute if score @s swPool_trigger matches 206 run scoreboard players set @s swPool_sizex 63750
execute if score @s swPool_trigger matches 207 run scoreboard players reset @s swPool_sizex
execute if score @s swPool_trigger matches 208 run scoreboard players set @s swPool_sizez 13750
execute if score @s swPool_trigger matches 209 run scoreboard players set @s swPool_sizez 23750
execute if score @s swPool_trigger matches 210 run scoreboard players set @s swPool_sizez 33750
execute if score @s swPool_trigger matches 211 run scoreboard players set @s swPool_sizez 43750
execute if score @s swPool_trigger matches 212 run scoreboard players set @s swPool_sizez 53750
execute if score @s swPool_trigger matches 213 run scoreboard players set @s swPool_sizez 63750
execute if score @s swPool_trigger matches 214 run scoreboard players reset @s swPool_sizez
execute if score @s swPool_trigger matches 215 run function pool:classes/table/set_preview

scoreboard players reset @s swPool_trigger
