# force and spin set:
# f = 30,50,80
# spin = f=50,mid, high, low
scoreboard players set #bestshot swMath_V 0
scoreboard players set #bestshotscore swMath_V -99999
# tryout sample 1
##say 1

# start a shooter
function pool:classes/bot/generic/_configure_shooter

# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 1
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore

execute if score #bestshot swMath_V matches 1 run tag @e[tag=swPool_aim_obj_selected] add swPool_act1

scoreboard players operation @s swPool_shotScore = #bestshotscore swMath_V

#tellraw @a[tag=swPool_debug] [{"text":"Best Act, "},{"score":{"objective":"swMath_V","name":"#bestshot"}}]
#tellraw @a[tag=swPool_debug] [{"text":"Best Score, "},{"score":{"objective":"swMath_V","name":"#bestshotscore"}}]
