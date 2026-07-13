# map based on tip ball's perspective
# works for arbitrary rack spacing / ball radius

# clear temporary mapping tag
tag @e[tag=swPool_pool,type=armor_stand] remove swPool_rack_assigned

# cue ball
scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=swPool_cue,type=armor_stand] swPool_vx = #cuevoH swMath_V
scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=swPool_cue,type=armor_stand] swPool_vz = #cuevoV swMath_V

# object balls
execute positioned ^ ^ ^ run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #1voH swMath_V
execute positioned ^ ^ ^ run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #1voV swMath_V
execute positioned ^ ^ ^ run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned

execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #2voH swMath_V
execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #2voV swMath_V
execute positioned ^-1 ^ ^-100 run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned

execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #3voH swMath_V
execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #3voV swMath_V
execute positioned ^-1 ^ ^-100 run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned

execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #4voH swMath_V
execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #4voV swMath_V
execute positioned ^-1 ^ ^-100 run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned

execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #5voH swMath_V
execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #5voV swMath_V
execute positioned ^-1 ^ ^-100 run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned

execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #6voH swMath_V
execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #6voV swMath_V
execute positioned ^-1 ^ ^-100 run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned

execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #7voH swMath_V
execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #7voV swMath_V
execute positioned ^-1 ^ ^-100 run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned

execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #8voH swMath_V
execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #8voV swMath_V
execute positioned ^-1 ^ ^-100 run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned

execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vx = #9voH swMath_V
execute positioned ^-1 ^ ^-100 run scoreboard players operation @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] swPool_vz = #9voV swMath_V
execute positioned ^-1 ^ ^-100 run tag @e[limit=1,sort=nearest,tag=!swPool_fake,tag=swPool_pool,tag=!swPool_cue,tag=!swPool_rack_assigned,type=armor_stand] add swPool_rack_assigned


# clean temporary mapping tag
tag @e[tag=swPool_pool,type=armor_stand] remove swPool_rack_assigned