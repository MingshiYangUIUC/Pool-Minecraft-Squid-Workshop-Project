#Current: vex and vez are same unit of time as omegas. m/s*10000, rad/s*10000
#0. vseparate if needed [UNIT] Magnitudes:                                                      Methods:
#1. get plus/minus and K                                                                                use direction of v_normal and side of cushion!!!
#2. calculate normal force N              N=|v_normal|*2*m/1tick
#3. calculate friction                    F=mui*K*N 
#4. calculate change of P/v               ΔP=F*1tick     /   Δv_parallel=F*1tick/m   = v_normal*2*K*mui
#5. calculate change of L/omega           ΔL=F*r*1tick   /   Δomega_y=F*r*1tick/I    = v_normal*5/r*K*mui
#6. add back and vcombine_ultimate

#K value? K is proportional to contact velocity... 
#                                         K = v +- omega_y*r

#Future:
#7. Merge with "change of state": No need to combine in 6 then separate again...

#Addition: x and z omega change due to bounce.
# contact:                                K' = omega_(x|z)*r
# calculate change of L/omega             ΔL=F*r*1tick   /   Δomega_(x|z)=F*r*1tick/I  = v_normal*5/r*K'*mui
# v_normal is just vx or vz               
# bounce always offsets x and z omega. so we can simply calculate offset value, then substract from omega.
# if swPool_x, facing +-x, will interact with omega_z, and vice versa.

#tellraw @a [{"text":"vex, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" vez, "},{"score":{"objective":"swPool_vez","name":"@s"}},{"text":" wy "},{"score":{"objective":"swPool_wy","name":"@s"}}]


#step 1 swPool_x: facing +-x; cushion // +-z. vice versa
#record positive or negative
tag @s[tag=swPool_x,scores={swPool_vex=0..}] add swPool_+x
tag @s[tag=swPool_x,scores={swPool_vex=..-1}] add swPool_-x
tag @s[tag=swPool_z,scores={swPool_vez=0..}] add swPool_+z
tag @s[tag=swPool_z,scores={swPool_vez=..-1}] add swPool_-z
#record vnormal for convenience
execute if entity @s[tag=swPool_x] run scoreboard players operation VN swPool_var00 = @s swPool_vex
execute if entity @s[tag=swPool_z] run scoreboard players operation VN swPool_var00 = @s swPool_vez


#step 1 get K
scoreboard players operation WR swPool_var00 = @s swPool_wy
scoreboard players operation WR swPool_var00 /= C_100 swPool_C
scoreboard players operation WR swPool_var00 *= C_r swPool_C
scoreboard players operation WR swPool_var00 /= C_100 swPool_C
execute if entity @s[tag=swPool_x] run scoreboard players operation K swPool_var00 = @s swPool_vez
execute if entity @s[tag=swPool_z] run scoreboard players operation K swPool_var00 = @s swPool_vex
execute if entity @s[tag=swPool_+x] run scoreboard players operation K swPool_var00 -= WR swPool_var00
execute if entity @s[tag=swPool_-x] run scoreboard players operation K swPool_var00 += WR swPool_var00
execute if entity @s[tag=swPool_+z] run scoreboard players operation K swPool_var00 += WR swPool_var00
execute if entity @s[tag=swPool_-z] run scoreboard players operation K swPool_var00 -= WR swPool_var00

# get K' 
execute if entity @s[tag=swPool_x] run scoreboard players operation Kp swPool_var00 = @s swPool_wz
execute if entity @s[tag=swPool_z] run scoreboard players operation Kp swPool_var00 = @s swPool_wx
scoreboard players operation Kp swPool_var00 /= C_100 swPool_C
scoreboard players operation Kp swPool_var00 *= C_r swPool_C
scoreboard players operation Kp swPool_var00 /= C_100 swPool_C

#execute if score K swPool_var00 matches 1.. run scoreboard players set K swPool_var00 10000
#execute if score K swPool_var00 matches ..-1 run scoreboard players set K swPool_var00 -10000
#tellraw @a [{"text":"K, "},{"score":{"objective":"swPool_var00","name":"K"}}]

#step4 get magnitude of Δv_parallel  v_normal*2*K*mui
scoreboard players operation dVP swPool_var00 = VN swPool_var00
scoreboard players operation dVP swPool_var00 *= C_2 swPool_C
scoreboard players operation dVP swPool_var00 /= C_100 swPool_C
scoreboard players operation dVP swPool_var00 *= K swPool_var00
scoreboard players operation dVP swPool_var00 /= C_100 swPool_C
scoreboard players operation dVP swPool_var00 *= C_mui swPool_C
#scoreboard players operation dVP swPool_var00 *= C_10 swPool_C
scoreboard players operation dVP swPool_var00 /= C_10000 swPool_C
execute if score dVP swPool_var00 matches ..-1 run scoreboard players operation dVP swPool_var00 *= C_-1 swPool_C

#tellraw @a [{"text":"dVP, "},{"score":{"objective":"swPool_var00","name":"dVP"}}]

#step5 get magnitude of Δomega_y = Δv_parallel/r/2*5
scoreboard players operation dWY swPool_var00 = dVP swPool_var00
scoreboard players operation dWY swPool_var00 *= C_5 swPool_C
scoreboard players operation dWY swPool_var00 /= C_2 swPool_C
scoreboard players operation dWY swPool_var00 *= C_100 swPool_C
scoreboard players operation dWY swPool_var00 /= C_r swPool_C
scoreboard players operation dWY swPool_var00 *= C_100 swPool_C
execute if score dWY swPool_var00 matches ..-1 run scoreboard players operation dVP swPool_var00 *= C_-1 swPool_C

#step 6: dVP is negative sign of K, and dWY positive if -z and +x, negative if +z and -x
#dVP:
execute if score K swPool_var00 matches 0.. run scoreboard players operation dVP swPool_var00 *= C_-1 swPool_C

#dWY
execute if entity @s[tag=swPool_+x] if score K swPool_var00 matches ..-1 run scoreboard players operation dWY swPool_var00 *= C_-1 swPool_C
execute if entity @s[tag=swPool_-x] if score K swPool_var00 matches 0.. run scoreboard players operation dWY swPool_var00 *= C_-1 swPool_C
execute if entity @s[tag=swPool_+z] if score K swPool_var00 matches 0.. run scoreboard players operation dWY swPool_var00 *= C_-1 swPool_C
execute if entity @s[tag=swPool_-z] if score K swPool_var00 matches ..-1 run scoreboard players operation dWY swPool_var00 *= C_-1 swPool_C

#add back

scoreboard players operation @s[tag=swPool_x] swPool_vez += dVP swPool_var00
scoreboard players operation @s[tag=swPool_z] swPool_vex += dVP swPool_var00

scoreboard players operation @s swPool_wy += dWY swPool_var00

#vcombine_ultimate, after flipping the sign of v_normal
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_vex *= C_-1 swPool_C
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_vez *= C_-1 swPool_C
function pool:classes/physics/vcombine_ve
#scoreboard players operation @s swPool_v *= C_500 swPool_C


# Addition: modify wx or wz      Δomega_(x|z)=F*r*1tick/I  = v_normal*5/r*K'*mui
#step4 get magnitude of Δv_parallel  v_normal*2*K*mui
#scoreboard players operation dWp swPool_var00 = VN swPool_var00
#scoreboard players operation dWp swPool_var00 *= C_5 swPool_C

#scoreboard players operation dWp swPool_var00 *= C_100 swPool_C
#scoreboard players operation dWp swPool_var00 /= C_r swPool_C
#scoreboard players operation dWp swPool_var00 *= C_100 swPool_C

#scoreboard players operation dWp swPool_var00 /= C_100 swPool_C
#scoreboard players operation dWp swPool_var00 *= Kp swPool_var00
#scoreboard players operation dWp swPool_var00 /= C_100 swPool_C

#scoreboard players operation dWp swPool_var00 *= C_mui swPool_C
#scoreboard players operation dWp swPool_var00 /= C_10000 swPool_C

# reordered equation
scoreboard players operation dWp swPool_var00 = VN swPool_var00
scoreboard players operation dWp swPool_var00 *= C_5 swPool_C
scoreboard players operation dWp swPool_var00 /= C_100 swPool_C
scoreboard players operation dWp swPool_var00 *= Kp swPool_var00
scoreboard players operation dWp swPool_var00 /= C_r swPool_C
scoreboard players operation dWp swPool_var00 *= C_mui swPool_C
scoreboard players operation dWp swPool_var00 /= C_100 swPool_C

# remove omegas. if omega positive, substract, otherwise, add.
# absolute value
execute if score dWp swPool_var00 matches ..-1 run scoreboard players operation dWp swPool_var00 *= C_-1 swPool_C
# get input omega, wz changed by x direction, vice versa
execute if entity @s[tag=swPool_x] run scoreboard players operation W0 swPool_var00 = @s swPool_wz
execute if entity @s[tag=swPool_z] run scoreboard players operation W0 swPool_var00 = @s swPool_wx

#tellraw @a [{"text":"original w, "},{"score":{"objective":"swPool_var00","name":"W0"}}]

# tmp storage
scoreboard players operation W00 swPool_var00 = W0 swPool_var00
# if negative: add
execute if score W00 swPool_var00 matches ..-1 run scoreboard players operation W0 swPool_var00 += dWp swPool_var00
# if positive: substract
execute if score W00 swPool_var00 matches 0.. run scoreboard players operation W0 swPool_var00 -= dWp swPool_var00
# set back to value.
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_wz = W0 swPool_var00
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_wx = W0 swPool_var00
#tellraw @a [{"text":"changed w, "},{"score":{"objective":"swPool_var00","name":"dWp"}}]
#tellraw @a [{"text":"final w, "},{"score":{"objective":"swPool_var00","name":"W0"}}]

#remove tag used
tag @s remove swPool_+x
tag @s remove swPool_-x
tag @s remove swPool_+z
tag @s remove swPool_-z

#tellraw @a [{"text":"vex, "},{"score":{"objective":"swPool_vex","name":"@s"}},{"text":" vez, "},{"score":{"objective":"swPool_vez","name":"@s"}},{"text":" VN "},{"score":{"objective":"swPool_var00","name":"VN"}},{"text":" WR "},{"score":{"objective":"swPool_var00","name":"WR"}},{"text":" K "},{"score":{"objective":"swPool_var00","name":"K"}},{"text":" wy "},{"score":{"objective":"swPool_wy","name":"@s"}},{"text":" dvp "},{"score":{"objective":"swPool_var00","name":"dVP"}},{"text":" dwy "},{"score":{"objective":"swPool_var00","name":"dWY"}}]
#tellraw @a [{"text":"v, "},{"score":{"objective":"swPool_v","name":"@s"}}]