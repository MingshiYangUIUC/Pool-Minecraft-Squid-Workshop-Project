###########################   +
#P                       P#
#                         #
#                         #
#                         #	3 reds: 23750
#                         #	n reds: 43750
#                         #
#                         #
#                         #
#                         #v
#                         #a
#P                       P#r
#                         #0
#                         #0
#                         #
#                         #
#                         #
#            D            #
#           D D           #
#          DDDDD          #
#                         #
#                         #
#P                       P#
###########################
#          var01

execute if score @s swPool_sizex >= @s swPool_sizez run scoreboard players operation @s swPool_dl = @s swPool_sizex
execute if score @s swPool_sizex >= @s swPool_sizez run scoreboard players operation @s swPool_ds = @s swPool_sizez
execute if score @s swPool_sizex < @s swPool_sizez run scoreboard players operation @s swPool_dl = @s swPool_sizez
execute if score @s swPool_sizex < @s swPool_sizez run scoreboard players operation @s swPool_ds = @s swPool_sizex
scoreboard players operation TABLE swPool_dl = @s swPool_dl
scoreboard players operation TABLE swPool_ds = @s swPool_ds

execute if score @s swPool_sizex >= @s swPool_sizez run tag @s add swPool_x
execute if score @s swPool_sizex < @s swPool_sizez run tag @s add swPool_z


execute if score TABLE swPool_dl matches 33750.. run scoreboard players add @s swPool_dl 8660

# kill 9 if needed
kill @e[tag=swPool_09,tag=swPool_pool]

# #9 at location of #1 (spot location)

# helper entity (that can shift)
execute at @e[tag=swPool_spot,limit=1] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_spot_shift"],NoGravity:1,Small:1,Invisible:1}

# identify vacant location
execute if entity @s[tag=swPool_x] as @e[tag=swPool_spot_shift,limit=1] at @s if entity @e[tag=swPool_pool,distance=..0.25] run function pool:classes/master/9ball/move_-x
execute if entity @s[tag=swPool_z] as @e[tag=swPool_spot_shift,limit=1] at @s if entity @e[tag=swPool_pool,distance=..0.25] run function pool:classes/master/9ball/move_-z

# read the spot location
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @e[tag=swPool_spot_shift,limit=1] Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @e[tag=swPool_spot_shift,limit=1] Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @e[tag=swPool_spot_shift,limit=1] Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @e[tag=swPool_spot_shift,limit=1] Pos[0] 10000

# summon 9 ball
execute at @e[tag=swPool_spot_shift,limit=1] run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_09","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}

# assign score coordinates
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_09,tag=swPool_pool,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_09,tag=swPool_pool,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_09,tag=swPool_pool,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_09,tag=swPool_pool,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_09,tag=swPool_pool,limit=1] remove swPool_new

# reset place
scoreboard players set @s swPool_hittime 0

# kill helper entity
kill @e[tag=swPool_spot_shift]
