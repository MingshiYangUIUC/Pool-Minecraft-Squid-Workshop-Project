# full rotate function
# get Q elements #Q1 #Q2 #Q3 #Q4 from data

# divide w (radian/s) by 20 to get radian per tick
scoreboard players operation wx swMath_V = @s swPool_wx
scoreboard players operation wy swMath_V = @s swPool_wy
scoreboard players operation wz swMath_V = @s swPool_wz

scoreboard players operation wx swMath_V /= C_20 swPool_C
scoreboard players operation wy swMath_V /= C_20 swPool_C
scoreboard players operation wz swMath_V /= C_20 swPool_C

# wmag (unit is 0.0001 rad per tick)
scoreboard players operation #vAi swMath_V = wx swMath_V
scoreboard players operation #vAj swMath_V = wy swMath_V
scoreboard players operation #vAk swMath_V = wz swMath_V
function math:classes/core/vector/magnitude
scoreboard players operation #wmag swMath_V = #vOut swMath_V

#tellraw @a [{"text":"wmag: "},{"score":{"name": "#wmag","objective": "swMath_V"}}]

# dt = t / 100  # 10000 is 1 in this function  # 100 is 0.01 in this function 
# adaptive integration step
scoreboard players set maxRdt swMath_V 10000
execute if score #wmag swMath_V matches ..2000 run scoreboard players set DT swMath_V 10000
execute if score #wmag swMath_V matches 2001..5000 run scoreboard players set DT swMath_V 5000
execute if score #wmag swMath_V matches 5001..10000 run scoreboard players set DT swMath_V 2000
execute if score #wmag swMath_V matches 10001..20000 run scoreboard players set DT swMath_V 1000
execute if score #wmag swMath_V matches 20001..50000 run scoreboard players set DT swMath_V 500
execute if score #wmag swMath_V matches 50001.. run scoreboard players set DT swMath_V 200

# obtain q_delta
#   wmag = math.sqrt(wx*wx + wy*wy + wz*wz)
#   half = 0.5 * wmag * DT
#   s = math.sin(half)
#   c = math.cos(half)
#   ax, ay, az = wx/wmag, wy/wmag, wz/wmag
#   q_delta = np.array([ax*s, ay*s, az*s, c], dtype=float)

# half = DT * wmag / 2 (divide by 10000 to scale unit back)
scoreboard players operation #whalf swMath_V = #wmag swMath_V
scoreboard players operation #whalf swMath_V *= DT swMath_V
scoreboard players operation #whalf swMath_V /= #C_2 swMath_C
scoreboard players operation #whalf swMath_V /= #C_10000 swMath_C

# sin of half
scoreboard players operation #vIn swMath_V = #whalf swMath_V
function math:classes/core/trig/sin_rad
scoreboard players operation #wms swMath_V = #vOut swMath_V
# cos of half
scoreboard players operation #vIn swMath_V = #whalf swMath_V
function math:classes/core/trig/cos_rad
scoreboard players operation #wmc swMath_V = #vOut swMath_V

# qdelta, element/wmag * 100 * s / 100 (s has unit 0.0001)
scoreboard players operation #dQ1 swMath_V = wx swMath_V
scoreboard players operation #dQ2 swMath_V = wy swMath_V
scoreboard players operation #dQ3 swMath_V = wz swMath_V

scoreboard players operation #dQ1 swMath_V *= #wms swMath_V
scoreboard players operation #dQ2 swMath_V *= #wms swMath_V
scoreboard players operation #dQ3 swMath_V *= #wms swMath_V
scoreboard players operation #dQ1 swMath_V /= #wmag swMath_V
scoreboard players operation #dQ2 swMath_V /= #wmag swMath_V
scoreboard players operation #dQ3 swMath_V /= #wmag swMath_V
scoreboard players operation #dQ4 swMath_V = #wmc swMath_V

# get current Q information
# then send to loop to update Q and normalize Q
execute store result score #Q1 swMath_V run data get entity @s transformation.right_rotation[0] 10000
execute store result score #Q2 swMath_V run data get entity @s transformation.right_rotation[1] 10000
execute store result score #Q3 swMath_V run data get entity @s transformation.right_rotation[2] 10000
execute store result score #Q4 swMath_V run data get entity @s transformation.right_rotation[3] 10000

execute if score maxRdt swMath_V matches 1.. run function pool:classes/pose_quat/rotate_loop
# in this loop: scoreboard players operation maxRdt swMath_V -= DT swMath_V

# loop should finish...
# set right_rotation with Q
execute store result entity @s transformation.right_rotation[0] float 0.0001 run scoreboard players get #Q1 swMath_V
execute store result entity @s transformation.right_rotation[1] float 0.0001 run scoreboard players get #Q2 swMath_V
execute store result entity @s transformation.right_rotation[2] float 0.0001 run scoreboard players get #Q3 swMath_V
execute store result entity @s transformation.right_rotation[3] float 0.0001 run scoreboard players get #Q4 swMath_V