# executor is the aim point

# stop simulation
function pool:classes/bot/generic/__clear_simulation_schedule

# restore fast-forward 
scoreboard players operation #fastfwd swMath_V = #fastfwd_tmp swMath_V
scoreboard players operation #fastfwd_maxiter swMath_V = #fastfwd_maxiter_tmp swMath_V
scoreboard players reset #fastfwd_bot swMath_V

# create / log rotation to be set for cue ball, force of cue ball, and strike point of cue ball.
# execute the shot
execute at @e[tag=swPool_cue,tag=swPool_pool,limit=1] run function pool:classes/bot/generic/_configure_shooter_anim
# add force - spin choices to shooter
execute if entity @s[tag=swPool_act1] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if entity @s[tag=swPool_act1] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

execute if entity @s[tag=swPool_act2] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute if entity @s[tag=swPool_act2] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

execute if entity @s[tag=swPool_act3] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_100
execute if entity @s[tag=swPool_act3] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

execute if entity @s[tag=swPool_act4] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute if entity @s[tag=swPool_act4] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_4000

execute if entity @s[tag=swPool_act5] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_080
execute if entity @s[tag=swPool_act5] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_-4000

execute if entity @s[tag=swPool_act6] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if entity @s[tag=swPool_act6] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_4000

execute if entity @s[tag=swPool_act7] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if entity @s[tag=swPool_act7] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_-4000

execute if entity @s[tag=swPool_act8] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_030
execute if entity @s[tag=swPool_act8] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p0_0

execute if entity @s[tag=swPool_act9] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if entity @s[tag=swPool_act9] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p4000_0

execute if entity @s[tag=swPool_act10] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/speed/pl_050
execute if entity @s[tag=swPool_act10] as @e[tag=swPool_shooter,limit=1] run function pool:classes/cue/points_v2/p-4000_0

#execute if entity @s[tag=swPool_act1] run say a1
#execute if entity @s[tag=swPool_act2] run say a2
#execute if entity @s[tag=swPool_act3] run say a3
#execute if entity @s[tag=swPool_act4] run say a4
#execute if entity @s[tag=swPool_act5] run say a5

#execute at @e[tag=swPool_cue,tag=swPool_pool,limit=1] run tp @e[tag=swPool_shooter,limit=1] ~ ~ ~ facing entity @s
# cue ball deflection angle in terms of 0.0001 degrees
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

tellraw @a[tag=swPool_debug] [{"text":"cbld "},{"score":{"objective":"swPool_cbld","name":"@e[tag=swPool_shooter,limit=1]"}}]

# random perturbation of force (F *= X%, X = uniform(100-C_fr, 100+C_fr))
scoreboard players set #cbfr swMath_V 100
execute if score C_fr swPool_C matches 2.. run function math:classes/core/random/randint_base

execute if score C_fr swPool_C matches 2.. run scoreboard players operation #cbfr_range swMath_V = C_fr swPool_C
execute if score C_fr swPool_C matches 2.. run scoreboard players operation #cbfr_range swMath_V *= #C_2 swMath_C
execute if score C_fr swPool_C matches 2.. run scoreboard players add #cbfr_range swMath_V 1
execute if score C_fr swPool_C matches 2.. run scoreboard players operation #vOut swMath_V %= #cbfr_range swMath_V
execute if score C_fr swPool_C matches 2.. run scoreboard players operation #cbfr swMath_V += #vOut swMath_V
execute if score C_fr swPool_C matches 2.. run scoreboard players operation #cbfr swMath_V -= C_fr swPool_C

scoreboard players operation @e[tag=swPool_shooter,limit=1] swPool_cstmp *= #cbfr swMath_V
scoreboard players operation @e[tag=swPool_shooter,limit=1] swPool_cstmp /= #C_100 swMath_C

execute as @e[tag=swPool_shooter,limit=1] if score @s swPool_cstmp matches 100.. run scoreboard players set @s swPool_cstmp 100
execute as @e[tag=swPool_shooter,limit=1] if score @s swPool_cstmp matches ..0 run scoreboard players set @s swPool_cstmp 1


scoreboard players operation @e[tag=swPool_shooter,limit=1] swPool_player = @s swPool_player

#tellraw @a[tag=swPool_debug] [{"text":"player, "},{"score":{"objective":"swPool_player","name":"@s"}}]


# delay this
#execute as @e[tag=swPool_shooter,limit=1] at @s run function pool:classes/cue/shoot
schedule function pool:classes/bot/animation/shoot_helper 28t

# delay this cleanup

#kill @e[tag=swPool_shooter] moved into __cleanup
schedule function pool:classes/bot/generic/__cleanup_delay 46t