# Execute this function as the cueball

# Steps:
#	variables used: stick velocity, stick (long) length, mass, moments of inertia (around hand)
#			ball radius, mass, moments of inertia (around center)
#			strike angle, coefficient of friction (between tip and ball)
#			stkv swPool_V. C_stkl swPool_C. C_stkm swPool_C. C_stkI swPool_C
#			C_r2 swPool_C. C_m swPool_C. C_I swPool_C
#			stka swPool_var00. C_mus swPool_C 
#
#	procedures: 
#			calculate effective coefficient of friction (5.4) mus_eff var00 
#			calculate the value of j (5.5)
#			apply the result to 5.6 and 5.7, get values (magnitudes)
#	    		obtain unit vector form of F, N, vs0 (omega as F x N)
#   			calculate final result in vector form (5.6 and 5.7)
#           or do some easier mess ups
# 
# notice: almost all temp vars use swPool_var00.


#tellraw @a {"text":"begin"}

#////////////////////////// BELOW USES v_stick //////////////////////////

# Use v = 1m/s for testing, it is a typical speed, amplify this for big table, maximum is 20m/s
#scoreboard players set v_stick swPool_var00 10000
#scoreboard players set C_mus swPool_C 7000

# define m and I of ball and stick. later put this to load.mcfunction. use real ball dimension for more real output
# m: 170g and 600g
#scoreboard players set m_ball swPool_C 1700
#scoreboard players set m_ball swPool_C 1700
#scoreboard players set m_stick swPool_C 6000

#scoreboard players set C_r2 swPool_C 286
#scoreboard players operation i_ball swPool_C = m_ball swPool_C
#scoreboard players operation i_ball swPool_C *= C_r2 swPool_C
#scoreboard players operation i_ball swPool_C /= C_10000 swPool_C
#scoreboard players operation i_ball swPool_C *= C_r2 swPool_C
#scoreboard players operation i_ball swPool_C /= C_5 swPool_C
#scoreboard players operation i_ball swPool_C *= C_2 swPool_C
#scoreboard players operation i_ball swPool_C /= C_10000 swPool_C
#scoreboard players set i_ball_100 swPool_C 56
# I stick ~ 0.2mL^2
# L of stick: 1.5m. long end to pivot: 1.25m (set for later calculation) calculation omitted
#scoreboard players set C_l swPool_C 12500
#scoreboard players set i_stick swPool_C 2700

#////////////////////////// BELOW USES stka //////////////////////////

#	mus_eff and save sin and cos in memory (men_sin/cos in var00). C_mus is around 0.7 (7000), stka is strike angle theta
scoreboard players operation @s swPool_var00 = stka swPool_var00
function pool:classes/math/sindeg
scoreboard players operation mem_sin swPool_var00 = @s swPool_var00

scoreboard players operation @s swPool_var00 = stka swPool_var00
function pool:classes/math/cosdeg
scoreboard players operation mem_cos swPool_var00 = @s swPool_var00

scoreboard players operation mus_eff swPool_var00 = C_mus swPool_C
scoreboard players operation mus_eff swPool_var00 *= mem_sin swPool_var00
scoreboard players operation mus_eff swPool_var00 /= C_10000 swPool_C
scoreboard players operation mus_eff swPool_var00 *= mem_sin swPool_var00
scoreboard players operation mus_eff swPool_var00 /= C_10000 swPool_C

########################### Calculation of j

###### numerator ~1
scoreboard players operation j swPool_var00 = mem_sin swPool_var00
scoreboard players operation j swPool_var00 *= mus_eff swPool_var00
scoreboard players operation j swPool_var00 /= C_10000 swPool_C
scoreboard players operation j swPool_var00 += mem_cos swPool_var00
scoreboard players operation j swPool_var00 *= v_stick swPool_var00
#scoreboard players operation j swPool_var00 /= C_10000 swPool_C

###### denominator
scoreboard players set j_d swPool_var00 0
###### d1 d2 ~0.8 and 3
scoreboard players operation j_d1 swPool_var00 = mus_eff swPool_var00
scoreboard players operation j_d1 swPool_var00 *= mus_eff swPool_var00
#scoreboard players operation j_d1 swPool_var00 /= C_10000 swPool_C
scoreboard players add j_d1 swPool_var00 100000000
scoreboard players operation j_d2 swPool_Var00 = j_d1 swPool_var00
scoreboard players operation j_d1 swPool_var00 /= m_stick swPool_C
scoreboard players operation j_d2 swPool_var00 /= m_ball swPool_C
scoreboard players operation j_d swPool_var00 += j_d1 swPool_var00
scoreboard players operation j_d swPool_var00 += j_d2 swPool_var00

###### d3 ~1.5
scoreboard players operation j_d3 swPool_var00 = mem_cos swPool_var00
scoreboard players operation j_d3 swPool_var00 *= mus_eff swPool_var00
scoreboard players operation j_d3 swPool_var00 /= C_10000 swPool_C
scoreboard players operation j_d3 swPool_var00 -= mem_sin swPool_var00
scoreboard players operation j_d3 swPool_var00 *= j_d3 swPool_var00
scoreboard players operation j_d3 swPool_var00 /= C_10000 swPool_C
scoreboard players operation j_d3 swPool_var00 *= C_l swPool_C
scoreboard players operation j_d3 swPool_var00 /= C_10000 swPool_C
scoreboard players operation j_d3 swPool_var00 *= C_l swPool_C
scoreboard players operation j_d3 swPool_var00 /= i_stick swPool_C
scoreboard players operation j_d3 swPool_var00 /= C_2 swPool_C

scoreboard players operation j_d swPool_var00 += j_d3 swPool_var00

###### d4 ~3.6
scoreboard players operation j_d4 swPool_var00 = mus_eff swPool_var00
scoreboard players operation j_d4 swPool_var00 *= C_r2 swPool_C
scoreboard players operation j_d4 swPool_var00 /= C_10000 swPool_C
scoreboard players operation j_d4 swPool_var00 *= j_d4 swPool_var00
scoreboard players operation j_d4 swPool_var00 /= i_ball_100 swPool_C
scoreboard players operation j_d4 swPool_var00 *= C_100 swPool_C
scoreboard players operation j_d4 swPool_var00 /= C_2 swPool_C

scoreboard players operation j_d swPool_var00 += j_d4 swPool_var00

# final operation
scoreboard players operation j swPool_var00 /= j_d swPool_var00

#tellraw @a [{"text":" j, "},{"score":{"objective":"swPool_var00","name":"j"}}]

########################## calculate values of vb (v_ball) (front and side)
# front vb_f
scoreboard players operation vb_f swPool_var00 = mem_sin swPool_var00
scoreboard players operation vb_f swPool_var00 *= mus_eff swPool_var00
scoreboard players operation vb_f swPool_var00 /= C_10000 swPool_C
scoreboard players operation vb_f swPool_var00 += mem_cos swPool_var00
scoreboard players operation vb_f swPool_var00 *= j swPool_var00
scoreboard players operation vb_f swPool_var00 /= m_ball swPool_C
# side vb_s
scoreboard players operation vb_s swPool_var00 = mem_cos swPool_var00
scoreboard players operation vb_s swPool_var00 *= mus_eff swPool_var00
scoreboard players operation vb_s swPool_var00 /= C_10000 swPool_C
scoreboard players operation vb_s swPool_var00 += mem_sin swPool_var00
scoreboard players operation vb_s swPool_var00 *= j swPool_var00
scoreboard players operation vb_s swPool_var00 /= m_ball swPool_C
# magnitude (use for autocorrection) vb_mag
scoreboard players operation A swPool_Vi = vb_f swPool_var00
scoreboard players set A swPool_Vj 0
scoreboard players operation A swPool_Vk = vb_s swPool_var00
function pool:classes/physics/vamagnitude
#now O's swPool_Vmag is the magnitude
scoreboard players operation vb_mag swPool_var00 = O swPool_Vmag


############# value of wb (omega_ball)
scoreboard players operation wb swPool_var00 = j swPool_var00
scoreboard players operation wb swPool_var00 *= C_r2 swPool_C
scoreboard players operation wb swPool_var00 /= i_ball_100 swPool_C
scoreboard players operation wb swPool_var00 /= C_100 swPool_C
scoreboard players operation wb swPool_var00 *= mus_eff swPool_var00

#tellraw @a [{"text":" mus_eff, "},{"score":{"objective":"swPool_var00","name":"mus_eff"}}]
#tellraw @a [{"text":" Vbf, "},{"score":{"objective":"swPool_var00","name":"vb_f"}}]
#tellraw @a [{"text":" Vbs, "},{"score":{"objective":"swPool_var00","name":"vb_s"}}]
#tellraw @a [{"text":" wb, "},{"score":{"objective":"swPool_var00","name":"wb"}}]

############ some theory
# obtain direction of omega:
# x = angle from "right" to point of contact (tilt)
# pitch is always positive (magnitude) in this case (i.e. pitch similar to x_rotation, but is selected!)
# rotation is from +z counterclockwise, viewing from top (i.e. r = -1*y_rotation)
#   in the shooter's reference frame
#   w_vertical =  wb cos(x) cos(pitch) = wy
#   w_front = wb cos(x) sin(pitch)
#   w_left = wb sin(x)
#
#   wx = w_front sin(r) + w_left cos(r)
#   wy = w_vertical
#   wz = w_front cos(r) - w_left sin(r)

# obtain direction of vb_f and vb_s
#   vb_f // v_stick
#   vb_s // wb x v_stick

#////////////////////////// BELOW USES x and pitch and r //////////////////////////

execute store result score r swPool_var00 run data get entity @s Rotation[0] -10000
scoreboard players operation r swPool_var00 = @s swPool_Rotation
scoreboard players operation r swPool_var00 *= C_-1 swPool_C
#tellraw @a [{"text":" r, "},{"score":{"objective":"swPool_var00","name":"r"}}]


########################### get omega use x,pitch, (r=-1*y_rotation)
# calculate sin and cos of 3 angles
scoreboard players operation @s swPool_var00 = x swPool_var00
function pool:classes/math/sindeg
scoreboard players operation sinx swPool_var00 = @s swPool_var00
scoreboard players operation @s swPool_var00 = x swPool_var00
function pool:classes/math/cosdeg
scoreboard players operation cosx swPool_var00 = @s swPool_var00
scoreboard players operation @s swPool_var00 = pitch swPool_var00
function pool:classes/math/sindeg
scoreboard players operation sinpitch swPool_var00 = @s swPool_var00
scoreboard players operation @s swPool_var00 = pitch swPool_var00
function pool:classes/math/cosdeg
scoreboard players operation cospitch swPool_var00 = @s swPool_var00
scoreboard players operation @s swPool_var00 = r swPool_var00
function pool:classes/math/sindeg
scoreboard players operation sinr swPool_var00 = @s swPool_var00
scoreboard players operation @s swPool_var00 = r swPool_var00
function pool:classes/math/cosdeg
scoreboard players operation cosr swPool_var00 = @s swPool_var00


scoreboard players operation w_f swPool_var00 = wb swPool_var00
scoreboard players operation w_f swPool_var00 /= C_100 swPool_C
scoreboard players operation w_f swPool_var00 *= cosx swPool_var00
scoreboard players operation w_f swPool_var00 /= C_10000 swPool_C
scoreboard players operation w_f swPool_var00 *= sinpitch swPool_var00
scoreboard players operation w_f swPool_var00 /= C_100 swPool_C

scoreboard players operation w_l swPool_var00 = wb swPool_var00
scoreboard players operation w_l swPool_var00 /= C_100 swPool_C
scoreboard players operation w_l swPool_var00 *= sinx swPool_var00
scoreboard players operation w_l swPool_var00 /= C_100 swPool_C


scoreboard players operation wx swPool_var00 = w_f swPool_var00
scoreboard players operation wx swPool_var00 /= C_100 swPool_C
scoreboard players operation wx swPool_var00 *= sinr swPool_var00
scoreboard players operation wx1 swPool_var00 = w_l swPool_var00
scoreboard players operation wx1 swPool_var00 /= C_100 swPool_C
scoreboard players operation wx1 swPool_var00 *= cosr swPool_var00
scoreboard players operation wx swPool_var00 += wx1 swPool_var00
scoreboard players operation wx swPool_var00 /= C_100 swPool_C

scoreboard players operation wy swPool_var00 = wb swPool_var00
scoreboard players operation wy swPool_var00 /= C_100 swPool_C
scoreboard players operation wy swPool_var00 *= cosx swPool_var00
scoreboard players operation wy swPool_var00 /= C_10000 swPool_C
scoreboard players operation wy swPool_var00 *= cospitch swPool_var00
scoreboard players operation wy swPool_var00 /= C_100 swPool_C

scoreboard players operation wz swPool_var00 = w_f swPool_var00
scoreboard players operation wz swPool_var00 /= C_100 swPool_C
scoreboard players operation wz swPool_var00 *= cosr swPool_var00
scoreboard players operation wz1 swPool_var00 = w_l swPool_var00
scoreboard players operation wz1 swPool_var00 /= C_100 swPool_C
scoreboard players operation wz1 swPool_var00 *= sinr swPool_var00
scoreboard players operation wz swPool_var00 -= wz1 swPool_var00
scoreboard players operation wz swPool_var00 /= C_100 swPool_C

#tellraw @a [{"text":" wf, "},{"score":{"objective":"swPool_var00","name":"w_f"}}]
#tellraw @a [{"text":" wl, "},{"score":{"objective":"swPool_var00","name":"w_l"}}]
#tellraw @a [{"text":" wv, "},{"score":{"objective":"swPool_var00","name":"wy"}}]

# obtain direction of vb_f and vb_s
#   vb_f // v_stick
#   vb_s // wb x v_stick

# component form of v_stick, unit calc does not need mag of v_stick so use 10000
#   vy = v_stick *-1*sin(pitch)
#   vx = v_Stick * cos(pitch) * sin(r)
#   vz = v_stick * cos(pitch) * cos(r)

# use unit vectors of terms above to calculate
# this is already unit vector
scoreboard players set vy swPool_var00 -1
scoreboard players operation vy swPool_var00 *= sinpitch swPool_var00
scoreboard players operation vx swPool_var00 = cospitch swPool_var00
scoreboard players operation vx swPool_var00 *= sinr swPool_var00
scoreboard players operation vx swPool_var00 /= C_10000 swPool_C
scoreboard players operation vz swPool_var00 = cospitch swPool_var00
scoreboard players operation vz swPool_var00 *= cosr swPool_var00
scoreboard players operation vz swPool_var00 /= C_10000 swPool_C

#scoreboard players operation A swPool_Vi = vx swPool_var00
#scoreboard players operation A swPool_Vj = vy swPool_var00
#scoreboard players operation A swPool_Vk = vz swPool_var00
#function pool:classes/physics/vaunit

scoreboard players operation vbfu swPool_Vi = vx swPool_var00
scoreboard players operation vbfu swPool_Vj = vy swPool_var00
scoreboard players operation vbfu swPool_Vk = vz swPool_var00

scoreboard players operation B swPool_Vi = vx swPool_var00
scoreboard players operation B swPool_Vj = vy swPool_var00
scoreboard players operation B swPool_Vk = vz swPool_var00

scoreboard players operation A swPool_Vi = wx swPool_var00
scoreboard players operation A swPool_Vj = wy swPool_var00
scoreboard players operation A swPool_Vk = wz swPool_var00
function pool:classes/physics/vaunit
scoreboard players operation A swPool_Vi = O swPool_Vi
scoreboard players operation A swPool_Vj = O swPool_Vj
scoreboard players operation A swPool_Vk = O swPool_Vk

function pool:classes/physics/vacrossvb
scoreboard players operation vbsu swPool_Vi = O swPool_Vi
scoreboard players operation vbsu swPool_Vj = O swPool_Vj
scoreboard players operation vbsu swPool_Vk = O swPool_Vk
scoreboard players operation vbsu swPool_Vi /= C_10000 swPool_C
scoreboard players operation vbsu swPool_Vj /= C_10000 swPool_C
scoreboard players operation vbsu swPool_Vk /= C_10000 swPool_C

#tellraw @a [{"text":" vbfu, "},{"score":{"objective":"swPool_Vi","name":"vbfu"}},{"text":" "},{"score":{"objective":"swPool_Vj","name":"vbfu"}},{"text":" "},{"score":{"objective":"swPool_Vk","name":"vbfu"}}]
#tellraw @a [{"text":" vbsu, "},{"score":{"objective":"swPool_Vi","name":"vbsu"}},{"text":" "},{"score":{"objective":"swPool_Vj","name":"vbsu"}},{"text":" "},{"score":{"objective":"swPool_Vk","name":"vbsu"}}]

# autocorrection: add magnitude of vb_s to vb_f and set vb_s 0
scoreboard players operation A swPool_Vi = vb_f swPool_var00
scoreboard players operation A swPool_Vj = vb_s swPool_var00
scoreboard players set A swPool_Vk 0
function pool:classes/physics/vamagnitude
scoreboard players operation vb_f swPool_var00 = O swPool_Vmag
scoreboard players set vb_s swPool_var00 0

# discard vy as it will be set 0 on the plane of table, at least for now

scoreboard players operation vbfu swPool_Vi *= vb_f swPool_var00
scoreboard players operation vbfu swPool_Vj *= vb_f swPool_var00
scoreboard players operation vbfu swPool_Vk *= vb_f swPool_var00

scoreboard players operation vbsu swPool_Vi *= vb_s swPool_var00
scoreboard players operation vbsu swPool_Vj *= vb_s swPool_var00
scoreboard players operation vbsu swPool_Vk *= vb_s swPool_var00

scoreboard players operation @s swPool_vx = vbfu swPool_Vi
scoreboard players operation @s swPool_vx += vbsu swPool_Vi
scoreboard players operation @s swPool_vx /= C_10000 swPool_C
scoreboard players operation @s swPool_vz = vbfu swPool_Vk
scoreboard players operation @s swPool_vz += vbsu swPool_Vk
scoreboard players operation @s swPool_vz /= C_10000 swPool_C
scoreboard players set @s swPool_vy 0

# V is here! 
#tellraw @a [{"text":" V comp, "},{"score":{"objective":"swPool_vx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vz","name":"@s"}}]

scoreboard players operation @s swPool_vx *= C_500 swPool_C
scoreboard players operation @s swPool_vz *= C_500 swPool_C

scoreboard players operation @s swPool_var00 = @s swPool_vx
scoreboard players operation @s swPool_var01 = @s swPool_vz

scoreboard players operation @s swPool_var00 /= C_2000 swPool_C
scoreboard players operation @s swPool_var01 /= C_2000 swPool_C
scoreboard players operation @s swPool_var00 *= @s swPool_var00
scoreboard players operation @s swPool_var01 *= @s swPool_var01
scoreboard players operation @s swPool_var00 += @s swPool_var01

scoreboard players operation #vIn swMath_V = @s swPool_var00
function math:classes/core/operations/sqrt
scoreboard players operation @s swPool_var00 = #vOut swMath_V

scoreboard players operation @s swPool_var00 *= C_2000 swPool_C
scoreboard players operation @s swPool_v = @s swPool_var00

#function pool:classes/physics/vcombine_ultimate
#tellraw @a [{"text":" V, "},{"score":{"objective":"swPool_v","name":"@s"}}]

#execute store result score r2 swPool_var00 run data get entity @s Rotation[0] -10000
#tellraw @a [{"text":" r, "},{"score":{"objective":"swPool_var00","name":"r2"}}]

# Omega is here!
scoreboard players operation @s swPool_wx = wx swPool_var00
scoreboard players operation @s swPool_wy = wy swPool_var00
scoreboard players operation @s swPool_wz = wz swPool_var00
#tellraw @a [{"text":" w, "},{"score":{"objective":"swPool_wx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_wy","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_wz","name":"@s"}}]


#scoreboard players set @s swPool_v 0
#kill @e[type=arrow,tag=swPool_sb]

scoreboard players set stka swPool_var00 0
scoreboard players set x swPool_var00 0
scoreboard players set pitch swPool_var00 0
