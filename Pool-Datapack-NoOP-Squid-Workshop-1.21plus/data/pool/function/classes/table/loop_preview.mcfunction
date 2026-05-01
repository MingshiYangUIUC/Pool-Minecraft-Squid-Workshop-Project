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

execute as @e[tag=swPool_placer] at @s run function pool:classes/table/loop_preview_check_air

#execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] at @e[tag=swPool_placer] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force
#execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] at @e[tag=swPool_placer] run function pool:classes/table/particle_preview

scoreboard players set @s swPool_var00 0
scoreboard players operation @s swPool_var00 -= @s swPool_var03

execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var01 = @s swPool_var00 at @e[tag=swPool_placer,tag=!swPool_inner_rim] positioned ~ ~-0.5 ~ run function pool:classes/table/particle_preview
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var01 = @s swPool_var00 at @e[tag=swPool_placer,tag=!swPool_inner_rim] positioned ~ ~ ~ run function pool:classes/table/particle_preview
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var01 = @s swPool_var03 at @e[tag=swPool_placer,tag=!swPool_inner_rim] positioned ~ ~-0.5 ~ run function pool:classes/table/particle_preview
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var01 = @s swPool_var03 at @e[tag=swPool_placer,tag=!swPool_inner_rim] positioned ~ ~ ~ run function pool:classes/table/particle_preview
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var01 = @s swPool_var00 at @e[tag=swPool_placer,tag=swPool_inner_rim] positioned ~ ~-0.5 ~ run function pool:classes/table/particle_preview_inner
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var01 = @s swPool_var00 at @e[tag=swPool_placer,tag=swPool_inner_rim] positioned ~ ~ ~ run function pool:classes/table/particle_preview_inner
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var01 = @s swPool_var03 at @e[tag=swPool_placer,tag=swPool_inner_rim] positioned ~ ~-0.5 ~ run function pool:classes/table/particle_preview_inner
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var01 = @s swPool_var03 at @e[tag=swPool_placer,tag=swPool_inner_rim] positioned ~ ~ ~ run function pool:classes/table/particle_preview_inner

scoreboard players set @s swPool_var00 0
scoreboard players operation @s swPool_var00 -= @s swPool_var04

execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var02 = @s swPool_var00 at @e[tag=swPool_placer,tag=!swPool_inner_rim] positioned ~ ~-0.5 ~ run function pool:classes/table/particle_preview
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var02 = @s swPool_var00 at @e[tag=swPool_placer,tag=!swPool_inner_rim] positioned ~ ~ ~ run function pool:classes/table/particle_preview
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var02 = @s swPool_var04 at @e[tag=swPool_placer,tag=!swPool_inner_rim] positioned ~ ~-0.5 ~ run function pool:classes/table/particle_preview
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var02 = @s swPool_var04 at @e[tag=swPool_placer,tag=!swPool_inner_rim] positioned ~ ~ ~ run function pool:classes/table/particle_preview
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var02 = @s swPool_var00 at @e[tag=swPool_placer,tag=swPool_inner_rim] positioned ~ ~-0.5 ~ run function pool:classes/table/particle_preview_inner
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var02 = @s swPool_var00 at @e[tag=swPool_placer,tag=swPool_inner_rim] positioned ~ ~ ~ run function pool:classes/table/particle_preview_inner
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var02 = @s swPool_var04 at @e[tag=swPool_placer,tag=swPool_inner_rim] positioned ~ ~-0.5 ~ run function pool:classes/table/particle_preview_inner
execute unless entity @s[scores={swPool_var01=0}] unless entity @s[scores={swPool_var02=0}] if score @s swPool_var02 = @s swPool_var04 at @e[tag=swPool_placer,tag=swPool_inner_rim] positioned ~ ~ ~ run function pool:classes/table/particle_preview_inner

execute if score @s swPool_var01 = @s swPool_var03 run tag @s add swPool_shift

scoreboard players add @s[tag=swPool_shift] swPool_var02 1
scoreboard players set @s[tag=swPool_shift] swPool_var01 0
scoreboard players operation @s[tag=swPool_shift] swPool_var01 -= @s swPool_var03

execute unless score @s[tag=!swPool_shift] swPool_var01 = @s swPool_var03 run scoreboard players add @s swPool_var01 1
tag @s remove swPool_shift

execute if score @s swPool_var01 <= @s swPool_var03 if score @s swPool_var02 <= @s swPool_var04 run function pool:classes/table/loop_preview