# executor is the aim point

# create / log rotation to be set for cue ball, force of cue ball, and strike point of cue ball.
# execute the shot

execute at @e[tag=swPool_cue,tag=swPool_pool,limit=1] run function pool:classes/bot/generic/_configure_shooter_anim
# add force - spin choices to shooter
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_100
execute as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

#execute at @e[tag=swPool_cue,tag=swPool_pool,limit=1] run tp @e[tag=swPool_shooter,limit=1] ~ ~ ~ facing entity @s
# scoreboard players set @e[tag=swPool_shooter,limit=1] swPool_cbld 0

# random sampling of uniform distribution 30 times to get a approximate normal distribution of mean 0 and std 10000
scoreboard players set #vIn swMath_V 30
function math:classes/core/random/randint_t
scoreboard players operation #cbld swMath_V = #vOut swMath_V
# multiply by angle std dev (set smaller than 1 value to 0)
execute if score C_as swPool_C matches ..1 run scoreboard players set #cbld swMath_V 0
execute if score C_as swPool_C matches 2.. run scoreboard players operation #cbld swMath_V *= C_as swPool_C
execute if score C_as swPool_C matches 2.. run scoreboard players operation #cbld swMath_V /= #C_10000 swMath_C
scoreboard players operation @e[tag=swPool_shooter,limit=1] swPool_cbld = #cbld swMath_V

scoreboard players operation @e[tag=swPool_shooter,limit=1] swPool_player = @s swPool_player

#tellraw @a[tag=swPool_debug] [{"text":"player, "},{"score":{"objective":"swPool_player","name":"@s"}}]

scoreboard players set @e[tag=swPool_shooter,limit=1] swPool_brkp 200
#execute as @e[tag=swPool_shooter,limit=1] at @s run function pool:classes/cue/shoot
schedule function pool:classes/bot/animation/shoot_helper 28t

# cleanup

#kill @e[tag=swPool_shooter] moved into __cleanup
schedule function pool:classes/bot/generic/__cleanup 46t
