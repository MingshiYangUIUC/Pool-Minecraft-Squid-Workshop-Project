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

tag @s remove swPool_snookermode
tag @s remove swPool_practicemode
tag @s add swPool_uk8ballmode
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



#Black K
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_black","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_black,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_black,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_black,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_black,limit=1] swPool_var01 = @s swPool_var00

########BEGIN Red D
##1
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_red","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add 2500
scoreboard players set @s swPool_var02 -4500
scoreboard players set @s swPool_var03 0

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_red,tag=swPool_new,limit=1] remove swPool_new

##2
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_red","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add 2500
scoreboard players set @s swPool_var02 -2200
scoreboard players set @s swPool_var03 -1250

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_red,tag=swPool_new,limit=1] remove swPool_new

##3
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_red","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 0
scoreboard players set @s swPool_var03 2600

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_red,tag=swPool_new,limit=1] remove swPool_new

##4
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_red","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 2200
scoreboard players set @s swPool_var03 1300

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_red,tag=swPool_new,limit=1] remove swPool_new

##5
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_red","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 2250
scoreboard players set @s swPool_var03 -3900

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_red,tag=swPool_new,limit=1] remove swPool_new

##6
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_red","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 4500
scoreboard players set @s swPool_var03 5200

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_red,tag=swPool_new,limit=1] remove swPool_new

##7
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_red","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 4500
scoreboard players set @s swPool_var03 -2600

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_red,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_red,tag=swPool_new,limit=1] remove swPool_new


########BEGIN Yellow Y
##8
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_yellow","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 -2200
scoreboard players set @s swPool_var03 1300

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_yellow,tag=swPool_new,limit=1] remove swPool_new

##9
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_yellow","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 0
scoreboard players set @s swPool_var03 -2600

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_yellow,tag=swPool_new,limit=1] remove swPool_new

##10
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_yellow","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 2250
scoreboard players set @s swPool_var03 3900

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_yellow,tag=swPool_new,limit=1] remove swPool_new

##11
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_yellow","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 2250
scoreboard players set @s swPool_var03 -1300

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_yellow,tag=swPool_new,limit=1] remove swPool_new

##12
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_yellow","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 4500
scoreboard players set @s swPool_var03 2600

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_yellow,tag=swPool_new,limit=1] remove swPool_new

##13
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_yellow","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 4500
scoreboard players set @s swPool_var03 0

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_yellow,tag=swPool_new,limit=1] remove swPool_new

##14
execute store result score @s[tag=swPool_x] swPool_var00 run data get entity @s Pos[0] 10000
execute store result score @s[tag=swPool_x] swPool_var01 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var00 run data get entity @s Pos[2] 10000
execute store result score @s[tag=swPool_z] swPool_var01 run data get entity @s Pos[0] 10000
summon armor_stand ~ ~ ~ {Tags:["swPool_pool","swPool_yellow","swPool_new","swPool_bk"],NoGravity:1,Small:1,Invisible:1}
scoreboard players set @s swPool_var05 2
scoreboard players operation @s swPool_var02 = @s swPool_dl
scoreboard players operation @s swPool_var02 /= @s swPool_var05
scoreboard players set @s swPool_var03 0
scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03

#change individuals by changing swPool_var02 and swPool_var03 add/remove 2166/1250/2500
scoreboard players set @s swPool_var02 4500
scoreboard players set @s swPool_var03 -5200

scoreboard players operation @s swPool_var00 -= @s swPool_var02
scoreboard players operation @s swPool_var01 += @s swPool_var03
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var00
execute if entity @s[tag=swPool_x] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var00 = @s swPool_var01
execute if entity @s[tag=swPool_z] run scoreboard players operation @e[tag=swPool_yellow,tag=swPool_new,limit=1] swPool_var01 = @s swPool_var00
tag @e[tag=swPool_yellow,tag=swPool_new,limit=1] remove swPool_new




########END of RED and YELLOW


#clear

tag @s remove swPool_moved
scoreboard players set @s swPool_hittime 0
execute as @a store result score @s swPool_player run data get entity @s UUID[1]