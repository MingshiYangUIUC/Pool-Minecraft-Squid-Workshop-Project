# executor is the aim point

# create / log rotation to be set for cue ball, force of cue ball, and strike point of cue ball.
# execute the shot

function pool:classes/bot/generic/_configure_shooter
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_100
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

execute at @e[tag=swPool_cue,tag=swPool_pool,limit=1] run tp @e[tag=swPool_shooter,limit=1] ~ ~ ~ facing entity @s
scoreboard players set @e[tag=swPool_shooter,limit=1] swPool_cbld 0

scoreboard players operation @e[tag=swPool_shooter,limit=1] swPool_player = @s swPool_player

#tellraw @a [{"text":"player, "},{"score":{"objective":"swPool_player","name":"@s"}}]

scoreboard players set @e[tag=swPool_shooter,limit=1] swPool_brkp 200

execute as @e[tag=swPool_shooter,limit=1] at @s run function pool:classes/cue/shoot

# cleanup

kill @e[tag=swPool_shooter]

