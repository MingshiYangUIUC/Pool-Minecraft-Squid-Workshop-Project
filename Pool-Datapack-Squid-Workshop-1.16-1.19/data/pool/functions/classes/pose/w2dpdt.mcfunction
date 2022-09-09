# use xyz omega and current pose to calculate increment of pose parameters

execute store result score pose0 swPool_pose run data get entity @s Pose.Head[0] 10000
execute store result score pose1 swPool_pose run data get entity @s Pose.Head[1] 10000
execute store result score pose2 swPool_pose run data get entity @s Pose.Head[2] 10000

scoreboard players operation vIn swMath_V = pose1 swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosp1 swMath_V = vOut swMath_V

#execute if score cosp1 swMath_V matches -1000..1000 run scoreboard players remove pose1 swPool_pose 900000
#execute if score cosp1 swMath_V matches -1000..1000 store result entity @s Pose.Head[1] float 0.0001 run scoreboard players get pose1 swPool_pose
#tellraw @a [{"text":"p0 "},{"score":{"objective":"swPool_pose","name": "pose0"}},{"text":" p1 "},{"score":{"objective":"swPool_pose","name": "pose1"}},{"text":" p2 "},{"score":{"objective":"swPool_pose","name": "pose2"}}]

# calculate ws, wt, and wc 

scoreboard players operation vIn swMath_V = @s swPool_wx
scoreboard players operation vIn swMath_V *= C_10000 swMath_C
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
scoreboard players operation dr swMath_V %= C_3600000 swMath_C

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
scoreboard players operation wt swMath_V /= C_10000 swPool_C

scoreboard players operation wc swMath_V = wp swMath_V
scoreboard players operation wc swMath_V *= cosdr swMath_V
scoreboard players operation wc swMath_V /= C_10000 swPool_C


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

tellraw @a [{"text":"cosp1 "},{"score":{"objective":"swMath_V","name": "cosp1"}}]

# calculate square of cos and sin used
scoreboard players operation cos2p2 swMath_V = cosp2 swMath_V
scoreboard players operation cos2p2 swMath_V *= cosp2 swMath_V
scoreboard players operation cos2p2 swMath_V /= C_10000 swMath_C

scoreboard players operation sin2p2 swMath_V = sinp2 swMath_V
scoreboard players operation sin2p2 swMath_V *= sinp2 swMath_V
scoreboard players operation sin2p2 swMath_V /= C_10000 swMath_C

# Calculate dp0 dp1 dp2
# calculate the common divider = cosp1
scoreboard players operation CD swMath_V = cosp1 swMath_V
#execute if score CD swMath_V matches -99..99 run scoreboard players operation CD swMath_V *= C_100 swMath_C
#tellraw @a [{"text":"CD "},{"score":{"objective":"swMath_V","name": "CD"}}]

# calculate dp0
scoreboard players operation dp0 swMath_V = cosp2 swMath_V
scoreboard players operation dp0 swMath_V *= wt swMath_V

scoreboard players operation dp02 swMath_V = sinp2 swMath_V
scoreboard players operation dp02 swMath_V *= ws swMath_V
scoreboard players operation dp0 swMath_V -= dp02 swMath_V

scoreboard players operation dp0 swMath_V /= CD swMath_V

# calculate dp1
scoreboard players set dp1 swMath_V 0
scoreboard players operation dp1 swMath_V -= cosp2 swMath_V
scoreboard players operation dp1 swMath_V *= ws swMath_V

scoreboard players operation dp12 swMath_V = sinp2 swMath_V
scoreboard players operation dp12 swMath_V *= wt swMath_V
scoreboard players operation dp1 swMath_V -= dp12 swMath_V

scoreboard players operation dp1 swMath_V /= CD swMath_V

# calculate dp2
scoreboard players operation dp2 swMath_V = dp0 swMath_V
scoreboard players operation dp2 swMath_V *= sinp1 swMath_V
scoreboard players operation dp2 swMath_V /= C_10000 swMath_C
scoreboard players operation dp2 swMath_V += wc swMath_V


# change pose

scoreboard players operation pose0 swPool_pose += dp0 swMath_V
scoreboard players operation pose1 swPool_pose += dp1 swMath_V
scoreboard players operation pose2 swPool_pose += dp2 swMath_V
data merge entity @s {Pose:{Head:[0.0001f,0.0f,0.0f]}}

execute if score pose0 swPool_pose matches 0 if score pose1 swPool_pose matches 0 if score pose2 swPool_pose matches 0 run scoreboard players add pose0 swPool_pose 2
execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players get pose0 swPool_pose
execute store result entity @s Pose.Head[1] float 0.0001 run scoreboard players get pose1 swPool_pose
execute store result entity @s Pose.Head[2] float 0.0001 run scoreboard players get pose2 swPool_pose

# print score for debug
#tellraw @a [{"text":"WX "},{"score":{"objective":"swPool_wx","name": "@s"}},{"text":" WY "},{"score":{"objective":"swPool_wy","name": "@s"}},{"text":" WZ "},{"score":{"objective":"swPool_wz","name": "@s"}}]
#tellraw @a [{"text":"WS "},{"score":{"objective":"swMath_V","name": "ws"}},{"text":" WT "},{"score":{"objective":"swMath_V","name": "wt"}},{"text":" WC "},{"score":{"objective":"swMath_V","name": "wc"}}]
#tellraw @a [{"text":"cosp1 "},{"score":{"objective":"swPool_pose","name": "cosp1"}},{"text":" tanp1 "},{"score":{"objective":"swPool_pose","name": "tanp1"}},{"text":" cosp2 "},{"score":{"objective":"swPool_pose","name": "cosp2"}},{"text":" tanp2 "},{"score":{"objective":"swPool_pose","name": "tanp2"}}]

#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swPool_pose","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swPool_pose","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swPool_pose","name": "dp2"}}]


#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swMath_V","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swMath_V","name": "dp2"}}]
#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swPool_pose","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swPool_pose","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swPool_pose","name": "dp2"}}]
