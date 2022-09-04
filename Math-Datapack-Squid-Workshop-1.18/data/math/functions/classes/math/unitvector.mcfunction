# get unit vector of Aijk
# return Oijk's V
# ALSO RETURN magnitude!


######## OVERFLOW?

scoreboard players operation Oi swMath_V = Ai swMath_V
scoreboard players operation Oj swMath_V = Aj swMath_V
scoreboard players operation Ok swMath_V = Ak swMath_V

#tellraw @a [{"text":"unit 0 "},{"score":{"name":"Oi","objective":"swMath_V"}},{"text":" "},{"score":{"name":"Oj","objective":"swMath_V"}},{"text":" "},{"score":{"name":"Ok","objective":"swMath_V"}}]


function soccer:classes/math/magnitude


scoreboard players operation Oi swMath_V *= C_100 swMath_C
scoreboard players operation Oj swMath_V *= C_100 swMath_C
scoreboard players operation Ok swMath_V *= C_100 swMath_C

scoreboard players operation Oi swMath_V /= Omag swMath_V
scoreboard players operation Oj swMath_V /= Omag swMath_V
scoreboard players operation Ok swMath_V /= Omag swMath_V

scoreboard players operation Oi swMath_V *= C_100 swMath_C
scoreboard players operation Oj swMath_V *= C_100 swMath_C
scoreboard players operation Ok swMath_V *= C_100 swMath_C

#tellraw @a [{"text":"unit 1 "},{"score":{"name":"Oi","objective":"swMath_V"}},{"text":" "},{"score":{"name":"Oj","objective":"swMath_V"}},{"text":" "},{"score":{"name":"Ok","objective":"swMath_V"}}]
#tellraw @a [{"text":"unit mag "},{"score":{"name":"Omag","objective":"swMath_V"}}]