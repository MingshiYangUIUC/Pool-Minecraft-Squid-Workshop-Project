#execute unless entity @s[tag=swPool_resetcue] run function pool:classes/cue/reset
tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ --------","color":"white"}]
tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ --------","color":"white"}]

execute if entity @s[tag=swPool_snookermode] run scoreboard players set @s[scores={swPool_foul=..3}] swPool_foul 4

execute if entity @s[tag=swPool_snookermode] as @s[tag=swPool_pocketing] run function pool:classes/pocketing/snooker/replace
tag @s[tag=swPool_uk8ballmode] remove swPool_pocketing
tag @s[tag=swPool_cn8ballmode] remove swPool_pocketing
tag @s[tag=swPool_9ballmode] remove swPool_pocketing
tag @s[tag=swPool_practicemode] remove swPool_pocketing

execute if entity @a[tag=swPool_hitcue] as @s[tag=swPool_9ballmode,tag=!swPool_pocketing] unless entity @s[tag=swPool_endgame] run function pool:classes/master/9ball/progression
execute if entity @a[tag=swPool_hitcue] as @s[tag=swPool_cn8ballmode,tag=!swPool_pocketing] run function pool:classes/master/cn8ball/progression
execute if entity @a[tag=swPool_hitcue] as @s[tag=swPool_snookermode,tag=!swPool_pocketing] run function pool:classes/master/snooker/progression
execute if entity @a[tag=swPool_hitcue] as @s[tag=swPool_uk8ballmode,tag=!swPool_pocketing] run function pool:classes/master/uk8ball/progression
execute if entity @a[tag=swPool_hitcue] as @s[tag=swPool_practicemode,tag=!swPool_pocketing] run function pool:classes/master/practice/progression

tag @e[tag=swPool_a1] remove swPool_a1

tag @e[tag=swPool_colliding] remove swPool_colliding

tag @s add swPool_progressed
