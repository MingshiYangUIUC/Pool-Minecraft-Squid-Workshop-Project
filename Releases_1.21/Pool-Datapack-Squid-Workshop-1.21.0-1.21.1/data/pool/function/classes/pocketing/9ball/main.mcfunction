tag @e[tag=swPool_pooltable,limit=1] add swPool_pocketing

execute if entity @s[tag=swPool_cue] run tag @e[tag=swPool_pooltable,limit=1] add swPool_pktcue

# exclude cue ball from pocketed total score
execute if entity @s[tag=swPool_cue] run scoreboard players remove Pocketed_Total swPool_hidScore 1

# increament turn score and total score
scoreboard players add Pocketed_Total swPool_hidScore 1
scoreboard players add Pocketed_Turn swPool_hidScore 1

playsound minecraft:custom.pool.pocket ambient @a ~ ~ ~ 1 1
#kill @s
function pool:classes/pocketing/animation/main
