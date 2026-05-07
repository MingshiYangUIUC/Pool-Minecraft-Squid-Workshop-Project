scoreboard players set @s swPool_cstmp_10 70
scoreboard players set @s swPool_cstmp 0
scoreboard players operation @s swPool_cstmp += @s swPool_cstmp_10
scoreboard players operation @s swPool_cstmp += @s swPool_cstmp_1
execute if score @s swPool_cstmp matches 100.. run scoreboard players set @s swPool_cstmp 100
