# equivalent to old tp move refresh but there is no truncation
scoreboard players set #self swPool_vx 0
scoreboard players set #self swPool_vz 0

execute at @s run function pool:classes/master/read_tmppos
