tag @e[tag=swPool_pooltable,limit=1] add swPool_pocketing
execute if entity @s[tag=swPool_red] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_nred 1
execute if entity @s[tag=swPool_red] unless entity @e[tag=swPool_pool,tag=swPool_red,distance=0.1..] run tag @e[tag=swPool_pooltable] add swPool_lastred
execute unless entity @s[tag=swPool_red] unless entity @s[tag=swPool_cue] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_ncolor 1

execute unless entity @e[tag=swPool_pool,tag=swPool_red] unless entity @s[tag=swPool_cue] if entity @e[tag=swPool_pooltable,limit=1,scores={swPool_firsthit=8}] run tag @e[tag=swPool_pooltable] add swPool_firstcolor

execute if entity @s[tag=swPool_red] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_var05 1
execute if entity @s[tag=swPool_yellow] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_var05 2
execute if entity @s[tag=swPool_green] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_var05 3
execute if entity @s[tag=swPool_brown] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_var05 4
execute if entity @s[tag=swPool_blue] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_var05 5
execute if entity @s[tag=swPool_pink] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_var05 6
execute if entity @s[tag=swPool_black] run scoreboard players add @e[tag=swPool_pooltable,limit=1] swPool_var05 7

execute if entity @s[scores={swPool_rank=2..7}] if score @s swPool_rank > @e[tag=swPool_pooltable,limit=1] swPool_foul run scoreboard players operation @e[tag=swPool_pooltable,limit=1] swPool_foul = @s swPool_rank

#playsound minecraft:block.stone.break ambient @a ~ ~ ~ 1 1
#playsound minecraft:block.barrel.close ambient @a ~ ~ ~ 1 1
playsound minecraft:custom.pool.pocket ambient @a ~ ~ ~ 1 1
#kill @s
function pool:classes/pocketing/animation/main