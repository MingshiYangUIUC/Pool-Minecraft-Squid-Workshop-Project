# use xyz omega and current pose to calculate increment of pose parameters

execute store result score pose0 swPool_pose run data get entity @s Pose.Head[0] 10000
execute store result score pose1 swPool_pose run data get entity @s Pose.Head[1] 10000
execute store result score pose2 swPool_pose run data get entity @s Pose.Head[2] 10000

# get cos p1 and tan p1
scoreboard players operation vIn swMath_V = pose1 swPool_pose
function math:classes/core/util/deg2rad

function math:classes/core/util/swap
scoreboard players operation p1rad swPool_pose = vIn swMath_V

function math:classes/core/trig/cos_rad
scoreboard players operation cosp1 swPool_pose = vOut swMath_V

scoreboard players operation vIn swMath_V = p1rad swPool_pose
function math:classes/core/trig/tan_rad
scoreboard players operation tanp1 swPool_pose = vOut swMath_V



# get cos p2 and tan p2
scoreboard players operation vIn swMath_V = pose2 swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap

scoreboard players operation p2rad swPool_pose = vIn swMath_V

function math:classes/core/trig/cos_rad
scoreboard players operation cosp2 swPool_pose = vOut swMath_V

scoreboard players operation vIn swMath_V = p2rad swPool_pose
function math:classes/core/trig/tan_rad
scoreboard players operation tanp2 swPool_pose = vOut swMath_V


# calculate ws, wt, and wc 
# first calculate dr = atan(wx/wz)-rotation(-Rotation[0])
scoreboard players operation vIn swMath_V = @s swPool_wx
#tellraw @a [{"score":{"objective":"swMath_V","name": "vIn"}}]
scoreboard players operation vIn swMath_V *= C_10000 swPool_C
#tellraw @a [{"score":{"objective":"swMath_V","name": "vIn"}}]
scoreboard players operation vIn swMath_V /= @s swPool_wz

#tellraw @a [{"score":{"objective":"swMath_V","name": "vIn"}}]

function math:classes/core/trig/arctan_rad
function math:classes/core/util/swap
function math:classes/core/util/rad2deg
scoreboard players operation dr swPool_pose = vOut swMath_V
# solve quadrant
execute if score @s swPool_wz matches ..-1 if score @s swPool_wx matches ..-1 run scoreboard players remove dr swPool_pose 1800000
execute if score @s swPool_wz matches ..-1 if score @s swPool_wx matches 0.. run scoreboard players add dr swPool_pose 1800000

execute store result score rface swPool_pose run data get entity @s Rotation[0] -10000

scoreboard players operation dr swPool_pose -= rface swPool_pose
scoreboard players operation dr swPool_pose %= C_3600000 swMath_C
#tellraw @a [{"score":{"objective":"swPool_pose","name": "rface"}}]
#tellraw @a [{"score":{"objective":"swPool_pose","name": "dr"}}]

# calculate wswtwc
scoreboard players operation ws swPool_pose = @s swPool_wy

scoreboard players operation A swPool_Vi = @s swPool_wx
scoreboard players operation A swPool_Vj = @s swPool_wz
scoreboard players set A swPool_Vk 0
function pool:classes/physics/vamagnitude
scoreboard players operation wp swPool_pose = O swPool_Vmag

scoreboard players operation vIn swMath_V = dr swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/sin_rad
scoreboard players operation sindr swPool_pose = vOut swMath_V

scoreboard players operation vIn swMath_V = dr swPool_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosdr swPool_pose = vOut swMath_V

scoreboard players operation wt swPool_pose = wp swPool_pose
scoreboard players operation wt swPool_pose *= sindr swPool_pose
scoreboard players operation wt swPool_pose /= C_10000 swPool_C

scoreboard players operation wc swPool_pose = wp swPool_pose
scoreboard players operation wc swPool_pose *= cosdr swPool_pose
scoreboard players operation wc swPool_pose /= C_10000 swPool_C


# calculation for d/dt of p0,p1,p2
scoreboard players set dp1 swPool_pose 0
scoreboard players operation dp1 swPool_pose -= ws swPool_pose
scoreboard players operation dp1 swPool_pose *= C_10000 swPool_C
scoreboard players operation dp1 swPool_pose /= cosp2 pose

scoreboard players set dp0 swPool_pose 0
scoreboard players operation dp0 swPool_pose -= ws swPool_pose
scoreboard players operation dp0 swPool_pose /= C_10000 swPool_C
scoreboard players operation dp0 swPool_pose *= tanp2 swPool_pose
scoreboard players operation dp0 swPool_pose += wt swPool_pose
scoreboard players operation dp2 swPool_pose = dp0 swPool_pose

scoreboard players operation dp0 swPool_pose *= C_10000 swPool_C
scoreboard players operation dp0 swPool_pose /= cosp1 pose

scoreboard players operation dp2 swPool_pose /= C_10000 swPool_C
scoreboard players operation dp2 swPool_pose *= tanp1 swPool_pose
scoreboard players operation dp2 swPool_pose -= wc swPool_pose

# change pose
# scale the dp
scoreboard players operation dp0 swPool_pose /= C_10000 swPool_C
scoreboard players operation dp1 swPool_pose /= C_10000 swPool_C
scoreboard players operation dp2 swPool_pose /= C_10000 swPool_C

scoreboard players operation dp0 swPool_pose /= C_2 swPool_C
scoreboard players operation dp1 swPool_pose /= C_2 swPool_C
scoreboard players operation dp2 swPool_pose /= C_2 swPool_C

scoreboard players operation pose0 swPool_pose += dp0 swPool_pose
scoreboard players operation pose1 swPool_pose += dp1 swPool_pose
scoreboard players operation pose2 swPool_pose += dp2 swPool_pose
data merge entity @s {Pose:{Head:[0.0001f,0.0f,0.0f]}}

execute if score pose0 swPool_pose matches 0 if score pose1 swPool_pose matches 0 if score pose2 swPool_pose matches 0 run scoreboard players add pose0 swPool_pose 1
execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players get pose0 swPool_pose
execute store result entity @s Pose.Head[1] float 0.0001 run scoreboard players get pose1 swPool_pose
execute store result entity @s Pose.Head[2] float 0.0001 run scoreboard players get pose2 swPool_pose

# print score for debug
#tellraw @a [{"text":"WX "},{"score":{"objective":"swPool_wx","name": "@s"}},{"text":" WY "},{"score":{"objective":"swPool_wy","name": "@s"}},{"text":" WZ "},{"score":{"objective":"swPool_wz","name": "@s"}}]
#tellraw @a [{"text":"WS "},{"score":{"objective":"swPool_pose","name": "ws"}},{"text":" WT "},{"score":{"objective":"swPool_pose","name": "wt"}},{"text":" WC "},{"score":{"objective":"swPool_pose","name": "wc"}}]
#tellraw @a [{"text":"cosp1 "},{"score":{"objective":"swPool_pose","name": "cosp1"}},{"text":" tanp1 "},{"score":{"objective":"swPool_pose","name": "tanp1"}},{"text":" cosp2 "},{"score":{"objective":"swPool_pose","name": "cosp2"}},{"text":" tanp2 "},{"score":{"objective":"swPool_pose","name": "tanp2"}}]

#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swPool_pose","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swPool_pose","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swPool_pose","name": "dp2"}}]


tellraw @a [{"text":"dp0 "},{"score":{"objective":"swPool_pose","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swPool_pose","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swPool_pose","name": "dp2"}}]
#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swPool_pose","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swPool_pose","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swPool_pose","name": "dp2"}}]


# for clear debug:
scoreboard players reset p1rad swPool_pose
scoreboard players reset p2rad swPool_pose
