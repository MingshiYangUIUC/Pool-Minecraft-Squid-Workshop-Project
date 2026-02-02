#swPool_foul of cue ball: foulcue:
execute unless entity @e[tag=swPool_cue,tag=swPool_pool] run tag @s add swPool_foulcue
execute unless entity @e[tag=swPool_cue,tag=swPool_pool] unless entity @a[tag=swPool_poolplay,tag=!swPool_hitcue] run tag @a[tag=swPool_poolplay,tag=swPool_hitcue,limit=1] add swPool_ballinhand
execute unless entity @e[tag=swPool_cue,tag=swPool_pool] if entity @a[tag=swPool_poolplay,tag=!swPool_hitcue] run tag @a[tag=swPool_poolplay,tag=!swPool_hitcue,limit=1,sort=nearest] add swPool_ballinhand
execute if data storage minecraft:swpool cueballreddot run give @a[tag=swPool_ballinhand,tag=!swPool_given] carrot_on_a_stick{CustomModelData:99,display:{Name:"\"Cueball\""}}
execute unless data storage minecraft:swpool cueballreddot run give @a[tag=swPool_ballinhand,tag=!swPool_given] carrot_on_a_stick{CustomModelData:100,display:{Name:"\"Cueball\""}}
tag @a[tag=swPool_ballinhand,tag=!swPool_given] add swPool_given
#detect foulcolor
#swPool_count # of color and red pocketed as swPool_ncolor and swPool_nred score
execute if entity @s[scores={swPool_ncolor=2..}] run tag @s add swPool_foulcolor
execute if entity @s[scores={swPool_ncolor=2..}] run tag @s remove swPool_firstcolor
execute if entity @s[scores={swPool_ncolor=1..}] run tag @s[scores={swPool_nred=1..}] add swPool_foulcolor
#foulcolor if higher swPool_rank is potted first if no red is present
scoreboard players set @e[tag=swPool_yellow,tag=swPool_pool] swPool_rank 2
scoreboard players set @e[tag=swPool_green,tag=swPool_pool] swPool_rank 3
scoreboard players set @e[tag=swPool_brown,tag=swPool_pool] swPool_rank 4
scoreboard players set @e[tag=swPool_blue,tag=swPool_pool] swPool_rank 5
scoreboard players set @e[tag=swPool_pink,tag=swPool_pool] swPool_rank 6
scoreboard players set @e[tag=swPool_black,tag=swPool_pool] swPool_rank 7

execute unless entity @e[tag=swPool_red,tag=swPool_pool] unless entity @e[tag=swPool_black,tag=swPool_pool] unless entity @s[tag=swPool_firstcolor] if entity @e[scores={swPool_rank=2..6}] run tag @s add swPool_foulcolor
execute unless entity @e[tag=swPool_red,tag=swPool_pool] unless entity @e[tag=swPool_black,tag=swPool_pool] unless entity @s[tag=swPool_firstcolor] if entity @e[scores={swPool_rank=2..6}] run scoreboard players set @s[scores={swPool_foul=..6}] swPool_foul 7
execute unless entity @e[tag=swPool_red,tag=swPool_pool] unless entity @e[tag=swPool_pink,tag=swPool_pool] unless entity @s[tag=swPool_firstcolor] if entity @e[scores={swPool_rank=2..5}] run tag @s add swPool_foulcolor
execute unless entity @e[tag=swPool_red,tag=swPool_pool] unless entity @e[tag=swPool_pink,tag=swPool_pool] unless entity @s[tag=swPool_firstcolor] if entity @e[scores={swPool_rank=2..5}] run scoreboard players set @s[scores={swPool_foul=..5}] swPool_foul 6
execute unless entity @e[tag=swPool_red,tag=swPool_pool] unless entity @e[tag=swPool_blue,tag=swPool_pool] unless entity @s[tag=swPool_firstcolor] if entity @e[scores={swPool_rank=2..4}] run tag @s add swPool_foulcolor
execute unless entity @e[tag=swPool_red,tag=swPool_pool] unless entity @e[tag=swPool_blue,tag=swPool_pool] unless entity @s[tag=swPool_firstcolor] if entity @e[scores={swPool_rank=2..4}] run scoreboard players set @s[scores={swPool_foul=..4}] swPool_foul 5
execute unless entity @e[tag=swPool_red,tag=swPool_pool] unless entity @e[tag=swPool_brown,tag=swPool_pool] unless entity @s[tag=swPool_firstcolor] if entity @e[scores={swPool_rank=2..3}] run tag @s add swPool_foulcolor
execute unless entity @e[tag=swPool_red,tag=swPool_pool] unless entity @e[tag=swPool_green,tag=swPool_pool] unless entity @s[tag=swPool_firstcolor] if entity @e[scores={swPool_rank=2..2}] run tag @s add swPool_foulcolor
#scoreboard players set @s[tag=swPool_foulcolor,scores={swPool_foul=..3}] swPool_foul 4


#when red is present and foulcolor:
#new tag foulred is used
execute if entity @e[tag=swPool_pool,tag=swPool_black] if entity @e[tag=swPool_pool,tag=swPool_pink] if entity @e[tag=swPool_pool,tag=swPool_blue] if entity @e[tag=swPool_pool,tag=swPool_brown] if entity @e[tag=swPool_pool,tag=swPool_green] if entity @e[tag=swPool_pool,tag=swPool_yellow] if entity @a[tag=swPool_hitcue,scores={swPool_firsthit=1}] run tag @s add swPool_nfred
execute if entity @a[tag=swPool_hitcue,scores={swPool_firsthit=1}] run tag @s[tag=!swPool_nfred] add swPool_foulred
tag @s remove swPool_nfred


#if another color ball is pocketed if aiming to hit one, test if swPool_rank = swPool_firsthit, swPool_foul if yes
execute as @e[scores={swPool_rank=2..7}] if score @s swPool_rank = @a[tag=swPool_hitcue,limit=1] swPool_firsthit run tag @e[tag=swPool_pooltable,limit=1] add swPool_foulred

execute if entity @s[tag=swPool_foulred] unless entity @e[scores={swPool_rank=5},tag=swPool_pool] run scoreboard players set @s[scores={swPool_foul=..4}] swPool_foul 5
execute if entity @s[tag=swPool_foulred] unless entity @e[scores={swPool_rank=6},tag=swPool_pool] run scoreboard players set @s[scores={swPool_foul=..5}] swPool_foul 6
execute if entity @s[tag=swPool_foulred] unless entity @e[scores={swPool_rank=7},tag=swPool_pool] run scoreboard players set @s[scores={swPool_foul=..6}] swPool_foul 7

#reset swPool_rank
scoreboard players reset @e[tag=swPool_pool,tag=!swPool_red] swPool_rank



#### ANOTHER discription of general swPool_foul:
#when not hitting two types successively
#pool:classes/master/snooker/progression


#add fouled tag and inherit / test optput messages
tag @s[tag=swPool_foulcolor] add swPool_fouled
tag @s[tag=swPool_foulred] add swPool_fouled
tag @s[tag=swPool_foulcue] add swPool_fouled
#execute if entity @s[tag=swPool_foulcolor] run say foulcolor
#execute if entity @s[tag=swPool_foulred] run say foulred
#execute if entity @s[tag=swPool_foulcue] run say foulcue

#place balls

execute unless entity @e[tag=swPool_pool,tag=swPool_black] at @e[tag=swPool_pin,tag=swPool_black] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_new","swPool_black"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute unless entity @e[tag=swPool_pool,tag=swPool_pink] at @e[tag=swPool_pin,tag=swPool_pink] unless entity @e[tag=swPool_new] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_new","swPool_pink"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute unless entity @e[tag=swPool_pool,tag=swPool_blue] at @e[tag=swPool_pin,tag=swPool_blue] unless entity @e[tag=swPool_new] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_new","swPool_blue"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute unless entity @e[tag=swPool_pool,tag=swPool_brown] at @e[tag=swPool_pin,tag=swPool_brown] unless entity @e[tag=swPool_new] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_new","swPool_brown"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute unless entity @e[tag=swPool_pool,tag=swPool_green] at @e[tag=swPool_pin,tag=swPool_green] unless entity @e[tag=swPool_new] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_new","swPool_green"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute unless entity @e[tag=swPool_pool,tag=swPool_yellow] at @e[tag=swPool_pin,tag=swPool_yellow] unless entity @e[tag=swPool_new] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_new","swPool_yellow"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

execute unless entity @e[tag=swPool_pool,tag=swPool_red] unless entity @s[tag=swPool_foulcolor] unless entity @s[tag=swPool_firstcolor] unless entity @s[tag=swPool_foulcue] run tag @s add swPool_kill
execute if entity @s[tag=swPool_foulcue] unless entity @e[tag=swPool_foulcolor] run tag @s[scores={swPool_ncolor=0}] add swPool_kill

execute if entity @s[tag=swPool_kill] run kill @e[tag=swPool_new,limit=1]

tag @s remove swPool_kill

execute as @e[tag=swPool_new] at @s unless entity @e[tag=swPool_pool,tag=!swPool_new,distance=..0.25] run tag @s add swPool_sit

#execute unless entity @e[tag=swPool_pool,tag=swPool_yellow] at @e[tag=swPool_pin,tag=swPool_yellow] unless entity @e[tag=swPool_pool,distance=..0.25] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_new","swPool_yellow"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

#cue is different
#execute unless entity @e[tag=swPool_pool,tag=swPool_cue] at @e[tag=swPool_pin,tag=swPool_cue] unless entity @e[tag=swPool_pool,distance=..0.1] run summon item_display ~ ~ ~ {Marker:1b,Tags:["swPool_pool","swPool_new","swPool_cue"],NoGravity:1,Small:1,Invisible:1,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.71f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

execute as @e[tag=swPool_pin,tag=swPool_black] at @s unless entity @e[tag=swPool_pool,distance=..0.25] run tag @s add swPool_highest
execute unless entity @e[tag=swPool_highest] as @e[tag=swPool_pin,tag=swPool_pink] at @s unless entity @e[tag=swPool_pool,distance=..0.25] run tag @s add swPool_highest
execute unless entity @e[tag=swPool_highest] as @e[tag=swPool_pin,tag=swPool_blue] at @s unless entity @e[tag=swPool_pool,distance=..0.25] run tag @s add swPool_highest
execute unless entity @e[tag=swPool_highest] as @e[tag=swPool_pin,tag=swPool_brown] at @s unless entity @e[tag=swPool_pool,distance=..0.25] run tag @s add swPool_highest
execute unless entity @e[tag=swPool_highest] as @e[tag=swPool_pin,tag=swPool_green] at @s unless entity @e[tag=swPool_pool,distance=..0.25] run tag @s add swPool_highest
execute unless entity @e[tag=swPool_highest] as @e[tag=swPool_pin,tag=swPool_yellow] at @s unless entity @e[tag=swPool_pool,distance=..0.25] run tag @s add swPool_highest
execute unless entity @e[tag=swPool_highest] as @e[tag=swPool_pool,tag=swPool_black] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pintemp"],Duration:1}
#execute unless entity @e[tag=swPool_highest] as @e[tag=swPool_pool,tag=swPool_new] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["swPool_pintemp"],Duration:1}
execute as @e[tag=swPool_pintemp] at @s run tp @s ~ ~ ~ facing entity @e[tag=swPool_pin,tag=swPool_pink,limit=1]
execute as @e[tag=swPool_pintemp] at @s run tp @s @e[tag=swPool_pool,tag=swPool_new,limit=1]
execute as @e[tag=swPool_pintemp] at @s run tp @s ^ ^ ^-0.26
execute as @e[tag=swPool_pintemp] at @s if entity @e[tag=swPool_pool,distance=..0.25] run tp @s ^ ^ ^-0.26
execute as @e[tag=swPool_pintemp] at @s if entity @e[tag=swPool_pool,distance=..0.25] run say Cannot find place to place ball
execute as @e[tag=swPool_pintemp] at @s unless entity @e[tag=swPool_pool,distance=..0.25] run tag @s add swPool_highest

execute as @e[tag=swPool_highest] at @s run tp @e[tag=swPool_pool,tag=swPool_new,tag=!swPool_sit,tag=!swPool_cue] @s
tag @e[tag=swPool_pin] remove swPool_highest
kill @e[tag=swPool_pintemp]



execute if data storage minecraft:swpool cueballreddot run replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_cue] armor.head minecraft:acacia_button{CustomModelData:1}
execute unless data storage minecraft:swpool cueballreddot run replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_cue] armor.head minecraft:acacia_button{CustomModelData:36}
replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_red] armor.head minecraft:acacia_button{CustomModelData:2}
replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_yellow] armor.head minecraft:acacia_button{CustomModelData:3}
replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_green] armor.head minecraft:acacia_button{CustomModelData:4}
replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_brown] armor.head minecraft:acacia_button{CustomModelData:5}
replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_blue] armor.head minecraft:acacia_button{CustomModelData:6}
replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_pink] armor.head minecraft:acacia_button{CustomModelData:7}
replaceitem entity @e[tag=swPool_pool,tag=swPool_new,tag=swPool_black] armor.head minecraft:acacia_button{CustomModelData:8}
tag @e[tag=swPool_new] add swPool_placed
tag @e[tag=swPool_new] remove swPool_new
tag @e[tag=swPool_sit] remove swPool_new
scoreboard players set @e[tag=swPool_pool] swPool_D100 100000
scoreboard players set @e[tag=swPool_pool] swPool_DXX 99000

execute if entity @e[tag=swPool_pool,tag=swPool_black] if entity @e[tag=swPool_pool,tag=swPool_pink] if entity @e[tag=swPool_pool,tag=swPool_blue] if entity @e[tag=swPool_pool,tag=swPool_brown] if entity @e[tag=swPool_pool,tag=swPool_green] if entity @e[tag=swPool_pool,tag=swPool_yellow] run tag @s remove swPool_pocketing

execute unless entity @s[tag=swPool_foulcolor] unless entity @e[tag=swPool_pool,tag=swPool_red] run tag @s remove swPool_pocketing
scoreboard players remove @s[tag=swPool_pocketing] swPool_ncolor 1
tag @s[tag=swPool_pocketing] remove swPool_foulcue
execute if entity @s[tag=swPool_foulcolor] unless entity @e[tag=swPool_pool,tag=swPool_red] run tag @s[scores={swPool_ncolor=0}] remove swPool_pocketing



#reset stuff
tag @s[tag=!swPool_pocketing] remove swPool_foulcolor
tag @s[tag=!swPool_pocketing] remove swPool_foulred
tag @s[tag=!swPool_pocketing] remove swPool_foulcue

#set swPool_rank
scoreboard players set @e[tag=swPool_yellow,tag=swPool_pool] swPool_rank 2
scoreboard players set @e[tag=swPool_green,tag=swPool_pool] swPool_rank 3
scoreboard players set @e[tag=swPool_brown,tag=swPool_pool] swPool_rank 4
scoreboard players set @e[tag=swPool_blue,tag=swPool_pool] swPool_rank 5
scoreboard players set @e[tag=swPool_pink,tag=swPool_pool] swPool_rank 6
scoreboard players set @e[tag=swPool_black,tag=swPool_pool] swPool_rank 7



execute as @e[scores={swPool_rank=2}] run data merge entity @s {CustomName:"\"2 Pts\""}
execute as @e[scores={swPool_rank=3}] run data merge entity @s {CustomName:"\"3 Pts\""}
execute as @e[scores={swPool_rank=4}] run data merge entity @s {CustomName:"\"4 Pts\""}
execute as @e[scores={swPool_rank=5}] run data merge entity @s {CustomName:"\"5 Pts\""}
execute as @e[scores={swPool_rank=6}] run data merge entity @s {CustomName:"\"6 Pts\""}
execute as @e[scores={swPool_rank=7}] run data merge entity @s {CustomName:"\"7 Pts\""}
