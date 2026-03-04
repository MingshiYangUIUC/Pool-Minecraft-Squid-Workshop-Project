# input is @s swPool_var00
# out is @s swPool_var00

scoreboard players set C_1800000 swPool_C 1800000
scoreboard players set C_3600000 swPool_C 3600000

scoreboard players operation sinin swPool_var00 = @s swPool_var00

scoreboard players operation sinin swPool_var00 %= C_3600000 swPool_C

#execute if score sinin swPool_var00 matches ..-1 run scoreboard players add sinin swPool_var00 36000000

execute if score sinin swPool_var00 matches ..1800000 run scoreboard players set sinscale swPool_var00 1
execute if score sinin swPool_var00 matches 1800000.. run scoreboard players set sinscale swPool_var00 -1
execute if score sinin swPool_var00 matches 1800000.. run scoreboard players remove sinin swPool_var00 1800000

scoreboard players operation sinin_ swPool_var00 = sinin swPool_var00
scoreboard players operation sinin_ swPool_var00 /= C_100 swPool_C

scoreboard players set sin_n swPool_var00 1800000
scoreboard players operation sin_n swPool_var00 -= sinin swPool_var00

scoreboard players operation sin_d swPool_var00 = sin_n swPool_var00

scoreboard players operation sin_n swPool_var00 *= C_2 swPool_C
scoreboard players operation sin_n swPool_var00 *= C_2 swPool_C

#tellraw @a {"score":{"objective":"swPool_var00","name":"sin_n"}}

scoreboard players operation sin_n swPool_var00 /= C_100 swPool_C

scoreboard players operation sin_n swPool_var00 *= sinin_ swPool_var00

#tellraw @a {"score":{"objective":"swPool_var00","name":"sin_n"}}

scoreboard players operation sin_d swPool_var00 /= C_100 swPool_C
scoreboard players operation sin_d swPool_var00 *= sinin_ swPool_var00
scoreboard players operation sin_d swPool_var00 *= C_-1 swPool_C



scoreboard players add sin_d swPool_var00 405000000

#tellraw @a {"score":{"objective":"swPool_var00","name":"sin_d"}}

scoreboard players operation sin_d swPool_var00 /= C_10000 swPool_C

scoreboard players operation sin_n swPool_var00 /= sin_d swPool_var00

scoreboard players operation sin_n swPool_var00 *= sinscale swPool_var00

#tellraw @a {"score":{"objective":"swPool_var00","name":"sin_n"}}

scoreboard players operation @s swPool_var00 = sin_n swPool_var00