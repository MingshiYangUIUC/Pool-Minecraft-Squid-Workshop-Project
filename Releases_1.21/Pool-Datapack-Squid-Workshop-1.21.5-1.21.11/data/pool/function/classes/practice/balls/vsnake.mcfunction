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

#tag @s remove swPool_snookermode
#tag @s remove swPool_practicemode
#tag @s add swPool_cn8ballmode
tag @s remove swPool_x
tag @s remove swPool_z

execute if score @s swPool_sizex >= @s swPool_sizez run scoreboard players operation @s swPool_dl = @s swPool_sizex
execute if score @s swPool_sizex >= @s swPool_sizez run scoreboard players operation @s swPool_ds = @s swPool_sizez
execute if score @s swPool_sizex < @s swPool_sizez run scoreboard players operation @s swPool_dl = @s swPool_sizez
execute if score @s swPool_sizex < @s swPool_sizez run scoreboard players operation @s swPool_ds = @s swPool_sizex
scoreboard players operation TABLE swPool_dl = @s swPool_dl
scoreboard players operation TABLE swPool_ds = @s swPool_ds

execute if score @s swPool_sizex >= @s swPool_sizez run tag @s add swPool_x
execute if score @s swPool_sizex < @s swPool_sizez run tag @s add swPool_z


# slightly adjust swPool_dl
scoreboard players set #mtp swMath_V 22
scoreboard players set #div swMath_V 20
scoreboard players operation @s swPool_ds *= #mtp swMath_V
scoreboard players operation @s swPool_ds /= #div swMath_V

### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 1.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 0
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 += @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 15.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 1
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 += @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 7.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 += @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 15.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 3
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 += @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 3.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 4
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 += @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 15.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 5
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 += @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 7.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 6
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 += @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 15.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 7
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 += @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new




## positive

### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 15.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 1
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 -= @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 7.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 -= @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 15.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 3
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 -= @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 3.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 4
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 -= @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 15.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 5
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 -= @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 7.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 6
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 -= @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


### BALL
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
execute if score #nsnake swMath_V matches 15.. run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_rand","swPool_new"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players set @s swPool_var05 8
scoreboard players operation @s swPool_var02 = @s swPool_ds
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var05 7
scoreboard players operation @s swPool_var02 *= @s swPool_var05
scoreboard players operation @s swPool_var01 -= @s swPool_var02
scoreboard players add @s swPool_var00 0

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_rand,tag=swPool_new,limit=1] remove swPool_new


########END of RANDOM


#clear

tag @s remove swPool_moved
scoreboard players set @s swPool_hittime 0
execute as @a store result score @s swPool_player run data get entity @s UUID[1]


function pool:classes/practice/balls/randomize