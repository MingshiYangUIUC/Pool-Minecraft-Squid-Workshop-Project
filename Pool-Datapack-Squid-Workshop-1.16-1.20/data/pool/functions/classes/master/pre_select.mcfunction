# Dispatch pre-selection logic by ball radius and collision detection accuracy
# Higher C_cda uses more comprehensive pre-selection functions

# 1 lowest accuracy
execute if score C_cda swPool_C matches ..1 if score C_r swPool_C matches 1250.. at @s run function pool:classes/master/_helpers/pre_select_r1250
execute if score C_cda swPool_C matches ..1 if score C_r swPool_C matches 1000..1249 at @s run function pool:classes/master/_helpers/pre_select_r1000
execute if score C_cda swPool_C matches ..1 if score C_r swPool_C matches 750..999 at @s run function pool:classes/master/_helpers/pre_select_r750
execute if score C_cda swPool_C matches ..1 if score C_r swPool_C matches 500..749 at @s run function pool:classes/master/_helpers/pre_select_r500
execute if score C_cda swPool_C matches ..1 if score C_r swPool_C matches 250..499 at @s run function pool:classes/master/_helpers/pre_select_r250
execute if score C_cda swPool_C matches ..1 if score C_r swPool_C matches ..249 at @s run function pool:classes/master/_helpers/pre_select_r000

# 2
execute if score C_cda swPool_C matches 2 if score C_r swPool_C matches 1250.. at @s run function pool:classes/master/_helpers/pre_select_r1000
execute if score C_cda swPool_C matches 2 if score C_r swPool_C matches 1000..1249 at @s run function pool:classes/master/_helpers/pre_select_r750
execute if score C_cda swPool_C matches 2 if score C_r swPool_C matches 750..999 at @s run function pool:classes/master/_helpers/pre_select_r500
execute if score C_cda swPool_C matches 2 if score C_r swPool_C matches 500..749 at @s run function pool:classes/master/_helpers/pre_select_r250
execute if score C_cda swPool_C matches 2 if score C_r swPool_C matches 250..499 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 2 if score C_r swPool_C matches ..249 at @s run function pool:classes/master/_helpers/pre_select_r000

# 3
execute if score C_cda swPool_C matches 3 if score C_r swPool_C matches 1250.. at @s run function pool:classes/master/_helpers/pre_select_r750
execute if score C_cda swPool_C matches 3 if score C_r swPool_C matches 1000..1249 at @s run function pool:classes/master/_helpers/pre_select_r500
execute if score C_cda swPool_C matches 3 if score C_r swPool_C matches 750..999 at @s run function pool:classes/master/_helpers/pre_select_r250
execute if score C_cda swPool_C matches 3 if score C_r swPool_C matches 500..749 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 3 if score C_r swPool_C matches 250..499 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 3 if score C_r swPool_C matches ..249 at @s run function pool:classes/master/_helpers/pre_select_r000

# 4
execute if score C_cda swPool_C matches 4 if score C_r swPool_C matches 1250.. at @s run function pool:classes/master/_helpers/pre_select_r500
execute if score C_cda swPool_C matches 4 if score C_r swPool_C matches 1000..1249 at @s run function pool:classes/master/_helpers/pre_select_r250
execute if score C_cda swPool_C matches 4 if score C_r swPool_C matches 750..999 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 4 if score C_r swPool_C matches 500..749 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 4 if score C_r swPool_C matches 250..499 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 4 if score C_r swPool_C matches ..249 at @s run function pool:classes/master/_helpers/pre_select_r000

# 5
execute if score C_cda swPool_C matches 5 if score C_r swPool_C matches 1250.. at @s run function pool:classes/master/_helpers/pre_select_r250
execute if score C_cda swPool_C matches 5 if score C_r swPool_C matches 1000..1249 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 5 if score C_r swPool_C matches 750..999 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 5 if score C_r swPool_C matches 500..749 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 5 if score C_r swPool_C matches 250..499 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 5 if score C_r swPool_C matches ..249 at @s run function pool:classes/master/_helpers/pre_select_r000

# 6 highest accuracy
execute if score C_cda swPool_C matches 6.. if score C_r swPool_C matches 1250.. at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 6.. if score C_r swPool_C matches 1000..1249 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 6.. if score C_r swPool_C matches 750..999 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 6.. if score C_r swPool_C matches 500..749 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 6.. if score C_r swPool_C matches 250..499 at @s run function pool:classes/master/_helpers/pre_select_r000
execute if score C_cda swPool_C matches 6.. if score C_r swPool_C matches ..249 at @s run function pool:classes/master/_helpers/pre_select_r000
