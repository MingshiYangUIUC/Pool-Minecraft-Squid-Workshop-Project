# generate a random integer with mean of 0 and standard deviation of 10000
# you can scale the output mean and standard deviation by + - and * /

function math:classes/core/random/randint_base
scoreboard players operation #vOut swMath_V %= #C_34642 swMath_C
scoreboard players operation #vOut swMath_V -= #C_17321 swMath_C

#tellraw @a [{"text":"Out: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]