#Input: A's Vi,Vj,Vk; B's Vi,Vj,Vk
#Output: O's Vi,Vj,Vk

#show input
#tellraw @a [{"text":"crossinA "},{"score":{"objective":"swPool_Vi","name":"A"}},{"text":" "},{"score":{"objective":"swPool_Vj","name":"A"}},{"text":" "},{"score":{"objective":"swPool_Vk","name":"A"}}]
#tellraw @a [{"text":"crossinB "},{"score":{"objective":"swPool_Vi","name":"B"}},{"text":" "},{"score":{"objective":"swPool_Vj","name":"B"}},{"text":" "},{"score":{"objective":"swPool_Vk","name":"B"}}]


#Oi
scoreboard players operation ajbk swPool_var00 = A swPool_Vj
scoreboard players operation ajbk swPool_var00 *= B swPool_Vk

scoreboard players operation akbj swPool_var00 = A swPool_Vk
scoreboard players operation akbj swPool_var00 *= B swPool_Vj

scoreboard players operation O swPool_Vi = ajbk swPool_var00
scoreboard players operation O swPool_Vi -= akbj swPool_var00

#Oj
scoreboard players operation akbi swPool_var00 = A swPool_Vk
scoreboard players operation akbi swPool_var00 *= B swPool_Vi

scoreboard players operation aibk swPool_var00 = A swPool_Vi
scoreboard players operation aibk swPool_var00 *= B swPool_Vk

scoreboard players operation O swPool_Vj = akbi swPool_var00
scoreboard players operation O swPool_Vj -= aibk swPool_var00

#Ok
scoreboard players operation aibj swPool_var00 = A swPool_Vi
scoreboard players operation aibj swPool_var00 *= B swPool_Vj

scoreboard players operation ajbi swPool_var00 = A swPool_Vj
scoreboard players operation ajbi swPool_var00 *= B swPool_Vi

scoreboard players operation O swPool_Vk = aibj swPool_var00
scoreboard players operation O swPool_Vk -= ajbi swPool_var00


#show output
#tellraw @a [{"text":"crossout "},{"score":{"objective":"swPool_Vi","name":"O"}},{"text":" "},{"score":{"objective":"swPool_Vj","name":"O"}},{"text":" "},{"score":{"objective":"swPool_Vk","name":"O"}}]