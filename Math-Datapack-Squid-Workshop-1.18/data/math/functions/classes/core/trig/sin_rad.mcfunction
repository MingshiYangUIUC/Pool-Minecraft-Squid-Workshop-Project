# input variable is vIn swMath_V
# output variable is vOut swMath_V

# preparation
scoreboard players operation x swMath_V = vIn swMath_V
scoreboard players add x swMath_V 31416
scoreboard players operation x swMath_V %= C_62832 swMath_C
scoreboard players remove x swMath_V 31416
scoreboard players set n swMath_V 1
execute if score x swMath_V matches ..-1 run scoreboard players set n swMath_V -1
execute if score x swMath_V matches ..-1 run scoreboard players operation x swMath_V *= C_-1 swMath_C
scoreboard players set f swMath_V 0
execute if score x swMath_V matches 15709.. run scoreboard players set f swMath_V 1
execute if score f swMath_V matches 1 run scoreboard players set x2 swMath_V 31416
execute if score f swMath_V matches 1 run scoreboard players operation x2 swMath_V -= x swMath_V
execute if score f swMath_V matches 1 run scoreboard players operation x swMath_V = x2 swMath_V

# calculation
scoreboard players set y swMath_V 58
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= C_10000 swMath_C
scoreboard players add y swMath_V 60
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= C_1000 swMath_C
scoreboard players remove y swMath_V 17205
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= C_100000 swMath_C
scoreboard players add y swMath_V 21
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= C_10000 swMath_C
scoreboard players add y swMath_V 9997
scoreboard players operation y swMath_V *= x swMath_V
scoreboard players operation y swMath_V /= C_10000 swMath_C
scoreboard players add y swMath_V 1
scoreboard players operation y swMath_V *= n swMath_V

# return
scoreboard players operation vOut swMath_V = y swMath_V
tellraw @a[tag=swMath_debug] [{"text":"Out: "},{"score":{"name": "vOut","objective": "swMath_V"}}]