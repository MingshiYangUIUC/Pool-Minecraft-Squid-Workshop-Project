tag @s remove swPool_CN
tag @s add swPool_EN

tellraw @s [{"text":"➇ ","color":"gray"},{"color":"gray","italic":true,"text":"Language has been set to English"}]

function pool:classes/main/load

# add new player welcome (will not affect players already chosen language but will send welcome again to new players)
tag @s add swPool_welcomed