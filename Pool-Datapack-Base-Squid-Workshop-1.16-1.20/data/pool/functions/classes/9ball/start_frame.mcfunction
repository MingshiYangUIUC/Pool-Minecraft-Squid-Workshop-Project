function pool:classes/lobby/terminate_helper

kill @e[tag=swPool_pool]
kill @e[tag=swPool_pin]
kill @e[tag=swPool_temppin]

execute as 000c2be1-0001-414d-0000-000000000000 at @s positioned ~ ~ ~ run function pool:classes/9ball/balls

function pool:classes/9ball/randomize_number

tag 000c2be1-0001-414d-0000-000000000000 remove swPool_uk8ballmode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_cn8ballmode
tag 000c2be1-0001-414d-0000-000000000000 remove swPool_snookermode
tag 000c2be1-0001-414d-0000-000000000000 add swPool_practicemode

scoreboard players set #breakshot swPool_v 1

# go to practice mode
function pool:classes/practice/switch_helper

tag 000c2be1-0001-414d-0000-000000000000 add swPool_9ballmode
tag 000c2be1-0001-414d-0000-000000000000 add swPool_9ball_aibreak