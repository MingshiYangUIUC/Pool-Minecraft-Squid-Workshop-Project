# use xyz omega and current pose to calculate increment of pose parameters

execute store result score pose0 swPool_pose run data get entity @s Pose.Head[0] 10000
execute store result score pose1 swPool_pose run data get entity @s Pose.Head[1] 10000
execute store result score pose2 swPool_pose run data get entity @s Pose.Head[2] 10000


scoreboard players set maxRdt swMath_V 200000000
scoreboard players set DT swMath_V 100000


############ one iteration

scoreboard players operation vIn swMath_V = pose1 swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosp1 swMath_V = vOut swMath_V

# calculate ws, wt, and wc 

scoreboard players operation vIn swMath_V = @s swPool_wx
scoreboard players operation vIn swMath_V *= #C_10000 swMath_C
scoreboard players operation vIn swMath_V /= @s swPool_wz
function math:classes/core/trig/arctan_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg
scoreboard players operation dr swMath_V = vOut swMath_V
# solve quadrant
execute if score @s swPool_wz matches ..-1 if score @s swPool_wx matches ..-1 run scoreboard players remove dr swMath_V 1800000
execute if score @s swPool_wz matches ..-1 if score @s swPool_wx matches 0.. run scoreboard players add dr swMath_V 1800000
execute store result score rface swMath_V run data get entity @s Rotation[0] -10000
scoreboard players operation dr swMath_V -= rface swMath_V
scoreboard players operation dr swMath_V %= #C_3600000 swMath_C

# calculate wswtwc
scoreboard players operation ws swMath_V = @s swPool_wy

scoreboard players operation A swPool_Vi = @s swPool_wx
scoreboard players operation A swPool_Vj = @s swPool_wz
scoreboard players set A swPool_Vk 0
function pool:classes/physics/vamagnitude
scoreboard players operation wp swMath_V = O swPool_Vmag

scoreboard players operation vIn swMath_V = dr swMath_V
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/sin_rad
scoreboard players operation sindr swMath_V = vOut swMath_V

scoreboard players operation vIn swMath_V = dr swMath_V
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosdr swMath_V = vOut swMath_V

scoreboard players operation wt swMath_V = wp swMath_V
scoreboard players operation wt swMath_V *= sindr swMath_V
scoreboard players operation wt swMath_V /= #C_10000 swMath_C

scoreboard players operation wc swMath_V = wp swMath_V
scoreboard players operation wc swMath_V *= cosdr swMath_V
scoreboard players operation wc swMath_V /= #C_10000 swMath_C

# divide w by 20 to get radian per tick
#tellraw @a [{"text":"ws "},{"score":{"objective":"swMath_V","name": "ws"}}]
scoreboard players operation ws swMath_V /= C_20 swPool_C
scoreboard players operation wt swMath_V /= C_20 swPool_C
scoreboard players operation wc swMath_V /= C_20 swPool_C

# calculate sin(p1), sin(p2), cos(p1), cos(p2)
scoreboard players operation vIn swMath_V = pose1 swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/sin_rad
scoreboard players operation sinp1 swMath_V = vOut swMath_V

scoreboard players operation vIn swMath_V = pose2 swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/sin_rad
scoreboard players operation sinp2 swMath_V = vOut swMath_V

scoreboard players operation vIn swMath_V = pose1 swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosp1 swMath_V = vOut swMath_V

scoreboard players operation vIn swMath_V = pose2 swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosp2 swMath_V = vOut swMath_V

#tellraw @a [{"text":"cosp1 "},{"score":{"objective":"swMath_V","name": "cosp1"}}]

# calculate square of cos and sin used
scoreboard players operation cos2p2 swMath_V = cosp2 swMath_V
scoreboard players operation cos2p2 swMath_V *= cosp2 swMath_V
scoreboard players operation cos2p2 swMath_V /= #C_10000 swMath_C

scoreboard players operation sin2p2 swMath_V = sinp2 swMath_V
scoreboard players operation sin2p2 swMath_V *= sinp2 swMath_V
scoreboard players operation sin2p2 swMath_V /= #C_10000 swMath_C

# Calculate dp0 dp1 dp2
# calculate the common divider = cosp1
scoreboard players operation CD swMath_V = cosp1 swMath_V
scoreboard players operation CDabs swMath_V = CD swMath_V
execute if score CDabs swMath_V matches ..-1 run scoreboard players operation CDabs swMath_V *= #C_-1 swMath_C

#tellraw @a [{"text":" pose0 "},{"score":{"objective":"swPool_pose","name": "pose0"}},{"text":" pose1 "},{"score":{"objective":"swPool_pose","name": "pose1"}},{"text":" pose2 "},{"score":{"objective":"swPool_pose","name": "pose2"}}]
#tellraw @a [{"text":"CD "},{"score":{"objective":"swMath_V","name": "CD"}}]

# calculate dp0 = (wt*cos(p2) - ws*sin(p2)) / CD
scoreboard players operation dp0 swMath_V = cosp2 swMath_V
scoreboard players operation dp0 swMath_V *= wt swMath_V

scoreboard players operation dp02 swMath_V = sinp2 swMath_V
scoreboard players operation dp02 swMath_V *= ws swMath_V
scoreboard players operation dp0 swMath_V -= dp02 swMath_V

scoreboard players operation dp0 swMath_V /= CD swMath_V

# calculate dp1 = (-ws*cos(p2) - wt*sin(p2)) / CDabs
scoreboard players set dp1 swMath_V 0
scoreboard players operation dp1 swMath_V -= cosp2 swMath_V
scoreboard players operation dp1 swMath_V *= ws swMath_V

scoreboard players operation dp12 swMath_V = sinp2 swMath_V
scoreboard players operation dp12 swMath_V *= wt swMath_V
scoreboard players operation dp1 swMath_V -= dp12 swMath_V

#tellraw @a [{"text":"dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}}]
scoreboard players operation dp1 swMath_V /= CDabs swMath_V
#tellraw @a [{"text":"dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}}]

# calculate dp2 = dp0 * sin(p1) + wc
scoreboard players operation dp2 swMath_V = dp0 swMath_V
scoreboard players operation dp2 swMath_V *= sinp1 swMath_V
scoreboard players operation dp2 swMath_V /= #C_10000 swMath_C
scoreboard players operation dp2 swMath_V += wc swMath_V

#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swMath_V","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swMath_V","name": "dp2"}}]
# unit of dp now is radian/tick, change to degree/tick by *180/pi

# max w is about 1600000 (1500 RPM... certainly possible!) -> max dp 160 rad/s -> 8 rad/tick -> 
# dp is in unit of radian per second, *= 2.8648 to get degree per tick/ full iteration
# max degree per iteration = 6
# max radian per second ~ 2 -> per iteration ~ 0.1
# dt per iteration ~ 0.1/ max(dp) -> 0.0125
# max dp is 20000
# DT = 100000 !!!
# dt' = 100000 * 20000 / max(dp) 

# find max abs value of dp
scoreboard players set maxdp swMath_V 0
scoreboard players operation adp0 swMath_V = dp0 swMath_V
scoreboard players operation adp1 swMath_V = dp1 swMath_V
scoreboard players operation adp2 swMath_V = dp2 swMath_V
execute if score adp0 swMath_V matches ..-1 run scoreboard players operation adp0 swMath_V *= #C_-1 swMath_C
execute if score adp1 swMath_V matches ..-1 run scoreboard players operation adp1 swMath_V *= #C_-1 swMath_C
execute if score adp2 swMath_V matches ..-1 run scoreboard players operation adp2 swMath_V *= #C_-1 swMath_C

scoreboard players operation maxdp swMath_V > adp0 swMath_V
scoreboard players operation maxdp swMath_V > adp1 swMath_V
scoreboard players operation maxdp swMath_V > adp2 swMath_V
#tellraw @a [{"text":"maxdp "},{"score":{"objective":"swMath_V","name": "maxdp"}}]

scoreboard players operation dt swMath_V = maxRdt swMath_V
scoreboard players operation dt swMath_V /= maxdp swMath_V

execute if score dt swMath_V matches ..100 run scoreboard players set dt swMath_V 100
execute if score DT swMath_V < dt swMath_V run scoreboard players operation dt swMath_V = DT swMath_V
#tellraw @a [{"text":"dt' "},{"score":{"objective":"swMath_V","name": "dt"}}]

# change pose by dt increment, dp0/1/2 * dt
scoreboard players operation dp0 swMath_V *= dt swMath_V
scoreboard players operation dp1 swMath_V *= dt swMath_V
scoreboard players operation dp2 swMath_V *= dt swMath_V

scoreboard players operation dp0 swMath_V /= #C_10000 swMath_C
scoreboard players operation dp1 swMath_V /= #C_10000 swMath_C
scoreboard players operation dp2 swMath_V /= #C_10000 swMath_C

#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swMath_V","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swMath_V","name": "dp2"}}]

scoreboard players set r2d swPool_C 28648

scoreboard players operation dp0 swMath_V /= #C_100 swMath_C
scoreboard players operation dp1 swMath_V /= #C_100 swMath_C
scoreboard players operation dp2 swMath_V /= #C_100 swMath_C

scoreboard players operation dp0 swMath_V *= r2d swPool_C
scoreboard players operation dp1 swMath_V *= r2d swPool_C
scoreboard players operation dp2 swMath_V *= r2d swPool_C

scoreboard players operation dp0 swMath_V /= #C_100 swMath_C
scoreboard players operation dp1 swMath_V /= #C_100 swMath_C
scoreboard players operation dp2 swMath_V /= #C_100 swMath_C

#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swMath_V","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swMath_V","name": "dp2"}}]

scoreboard players operation pose0 swPool_pose += dp0 swMath_V
scoreboard players operation pose1 swPool_pose += dp1 swMath_V
scoreboard players operation pose2 swPool_pose += dp2 swMath_V

scoreboard players operation DT swMath_V -= dt swMath_V

# iterate again if DT is not zero
execute if score DT swMath_V matches 1.. run function pool:classes/pose/w2dpdt_loop

############# iteration ends

# set pose
data merge entity @s {Pose:{Head:[0.0001f,0.0f,0.0f]}}
execute if score pose0 swPool_pose matches 0 if score pose1 swPool_pose matches 0 if score pose2 swPool_pose matches 0 run scoreboard players add pose0 swPool_pose 2
execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players get pose0 swPool_pose
execute store result entity @s Pose.Head[1] float 0.0001 run scoreboard players get pose1 swPool_pose
execute store result entity @s Pose.Head[2] float 0.0001 run scoreboard players get pose2 swPool_pose

