# Dispatch pre-selection logic by ball radius

execute if score C_r swPool_C matches 1250.. at @s run function pool:classes/master/_helpers/pre_select_r1250
execute if score C_r swPool_C matches 1000..1249 at @s run function pool:classes/master/_helpers/pre_select_r1000
execute if score C_r swPool_C matches 750..999 at @s run function pool:classes/master/_helpers/pre_select_r750
execute if score C_r swPool_C matches 500..749 at @s run function pool:classes/master/_helpers/pre_select_r500
execute if score C_r swPool_C matches 250..499 at @s run function pool:classes/master/_helpers/pre_select_r250
execute if score C_r swPool_C matches ..249 at @s run function pool:classes/master/_helpers/pre_select_r000
