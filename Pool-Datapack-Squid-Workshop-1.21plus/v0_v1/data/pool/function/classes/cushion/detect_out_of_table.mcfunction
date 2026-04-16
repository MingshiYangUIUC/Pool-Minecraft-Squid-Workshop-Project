#detect out of table bug
# record location
scoreboard players operation @s swPool_posx = @s swPool_tmpposx
scoreboard players operation @s swPool_posz = @s swPool_tmpposz

#store old swPool_posx,z
scoreboard players operation POSX swPool_posx = @s swPool_posx
scoreboard players operation POSZ swPool_posz = @s swPool_posz

scoreboard players operation @s swPool_posx -= TABLE swPool_posx
scoreboard players operation @s swPool_posz -= TABLE swPool_posz

scoreboard players operation #displace swPool_posx = @s swPool_posx
scoreboard players operation #displace swPool_posz = @s swPool_posz
execute if score #displace swPool_posx matches ..-1 run scoreboard players operation #displace swPool_posx *= #C_-1 swMath_C
execute if score #displace swPool_posz matches ..-1 run scoreboard players operation #displace swPool_posz *= #C_-1 swMath_C
# minus 5000 (0.5m) as rim width
scoreboard players remove #displace swPool_posx 2500
scoreboard players remove #displace swPool_posz 2500
#tellraw @a [{"text":"x, "},{"score":{"objective":"swPool_posx","name":"#displace"}},{"text":" xt, "},{"score":{"objective":"swPool_sizex","name":"TABLE"}}]
#tellraw @a [{"text":"z, "},{"score":{"objective":"swPool_posz","name":"#displace"}},{"text":" zt, "},{"score":{"objective":"swPool_sizez","name":"TABLE"}}]
scoreboard players set #outoftable swPool_var00 0
execute unless score #outoftable_scheduled swPool_var00 matches 1 unless score #displace swPool_posx < TABLE swPool_sizex unless score #displace swPool_posz < TABLE swPool_sizez run scoreboard players set #outoftable swPool_var00 1
execute if score #outoftable swPool_var00 matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_EN] [{"text":"[ERROR] Ball Left Table!","color":"dark_red"},{"text":" The current shot will be reverted in 3 seconds. Please try it again. If problem persists, you may contact me with a record.","color":"white"}]
execute if score #outoftable swPool_var00 matches 1 run tellraw @a[tag=swPool_spec,tag=swPool_CN] [{"text":"[错误] 球飞出了球桌！","color":"dark_red"},{"text":" 本次击球三秒后会被撤销，请再试一次。如果问题持续出现，可以记录下来告知作者。","color":"white"}]
execute if score #outoftable swPool_var00 matches 1 run scoreboard players set @e[tag=swPool_pool] swPool_v 0
execute if score #outoftable swPool_var00 matches 1 at @s run summon item_display ~ ~2 ,interpolation_duration:1,teleport_duration:2,transformation:{translation:[0.0f,0.73f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute if score #outoftable swPool_var00 matches 1 run schedule function pool:classes/master/undo_run 3s
execute if score #outoftable swPool_var00 matches 1 run scoreboard players set #outoftable_scheduled swPool_var00 1
