function pool:classes/spin/testsetting
function pool:classes/spin/getcontactv
function pool:classes/spin/getatalpha_tilroll

tellraw @s [{"text":"v', "},{"score":{"objective":"swPool_vpx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vpy","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_vpz","name":"@s"}},{"text":" mag: "},{"score":{"objective":"swPool_Vmag","name":"O"}}]

tellraw @s [{"text":"acceleration, "},{"score":{"objective":"swPool_ax","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_ay","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_az","name":"@s"}}]

tellraw @s [{"text":"alpha, "},{"score":{"objective":"swPool_alx","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_aly","name":"@s"}},{"text":" "},{"score":{"objective":"swPool_alz","name":"@s"}}]

tellraw @s [{"text":"Time til roll, "},{"score":{"objective":"swPool_T_roll","name":"@s"}}]