#put the object a1 to the cushion, and rotate it

#if uk8ball or cn8ball: count cushion
tag @e[tag=swPool_pooltable,tag=swPool_uk8ballmode,limit=1] add swPool_hitrail
execute if score @a[tag=swPool_hitcue,limit=1] swPool_firsthit matches 1.. run tag @e[tag=swPool_pooltable,tag=swPool_cn8ballmode,limit=1] add swPool_hitrail

#put back position components
#swPool_var00 is modified swPool_vx, swPool_var01 is modified swPool_vz
scoreboard players operation @s swPool_posx -= @s swPool_var00
scoreboard players operation @s swPool_posz -= @s swPool_var01

#execute if entity @s[tag=swPool_x] run say x

#calculate ratio of swPool_v needed
scoreboard players set @s swPool_var04 10000
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_var02 = TABLE swPool_sizex
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var02 = TABLE swPool_sizez
execute if entity @s[tag=swPool_x,scores={swPool_posx=..-1}] run scoreboard players operation @s swPool_var02 += @s swPool_posx
execute if entity @s[tag=swPool_z,scores={swPool_posz=..-1}] run scoreboard players operation @s swPool_var02 += @s swPool_posz
execute if entity @s[tag=swPool_x,scores={swPool_posx=1..}] run scoreboard players operation @s swPool_var02 -= @s swPool_posx
execute if entity @s[tag=swPool_z,scores={swPool_posz=1..}] run scoreboard players operation @s swPool_var02 -= @s swPool_posz
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_var02 *= @s swPool_var04
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var02 *= @s swPool_var04
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_var02 /= @s swPool_var00
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var02 /= @s swPool_var01
execute if entity @s[tag=swPool_x] run scoreboard players operation @s swPool_var04 = @s swPool_var02
execute if entity @s[tag=swPool_z] run scoreboard players operation @s swPool_var04 = @s swPool_var02
#scoreboard players set @s swPool_var03 10000

# this is only done after bounce is determined...
#scoreboard players operation @s swPool_var02 = @s swPool_v
#scoreboard players operation @s swPool_v /= C_10000 swPool_C
#scoreboard players operation @s swPool_v *= @s swPool_var04

execute if score @s swPool_var04 matches ..-1 run scoreboard players operation @s swPool_var04 *= C_-1 swPool_C

##### var04 is tick*10000
tag @s remove swPool_bounce

# not yet...
#execute if score @s swPool_var04 < MinTime swPool_hittime run tag @s add swPool_bounce
#execute if score @s swPool_var04 < MinTime swPool_hittime run scoreboard players operation MinTime swPool_hittime = @s swPool_var04
#tellraw @a [{"text":"variable swPool_v4 is "},{"score":{"objective":"swPool_var04","name":"@s"}}]
#tellraw @a [{"text":"variable minTime is "},{"score":{"objective":"swPool_hittime","name":"MinTime"}}]

scoreboard players operation bouncetime swPool_hittime = @s swPool_var04


# HOWEVER, if AFTER MinTime the ball is close to pocket, no bounce but later use pocket edge collision or pocketing

#pocketing criteria
#get new distance in components
execute if score TABLE swPool_sizex >= TABLE swPool_sizez run tag @s add swPool_x3
execute if score TABLE swPool_sizex < TABLE swPool_sizez run tag @s add swPool_z3

#execute store result score bounce_adjust swPool_posx run data get entity @s Pos[0] 10000
#execute store result score bounce_adjust swPool_posz run data get entity @s Pos[2] 10000

scoreboard players operation bounce_adjust swPool_posx = POSX swPool_posx
scoreboard players operation bounce_adjust swPool_posz = POSZ swPool_posz

# add SCALED velocity here but store pos and velocity
#execute at @s run function pool:classes/physics/vseparate
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"V x is "},{"score":{"objective":"swPool_vx","name":"@s"}}]
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"V z is "},{"score":{"objective":"swPool_vz","name":"@s"}}]

scoreboard players operation bounce_adjust swPool_var00 = bounce_adjust swPool_vx
scoreboard players operation bounce_adjust swPool_var01 = bounce_adjust swPool_vz

scoreboard players operation bounce_adjust swPool_var00 /= C_10000 swPool_C
scoreboard players operation bounce_adjust swPool_var00 *= bouncetime swPool_hittime
scoreboard players operation bounce_adjust swPool_var00 /= C_10000 swPool_C
scoreboard players operation bounce_adjust swPool_posx += bounce_adjust swPool_var00

scoreboard players operation bounce_adjust swPool_var01 /= C_10000 swPool_C
scoreboard players operation bounce_adjust swPool_var01 *= bouncetime swPool_hittime
scoreboard players operation bounce_adjust swPool_var01 /= C_10000 swPool_C
scoreboard players operation bounce_adjust swPool_posz += bounce_adjust swPool_var01

scoreboard players operation bounce_adjust swPool_posx -= TABLE swPool_posx
scoreboard players operation bounce_adjust swPool_posz -= TABLE swPool_posz

#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"Shift x is "},{"score":{"objective":"swPool_var00","name":"bounce_adjust"}}]
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"Shift z is "},{"score":{"objective":"swPool_var01","name":"bounce_adjust"}}]

#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"Side edge x is "},{"score":{"objective":"swPool_posx","name":"bounce_adjust"}}]
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"Side edge z is "},{"score":{"objective":"swPool_posz","name":"bounce_adjust"}}]

# inside 4900, use fake side edge
execute if score bounce_adjust swPool_posx matches -4900..4900 run tag @s[tag=swPool_x3] add swPool_pktm
execute if score bounce_adjust swPool_posz matches -4900..4900 run tag @s[tag=swPool_z3] add swPool_pktm

scoreboard players operation bounce_adjust_c swPool_var00 = bounce_adjust swPool_posx
scoreboard players operation bounce_adjust_c swPool_var01 = bounce_adjust swPool_posz

execute if score bounce_adjust_c swPool_var00 matches ..-1 run scoreboard players operation bounce_adjust_c swPool_var00 *= C_-1 swPool_C
execute if score bounce_adjust_c swPool_var01 matches ..-1 run scoreboard players operation bounce_adjust_c swPool_var01 *= C_-1 swPool_C

scoreboard players operation bounce_adjust_c swPool_var00 -= TABLE swPool_sizex
scoreboard players operation bounce_adjust_c swPool_var01 -= TABLE swPool_sizez

#3150=4400-1250, use fake corner edge

#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"corner edge v0 is "},{"score":{"objective":"swPool_var00","name":"@s"}}]
#execute if entity @s[tag=swPool_cush] run tellraw @a [{"text":"corner edge v1 is "},{"score":{"objective":"swPool_var01","name":"@s"}}]

execute if score bounce_adjust_c swPool_var00 matches -3150.. run tag @s add swPool_pktx
execute if score bounce_adjust_c swPool_var01 matches -3150.. run tag @s add swPool_pktz
#tag @s[tag=swPool_cush,scores={swPool_var00=-3150..}] add swPool_pktx
#tag @s[tag=swPool_cush,scores={swPool_var01=-3150..}] add swPool_pktz

# now, if after the touching cushion time, ball is near pocket, does not bounce and does not update mintime

tag @s remove swPool_nobounce_mintime
tag @s[tag=swPool_pktx,tag=swPool_pktz] add swPool_nobounce_mintime
tag @s[tag=swPool_pktm] add swPool_nobounce_mintime

#execute if entity @s[tag=swPool_cush,tag=swPool_nobounce_mintime] run say NO bounce due to close to pocket

execute if entity @s[tag=swPool_cush,tag=!swPool_nobounce_mintime] if score bouncetime swPool_hittime < MinTime swPool_hittime run tag @s add swPool_bounce
execute if entity @s[tag=swPool_cush,tag=!swPool_nobounce_mintime] if score bouncetime swPool_hittime < MinTime swPool_hittime run scoreboard players operation MinTime swPool_hittime = bouncetime swPool_hittime

# this is only done after bounce is determined...
scoreboard players operation @s[tag=swPool_cush,tag=!swPool_nobounce_mintime] swPool_var02 = @s swPool_v
scoreboard players operation @s[tag=swPool_cush,tag=!swPool_nobounce_mintime] swPool_v /= C_10000 swPool_C
scoreboard players operation @s[tag=swPool_cush,tag=!swPool_nobounce_mintime] swPool_v *= bouncetime swPool_hittime

#tellraw @a [{"text":"variable bouncetime is "},{"score":{"objective":"swPool_hittime","name":"bouncetime"}}]
#tellraw @a [{"text":"variable minTime is "},{"score":{"objective":"swPool_hittime","name":"MinTime"}}]

tag @s remove swPool_pktx
tag @s remove swPool_pktz
tag @s remove swPool_pktm

##### back to normal process


#tellraw @a [{"text":"variable swPool_v is "},{"score":{"objective":"swPool_v","name":"@s"}}]


