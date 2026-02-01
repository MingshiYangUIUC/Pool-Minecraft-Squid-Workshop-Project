#reutn Q's magnitude (V)

scoreboard players operation #vIn swMath_V = #vAi swMath_V
function math:classes/core/operations/square
scoreboard players operation #iSqr swMath_V = #vOut swMath_V
scoreboard players operation #iMag swMath_V = #vOut_Mag swMath_V

scoreboard players operation #vIn swMath_V = #vAj swMath_V
function math:classes/core/operations/square
scoreboard players operation #jSqr swMath_V = #vOut swMath_V
scoreboard players operation #jMag swMath_V = #vOut_Mag swMath_V

scoreboard players operation #vIn swMath_V = #vAk swMath_V
function math:classes/core/operations/square
scoreboard players operation #kSqr swMath_V = #vOut swMath_V
scoreboard players operation #kMag swMath_V = #vOut_Mag swMath_V

scoreboard players operation #vIn swMath_V = #vAl swMath_V
function math:classes/core/operations/square
scoreboard players operation #lSqr swMath_V = #vOut swMath_V
scoreboard players operation #lMag swMath_V = #vOut_Mag swMath_V

scoreboard players set #maxMag swMath_V 0
scoreboard players operation #maxMag swMath_V > #iMag swMath_V
scoreboard players operation #maxMag swMath_V > #jMag swMath_V
scoreboard players operation #maxMag swMath_V > #kMag swMath_V
scoreboard players operation #maxMag swMath_V > #lMag swMath_V

scoreboard players operation #iSqr swMath_V /= #maxMag swMath_V
scoreboard players operation #jSqr swMath_V /= #maxMag swMath_V
scoreboard players operation #kSqr swMath_V /= #maxMag swMath_V
scoreboard players operation #lSqr swMath_V /= #maxMag swMath_V

scoreboard players operation #iSqr swMath_V *= #iMag swMath_V
scoreboard players operation #jSqr swMath_V *= #jMag swMath_V
scoreboard players operation #kSqr swMath_V *= #kMag swMath_V
scoreboard players operation #lSqr swMath_V *= #lMag swMath_V

#tellraw @a [{"text":"i: "},{"score":{"name": "#iSqr","objective": "swMath_V"}}]
#tellraw @a [{"text":"j: "},{"score":{"name": "#jSqr","objective": "swMath_V"}}]
#tellraw @a [{"text":"k: "},{"score":{"name": "#kSqr","objective": "swMath_V"}}]
#tellraw @a [{"text":"l: "},{"score":{"name": "#lSqr","objective": "swMath_V"}}]
#tellraw @a [{"text":"M: "},{"score":{"name": "#maxMag","objective": "swMath_V"}}]

scoreboard players operation #vIn swMath_V = #maxMag swMath_V
function math:classes/core/operations/sqrt
scoreboard players operation #magSqr swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = #iSqr swMath_V
scoreboard players operation #vIn swMath_V += #jSqr swMath_V
scoreboard players operation #vIn swMath_V += #kSqr swMath_V
scoreboard players operation #vIn swMath_V += #lSqr swMath_V

# if result is smaller than any inputs, unfortunately overflow happens and we need to rescale everything

execute unless score #vIn swMath_V >= #iSqr swMath_V unless score #vIn swMath_V >= #jSqr swMath_V unless score #vIn swMath_V >= #kSqr swMath_V unless score #vIn swMath_V >= #lSqr swMath_V run function pool:classes/pose_quat/q_magnitude_rescale10

#tellraw @a [{"text":"Osq: "},{"score":{"name": "#vIn","objective": "swMath_V"}}]

function math:classes/core/operations/sqrt
scoreboard players operation #vOut swMath_V *= #magSqr swMath_V
#tellraw @a [{"text":"O: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]
