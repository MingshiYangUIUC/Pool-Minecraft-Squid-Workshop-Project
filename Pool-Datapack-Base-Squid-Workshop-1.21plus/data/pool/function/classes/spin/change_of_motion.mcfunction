# update v and omega every tick after motion using acceleration

scoreboard players operation @s swPool_vex += @s swPool_ax
#scoreboard players operation @s swPool_vey += @s swPool_ay
scoreboard players operation @s swPool_vez += @s swPool_az

scoreboard players operation @s swPool_wx += @s swPool_alx
scoreboard players operation @s swPool_wy += @s swPool_aly
scoreboard players operation @s swPool_wz += @s swPool_alz

# synchronize with large-scaled velocity
scoreboard players operation @s swPool_vx = @s swPool_vex
scoreboard players operation @s swPool_vz = @s swPool_vez
scoreboard players operation @s swPool_vx *= C_500 swPool_C
scoreboard players operation @s swPool_vz *= C_500 swPool_C

# update actual speed magnitude
execute if score @s swPool_T <= @s swPool_T_roll run function pool:classes/physics/vcombine_ve

# update rolling acceleration and use v to compute omega during rolling
execute if score @s swPool_T = @s swPool_T_roll run function pool:classes/spin/getamagt_tilend
execute if score @s swPool_T > @s swPool_T_roll run scoreboard players operation @s swPool_v -= @s swPool_amag
execute if score @s swPool_T > @s swPool_T_roll if score @s swPool_T <= @s swPool_T_end run function pool:classes/spin/vtow

# wy decay
function pool:classes/spin/drag

# reset and stop the ball when time is out
execute if score @s swPool_T >= @s swPool_T_end run function pool:classes/spin/reset
