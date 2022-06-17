execute as @s[scores={swPool_sneaktime=1..}] at @s run function pool:classes/cue/aim

tag @s[nbt={OnGround:0b}] add swPool_offground

execute unless entity @s[nbt={OnGround:1b,SelectedItem:{id:"minecraft:bow",tag:{CustomModelData:1}}}] run scoreboard players reset @s swPool_shoot

execute if entity @s[tag=swPool_offground] as @e[type=arrow,distance=..2] if score @s swPool_player = @p[tag=swPool_offground] swPool_player run kill @s

execute if entity @e[tag=swPool_cue,limit=1] at @s if score @e[type=arrow,distance=..2,limit=1] swPool_player = @s swPool_player run function pool:classes/cue/shoot

tag @s remove swPool_offground

#kill @e[type=arrow,distance=..4,nbt={life:0s}]