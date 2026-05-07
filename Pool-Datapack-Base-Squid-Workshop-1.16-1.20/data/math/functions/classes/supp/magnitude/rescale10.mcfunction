# divide all input by 10

scoreboard players operation #vIn swMath_V = #vAi swMath_V
scoreboard players operation #vIn swMath_V /= #C_10 swMath_C
function math:classes/core/operations/square
scoreboard players operation #iSqr swMath_V = #vOut swMath_V
scoreboard players operation #iMag swMath_V = #vOut_Mag swMath_V

scoreboard players operation #vIn swMath_V = #vAj swMath_V
scoreboard players operation #vIn swMath_V /= #C_10 swMath_C
function math:classes/core/operations/square
scoreboard players operation #jSqr swMath_V = #vOut swMath_V
scoreboard players operation #jMag swMath_V = #vOut_Mag swMath_V

scoreboard players operation #vIn swMath_V = #vAk swMath_V
scoreboard players operation #vIn swMath_V /= #C_10 swMath_C
function math:classes/core/operations/square
scoreboard players operation #kSqr swMath_V = #vOut swMath_V
scoreboard players operation #kMag swMath_V = #vOut_Mag swMath_V

scoreboard players set #maxMag swMath_V 0
scoreboard players operation #maxMag swMath_V > #iMag swMath_V
scoreboard players operation #maxMag swMath_V > #jMag swMath_V
scoreboard players operation #maxMag swMath_V > #kMag swMath_V

# have to be 100mag for at least one input
execute if score #maxMag swMath_V matches ..99 run scoreboard players set #maxMag swMath_V 100

scoreboard players operation #iSqr swMath_V /= #maxMag swMath_V
scoreboard players operation #jSqr swMath_V /= #maxMag swMath_V
scoreboard players operation #kSqr swMath_V /= #maxMag swMath_V

scoreboard players operation #iSqr swMath_V *= #iMag swMath_V
scoreboard players operation #jSqr swMath_V *= #jMag swMath_V
scoreboard players operation #kSqr swMath_V *= #kMag swMath_V

#tellraw @a [{"text":"i: "},{"score":{"name": "#iSqr","objective": "swMath_V"}}]
#tellraw @a [{"text":"j: "},{"score":{"name": "#jSqr","objective": "swMath_V"}}]
#tellraw @a [{"text":"#k: "},{"score":{"name": "#kSqr","objective": "swMath_V"}}]
#tellraw @a [{"text":"M: "},{"score":{"name": "#maxMag","objective": "swMath_V"}}]

scoreboard players operation #vIn swMath_V = #maxMag swMath_V
function math:classes/core/operations/sqrt
scoreboard players operation #magSqr swMath_V = #vOut swMath_V
scoreboard players operation #magSqr swMath_V *= #C_10 swMath_C

scoreboard players operation #vIn swMath_V = #iSqr swMath_V
scoreboard players operation #vIn swMath_V += #jSqr swMath_V
scoreboard players operation #vIn swMath_V += #kSqr swMath_V