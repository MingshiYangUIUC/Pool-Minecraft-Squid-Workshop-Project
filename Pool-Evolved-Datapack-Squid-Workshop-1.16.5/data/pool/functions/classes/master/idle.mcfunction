execute unless entity @s[tag=swPool_resetcue] run function pool:classes/cue/reset

execute if entity @s[tag=swPool_snookermode] run scoreboard players set @s[scores={swPool_foul=..3}] swPool_foul 4

execute if entity @s[tag=swPool_snookermode] as @s[tag=swPool_pocketing] run function pool:classes/pocketing/snooker/replace
tag @e[tag=swPool_uk8ballmode] remove swPool_pocketing
#execute if entity @s[tag=swPool_uk8ballmode] as @s[tag=swPool_pocketing] run function pool:classes/pocketing/uk8ball/replace

execute if entity @a[tag=swPool_hitcue] as @s[tag=swPool_snookermode,tag=!swPool_pocketing] run function pool:classes/master/snooker/progression
execute if entity @a[tag=swPool_hitcue] as @s[tag=swPool_uk8ballmode,tag=!swPool_pocketing] run function pool:classes/master/uk8ball/progression
execute if entity @a[tag=swPool_hitcue] as @s[tag=swPool_practicemode,tag=!swPool_pocketing] run function pool:classes/master/practice/progression

tag @e[tag=swPool_a1] remove swPool_a1

tag @e[tag=swPool_colliding] remove swPool_colliding