# color-ball ball in hand control

clear @s carrot_on_a_stick{CustomModelData:102}
clear @s carrot_on_a_stick{CustomModelData:103}
clear @s carrot_on_a_stick{CustomModelData:104}
clear @s carrot_on_a_stick{CustomModelData:105}
clear @s carrot_on_a_stick{CustomModelData:106}
clear @s carrot_on_a_stick{CustomModelData:107}

tag @s remove swPool_ballinhand_obj

execute unless entity @e[type=armor_stand,tag=swPool_yellow,tag=swPool_pool] run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:102,display:{Name:"\"Yellow\""}}
execute unless entity @e[type=armor_stand,tag=swPool_green,tag=swPool_pool] run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:103,display:{Name:"\"Green\""}}
execute unless entity @e[type=armor_stand,tag=swPool_brown,tag=swPool_pool] run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:104,display:{Name:"\"Brown\""}}
execute unless entity @e[type=armor_stand,tag=swPool_blue,tag=swPool_pool] run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:105,display:{Name:"\"Blue\""}}
execute unless entity @e[type=armor_stand,tag=swPool_pink,tag=swPool_pool] run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:106,display:{Name:"\"Pink\""}}
execute unless entity @e[type=armor_stand,tag=swPool_black,tag=swPool_pool] run give @s carrot_on_a_stick{swPool_obj:1b,CustomModelData:107,display:{Name:"\"Black\""}}

tag @s add swPool_ballinhand_obj

tellraw @s[tag=swPool_spec,tag=swPool_EN] [{"text":"➇ Please wait until all balls have stopped moving.","color":"white"}]
tellraw @s[tag=swPool_spec,tag=swPool_CN] [{"text":"➇ 请在所有球停止运动后摆球。","color":"white"}]
