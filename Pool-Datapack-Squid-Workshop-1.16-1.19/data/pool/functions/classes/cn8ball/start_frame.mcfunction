kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]

execute as @e[tag=swPool_pooltable] at @s positioned ~ ~ ~ run function pool:classes/cn8ball/balls

function pool:classes/cn8ball/randomize_number

tag @e[tag=swPool_pooltable] remove swPool_uk8ballmode
tag @e[tag=swPool_pooltable] remove swPool_snookermode
tag @e[tag=swPool_pooltable] add swPool_practicemode

scoreboard players set V_addon swPool_v 40000000

# go to practice mode
function pool:classes/practice/switch