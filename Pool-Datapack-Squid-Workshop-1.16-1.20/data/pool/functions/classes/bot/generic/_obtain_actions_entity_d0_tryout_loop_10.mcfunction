
#tellraw @a[tag=swPool_debug] [{"text":"Looping force-spin, "},{"score":{"objective":"swMath_V","name":"#tryoutloop"}},{"text":" max: "},{"score":{"objective":"swMath_V","name":"#tryoutloopmax"}}]
# start a shooter
function pool:classes/bot/generic/_configure_shooter

# add force - spin choices to shooter
execute if score #tryoutloop swMath_V matches 0 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if score #tryoutloop swMath_V matches 0 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0
execute if score #tryoutloop swMath_V matches 1 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute if score #tryoutloop swMath_V matches 1 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0
execute if score #tryoutloop swMath_V matches 2 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_100
execute if score #tryoutloop swMath_V matches 2 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0
execute if score #tryoutloop swMath_V matches 3 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute if score #tryoutloop swMath_V matches 3 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_4000
execute if score #tryoutloop swMath_V matches 4 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute if score #tryoutloop swMath_V matches 4 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_-4000
execute if score #tryoutloop swMath_V matches 5 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if score #tryoutloop swMath_V matches 5 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_4000
execute if score #tryoutloop swMath_V matches 6 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if score #tryoutloop swMath_V matches 6 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_-4000
execute if score #tryoutloop swMath_V matches 7 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_030
execute if score #tryoutloop swMath_V matches 7 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0
execute if score #tryoutloop swMath_V matches 8 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if score #tryoutloop swMath_V matches 8 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p4000_0
execute if score #tryoutloop swMath_V matches 9 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if score #tryoutloop swMath_V matches 9 as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p-4000_0

# start shooting
function pool:classes/bot/generic/_configure_actions_entity_loop
