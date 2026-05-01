tag @s remove swPool_EN
tag @s add swPool_CN

tellraw @s [{"text":"➇ ","color":"gray"},{"color":"gray","italic":true,"text":"语言设置为简体中文。"}]

function pool:classes/main/load

# add new player welcome (will not affect players already chosen language but will send welcome again to new players)
tag @s add swPool_welcomed