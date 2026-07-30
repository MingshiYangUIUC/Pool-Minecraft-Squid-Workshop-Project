# Dispatch pre-selection logic by ball radius

execute if score C_r swPool_C matches 1250.. run function pool:classes/master/_helpers/pre_select_r1250
execute if score C_r swPool_C matches 1000..1249 run function pool:classes/master/_helpers/pre_select_r1000
execute if score C_r swPool_C matches 750..999 run function pool:classes/master/_helpers/pre_select_r750
execute if score C_r swPool_C matches 500..749 run function pool:classes/master/_helpers/pre_select_r500
execute if score C_r swPool_C matches 250..499 run function pool:classes/master/_helpers/pre_select_r250
execute if score C_r swPool_C matches ..249 run function pool:classes/master/_helpers/pre_select_r000
