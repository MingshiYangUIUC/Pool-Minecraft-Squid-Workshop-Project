execute store result score @s swPool_posx run data get entity @s Pos[0] 1
execute store result score @s swPool_posz run data get entity @s Pos[2] 1
scoreboard players operation @s swPool_posx += @s swPool_var01
scoreboard players operation @s swPool_posz += @s swPool_var02

execute as @e[tag=swPool_placer,limit=1,sort=nearest] at @s store result entity @s Pos[0] double 1 run scoreboard players get @e[tag=swPool_pooltable,limit=1,sort=nearest] swPool_posx
execute as @e[tag=swPool_placer,limit=1,sort=nearest] at @s store result entity @s Pos[2] double 1 run scoreboard players get @e[tag=swPool_pooltable,limit=1,sort=nearest] swPool_posz

execute if entity @s[scores={swPool_var01=1..}] as @e[tag=swPool_placer] at @s run tp @s ~-0.5 ~ ~
execute if entity @s[scores={swPool_var01=..-1}] as @e[tag=swPool_placer] at @s run tp @s ~0.5 ~ ~
execute if entity @s[scores={swPool_var02=1..}] as @e[tag=swPool_placer] at @s run tp @s ~ ~ ~-0.5
execute if entity @s[scores={swPool_var02=..-1}] as @e[tag=swPool_placer] at @s run tp @s ~ ~ ~0.5

#tellraw @a [{"text":"x "},{"score":{"objective":"swPool_var01","name":"@s"}},{"text":"."}]
#tellraw @a [{"text":"z "},{"score":{"objective":"swPool_var02","name":"@s"}},{"text":"."}]
#tellraw @a [{"text":"xm "},{"score":{"objective":"swPool_var03","name":"@s"}},{"text":"."}]
#tellraw @a [{"text":"zm "},{"score":{"objective":"swPool_var04","name":"@s"}},{"text":"."}]


execute unless data storage minecraft:swpool {version:[1205]} unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] at @e[tag=swPool_placer] run summon item_frame ~ ~ ~ {Tags:["swPool_new","swPool_cloth"],Invisible:1b,Facing:1b,Item:{id:"minecraft:acacia_button",Count:1b,tag:{CustomModelData:9}}}
execute if data storage minecraft:swpool {version:[1205]} unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] at @e[tag=swPool_placer] run summon item_frame ~ ~ ~ {Tags:["swPool_new","swPool_cloth"],Invisible:1b,Facing:1b,Item:{id:"minecraft:acacia_button",Count:1b}}

scoreboard players set @s swPool_var00 0
scoreboard players operation @s swPool_var00 -= @s swPool_var03
execute if score @s swPool_var01 = @s swPool_var00 run tag @e[tag=swPool_new] add swPool_nxside
execute if score @s swPool_var01 = @s swPool_var03 run tag @e[tag=swPool_new] add swPool_pxside
execute if score @s swPool_var01 = @s swPool_var00 if entity @s[tag=swPool_z,scores={swPool_var02=-1}] run tag @e[tag=swPool_new] add swPool_potl
execute if score @s swPool_var01 = @s swPool_var03 if entity @s[tag=swPool_z,scores={swPool_var02=-1}] run tag @e[tag=swPool_new] add swPool_potr
execute if score @s swPool_var01 = @s swPool_var00 if entity @s[tag=swPool_z,scores={swPool_var02=1}] run tag @e[tag=swPool_new] add swPool_potr
execute if score @s swPool_var01 = @s swPool_var03 if entity @s[tag=swPool_z,scores={swPool_var02=1}] run tag @e[tag=swPool_new] add swPool_potl
scoreboard players set @s swPool_var00 0
scoreboard players operation @s swPool_var00 -= @s swPool_var04
execute if score @s swPool_var02 = @s swPool_var00 run tag @e[tag=swPool_new] add swPool_nzside
execute if score @s swPool_var02 = @s swPool_var04 run tag @e[tag=swPool_new] add swPool_pzside
execute if score @s swPool_var02 = @s swPool_var00 if entity @s[tag=swPool_x,scores={swPool_var01=-1}] run tag @e[tag=swPool_new] add swPool_potr
execute if score @s swPool_var02 = @s swPool_var04 if entity @s[tag=swPool_x,scores={swPool_var01=-1}] run tag @e[tag=swPool_new] add swPool_potl
execute if score @s swPool_var02 = @s swPool_var00 if entity @s[tag=swPool_x,scores={swPool_var01=1}] run tag @e[tag=swPool_new] add swPool_potl
execute if score @s swPool_var02 = @s swPool_var04 if entity @s[tag=swPool_x,scores={swPool_var01=1}] run tag @e[tag=swPool_new] add swPool_potr
tag @e[tag=swPool_new] remove swPool_new



execute if score @s swPool_var01 = @s swPool_var03 run tag @s add swPool_shift

scoreboard players add @s[tag=swPool_shift] swPool_var02 1
scoreboard players set @s[tag=swPool_shift] swPool_var01 0
scoreboard players operation @s[tag=swPool_shift] swPool_var01 -= @s swPool_var03

execute unless score @s[tag=!swPool_shift] swPool_var01 = @s swPool_var03 run scoreboard players add @s swPool_var01 1
tag @s remove swPool_shift



execute if score @s swPool_var01 <= @s swPool_var03 if score @s swPool_var02 <= @s swPool_var04 run function pool:classes/table/loop