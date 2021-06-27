#when interrupted... stroke, collide, cushion
#say 1
function pool:classes/physics/vseparate_1

scoreboard players operation @s swPool_vex /= C_500 swPool_C
scoreboard players operation @s swPool_vez /= C_500 swPool_C

function pool:classes/spin/getcontactv
function pool:classes/spin/getatalpha_tilroll
execute if score @s swPool_T = @s swPool_T_roll run function pool:classes/spin/getamagt_tilend

#tellraw @a [{"text":"v, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vey","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vez","name":"@s"}}]

#tellraw @a [{"text":"v', "},{"score":{"objective":"swPool_vpx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vpy","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vpz","name":"@s"}}]

#tellraw @a [{"text":"acceleration, "},{"score":{"objective":"swPool_ax","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_ay","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_az","name":"@s"}}]

#tellraw @a [{"text":"alpha, "},{"score":{"objective":"swPool_alx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_aly","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_alz","name":"@s"}}]

#tellraw @a [{"text":"Time til roll, "},{"score":{"objective":"swPool_T_roll","name":"@s"}}]

