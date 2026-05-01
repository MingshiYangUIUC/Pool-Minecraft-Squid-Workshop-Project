#scoreboard players operation @s swPool_wy /= C_100 swPool_C
#scoreboard players operation @s swPool_wy *= C_99 swPool_C

scoreboard players remove @s[scores={swPool_wy=1000..}] swPool_wy 1000
scoreboard players add @s[scores={swPool_wy=..-1000}] swPool_wy 1000