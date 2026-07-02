# force and spin set:
# f = 30,50,80
# spin = f=50,mid, high, low
scoreboard players set #bestshot swMath_V 0
scoreboard players set #bestshotscore swMath_V -99999
# tryout sample 1
#say 1

# start a shooter
function pool:classes/bot/generic/_configure_shooter

# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 1
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# tryout sample 2
#say 2

# start a shooter
function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 2
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# tryout sample 3
#say 3

# start a shooter
function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_100
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 3
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# tryout sample 4
#say 4

# start a shooter
function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_4000

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 4
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# tryout sample 5
#say 5

# start a shooter
function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_-4000

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 5
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# tryout sample 6
#say 1

# start a shooter
function pool:classes/bot/generic/_configure_shooter

# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_4000

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 6
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# tryout sample 7
#say 2

# start a shooter
function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_-4000

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 7
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# tryout sample 8
#say 3

# start a shooter
function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_030
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 8
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# tryout sample 9
#say 4

# start a shooter
function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p4000_0

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 9
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore



# tryout sample 10
#say 5

# start a shooter
function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p-4000_0

function pool:classes/bot/generic/_configure_actions_entity
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players set #bestshot swMath_V 10
execute if score @s swPool_shotScore > #bestshotscore swMath_V run scoreboard players operation #bestshotscore swMath_V = @s swPool_shotScore


# get best action out of 10

execute if score #bestshot swMath_V matches 1 run tag @e[tag=swPool_aim_obj_selected] add swPool_act1
execute if score #bestshot swMath_V matches 2 run tag @e[tag=swPool_aim_obj_selected] add swPool_act2
execute if score #bestshot swMath_V matches 3 run tag @e[tag=swPool_aim_obj_selected] add swPool_act3
execute if score #bestshot swMath_V matches 4 run tag @e[tag=swPool_aim_obj_selected] add swPool_act4
execute if score #bestshot swMath_V matches 5 run tag @e[tag=swPool_aim_obj_selected] add swPool_act5
execute if score #bestshot swMath_V matches 6 run tag @e[tag=swPool_aim_obj_selected] add swPool_act6
execute if score #bestshot swMath_V matches 7 run tag @e[tag=swPool_aim_obj_selected] add swPool_act7
execute if score #bestshot swMath_V matches 8 run tag @e[tag=swPool_aim_obj_selected] add swPool_act8
execute if score #bestshot swMath_V matches 9 run tag @e[tag=swPool_aim_obj_selected] add swPool_act9
execute if score #bestshot swMath_V matches 10 run tag @e[tag=swPool_aim_obj_selected] add swPool_act10

scoreboard players operation @s swPool_shotScore = #bestshotscore swMath_V

tellraw @a [{"text":"Best Act, "},{"score":{"objective":"swMath_V","name":"#bestshot"}}]
tellraw @a [{"text":"Best Score, "},{"score":{"objective":"swMath_V","name":"#bestshotscore"}}]
