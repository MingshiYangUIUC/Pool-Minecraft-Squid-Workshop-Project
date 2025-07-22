#data merge entity @s {Pose:{Head:[0.0001f,0.0f,0.0f]}}
#data modify entity @s Rotation set from entity @s Rotation

scoreboard players operation pose0 swPool_pose %= C_3600000 swPool_C
scoreboard players operation pose1 swPool_pose %= C_3600000 swPool_C
scoreboard players operation pose2 swPool_pose %= C_3600000 swPool_C
execute if score pose0 swPool_pose matches 0 if score pose1 swPool_pose matches 0 if score pose2 swPool_pose matches 0 run scoreboard players add pose0 swPool_pose 1
execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players get pose0 swPool_pose
execute store result entity @s Pose.Head[1] float 0.0001 run scoreboard players get pose1 swPool_pose
execute store result entity @s Pose.Head[2] float 0.0001 run scoreboard players get pose2 swPool_pose

#execute store result score pos0 swPool_pose run data get entity @s Pose.Head[0] 10000
#execute store result score rr swPool_pose run data get entity @s Rotation[0] 10000