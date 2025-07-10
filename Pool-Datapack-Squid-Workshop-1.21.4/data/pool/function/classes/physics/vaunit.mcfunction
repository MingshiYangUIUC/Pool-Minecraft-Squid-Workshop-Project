# get unit vector of A
# return O's Vi,Vj,Vk
# 

#tellraw @a [{"text":" input, "},{"score":{"objective":"swPool_Vi","name":"A"}},{"text":" "},{"score":{"objective":"swPool_Vj","name":"A"}},{"text":" "},{"score":{"objective":"swPool_Vk","name":"A"}}]

######## OVERFLOW?



scoreboard players operation O swPool_Vi = A swPool_Vi
scoreboard players operation O swPool_Vj = A swPool_Vj
scoreboard players operation O swPool_Vk = A swPool_Vk

function pool:classes/physics/vamagnitude

#tellraw @a [{"text":" mag, "},{"score":{"objective":"swPool_Vmag","name":"O"}}]

scoreboard players operation O swPool_Vi *= C_10000 swPool_C
scoreboard players operation O swPool_Vj *= C_10000 swPool_C
scoreboard players operation O swPool_Vk *= C_10000 swPool_C

scoreboard players operation O swPool_Vi /= O swPool_Vmag
scoreboard players operation O swPool_Vj /= O swPool_Vmag
scoreboard players operation O swPool_Vk /= O swPool_Vmag


#tellraw @a [{"text":" output, "},{"score":{"objective":"swPool_Vi","name":"O"}},{"text":" "},{"score":{"objective":"swPool_Vj","name":"O"}},{"text":" "},{"score":{"objective":"swPool_Vk","name":"O"}}]