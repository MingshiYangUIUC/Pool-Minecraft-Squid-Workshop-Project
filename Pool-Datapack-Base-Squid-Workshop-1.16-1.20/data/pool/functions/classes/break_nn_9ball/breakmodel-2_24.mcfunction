



#Process Layer 0

scoreboard players set #div0 swMath_V 24
scoreboard players set #div1 swMath_V 417
scoreboard players operation #x0_0 swMath_V /= #div0 swMath_V
scoreboard players operation #x0_1 swMath_V /= #div0 swMath_V
scoreboard players operation #x0_2 swMath_V /= #div0 swMath_V
scoreboard players operation #x0_3 swMath_V /= #div0 swMath_V

scoreboard players set #x1_0 swMath_V 0
scoreboard players set #bl_0 swMath_V 11528
scoreboard players set #wl_00 swMath_V 10000
scoreboard players operation #wl_00 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_00 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_0 swMath_V += #wl_00 swMath_V
scoreboard players set #wl_01 swMath_V -9294
scoreboard players operation #wl_01 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_01 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_0 swMath_V += #wl_01 swMath_V
scoreboard players set #wl_02 swMath_V 1895
scoreboard players operation #wl_02 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_02 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_0 swMath_V += #wl_02 swMath_V
scoreboard players set #wl_03 swMath_V -2392
scoreboard players operation #wl_03 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_03 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_0 swMath_V += #wl_03 swMath_V
scoreboard players operation #x1_0 swMath_V += #bl_0 swMath_V
execute if score #x1_0 swMath_V matches ..-1 run scoreboard players set #x1_0 swMath_V 0


scoreboard players set #x1_1 swMath_V 0
scoreboard players set #bl_1 swMath_V 9356
scoreboard players set #wl_10 swMath_V 8946
scoreboard players operation #wl_10 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_10 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_1 swMath_V += #wl_10 swMath_V
scoreboard players set #wl_11 swMath_V 9373
scoreboard players operation #wl_11 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_11 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_1 swMath_V += #wl_11 swMath_V
scoreboard players set #wl_12 swMath_V 5079
scoreboard players operation #wl_12 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_12 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_1 swMath_V += #wl_12 swMath_V
scoreboard players set #wl_13 swMath_V -1022
scoreboard players operation #wl_13 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_13 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_1 swMath_V += #wl_13 swMath_V
scoreboard players operation #x1_1 swMath_V += #bl_1 swMath_V
execute if score #x1_1 swMath_V matches ..-1 run scoreboard players set #x1_1 swMath_V 0


scoreboard players set #x1_2 swMath_V 0
scoreboard players set #bl_2 swMath_V -2887
scoreboard players set #wl_20 swMath_V -2411
scoreboard players operation #wl_20 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_20 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_2 swMath_V += #wl_20 swMath_V
scoreboard players set #wl_21 swMath_V -9928
scoreboard players operation #wl_21 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_21 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_2 swMath_V += #wl_21 swMath_V
scoreboard players set #wl_22 swMath_V 945
scoreboard players operation #wl_22 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_22 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_2 swMath_V += #wl_22 swMath_V
scoreboard players set #wl_23 swMath_V -5
scoreboard players operation #wl_23 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_23 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_2 swMath_V += #wl_23 swMath_V
scoreboard players operation #x1_2 swMath_V += #bl_2 swMath_V
execute if score #x1_2 swMath_V matches ..-1 run scoreboard players set #x1_2 swMath_V 0


scoreboard players set #x1_3 swMath_V 0
scoreboard players set #bl_3 swMath_V 3930
scoreboard players set #wl_30 swMath_V -1146
scoreboard players operation #wl_30 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_30 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_3 swMath_V += #wl_30 swMath_V
scoreboard players set #wl_31 swMath_V -1564
scoreboard players operation #wl_31 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_31 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_3 swMath_V += #wl_31 swMath_V
scoreboard players set #wl_32 swMath_V 1976
scoreboard players operation #wl_32 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_32 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_3 swMath_V += #wl_32 swMath_V
scoreboard players set #wl_33 swMath_V 3294
scoreboard players operation #wl_33 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_33 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_3 swMath_V += #wl_33 swMath_V
scoreboard players operation #x1_3 swMath_V += #bl_3 swMath_V
execute if score #x1_3 swMath_V matches ..-1 run scoreboard players set #x1_3 swMath_V 0


scoreboard players set #x1_4 swMath_V 0
scoreboard players set #bl_4 swMath_V 11711
scoreboard players set #wl_40 swMath_V 1817
scoreboard players operation #wl_40 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_40 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_4 swMath_V += #wl_40 swMath_V
scoreboard players set #wl_41 swMath_V -6214
scoreboard players operation #wl_41 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_41 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_4 swMath_V += #wl_41 swMath_V
scoreboard players set #wl_42 swMath_V 3733
scoreboard players operation #wl_42 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_42 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_4 swMath_V += #wl_42 swMath_V
scoreboard players set #wl_43 swMath_V -1912
scoreboard players operation #wl_43 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_43 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_4 swMath_V += #wl_43 swMath_V
scoreboard players operation #x1_4 swMath_V += #bl_4 swMath_V
execute if score #x1_4 swMath_V matches ..-1 run scoreboard players set #x1_4 swMath_V 0


scoreboard players set #x1_5 swMath_V 0
scoreboard players set #bl_5 swMath_V -1021
scoreboard players set #wl_50 swMath_V 10000
scoreboard players operation #wl_50 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_50 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_5 swMath_V += #wl_50 swMath_V
scoreboard players set #wl_51 swMath_V -5427
scoreboard players operation #wl_51 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_51 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_5 swMath_V += #wl_51 swMath_V
scoreboard players set #wl_52 swMath_V -932
scoreboard players operation #wl_52 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_52 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_5 swMath_V += #wl_52 swMath_V
scoreboard players set #wl_53 swMath_V -398
scoreboard players operation #wl_53 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_53 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_5 swMath_V += #wl_53 swMath_V
scoreboard players operation #x1_5 swMath_V += #bl_5 swMath_V
execute if score #x1_5 swMath_V matches ..-1 run scoreboard players set #x1_5 swMath_V 0


scoreboard players set #x1_6 swMath_V 0
scoreboard players set #bl_6 swMath_V 2020
scoreboard players set #wl_60 swMath_V 5517
scoreboard players operation #wl_60 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_60 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_6 swMath_V += #wl_60 swMath_V
scoreboard players set #wl_61 swMath_V 6797
scoreboard players operation #wl_61 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_61 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_6 swMath_V += #wl_61 swMath_V
scoreboard players set #wl_62 swMath_V 3225
scoreboard players operation #wl_62 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_62 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_6 swMath_V += #wl_62 swMath_V
scoreboard players set #wl_63 swMath_V -497
scoreboard players operation #wl_63 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_63 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_6 swMath_V += #wl_63 swMath_V
scoreboard players operation #x1_6 swMath_V += #bl_6 swMath_V
execute if score #x1_6 swMath_V matches ..-1 run scoreboard players set #x1_6 swMath_V 0


scoreboard players set #x1_7 swMath_V 0
scoreboard players set #bl_7 swMath_V 3764
scoreboard players set #wl_70 swMath_V 7614
scoreboard players operation #wl_70 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_70 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_7 swMath_V += #wl_70 swMath_V
scoreboard players set #wl_71 swMath_V 9994
scoreboard players operation #wl_71 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_71 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_7 swMath_V += #wl_71 swMath_V
scoreboard players set #wl_72 swMath_V 1461
scoreboard players operation #wl_72 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_72 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_7 swMath_V += #wl_72 swMath_V
scoreboard players set #wl_73 swMath_V -3698
scoreboard players operation #wl_73 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_73 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_7 swMath_V += #wl_73 swMath_V
scoreboard players operation #x1_7 swMath_V += #bl_7 swMath_V
execute if score #x1_7 swMath_V matches ..-1 run scoreboard players set #x1_7 swMath_V 0


scoreboard players set #x1_8 swMath_V 0
scoreboard players set #bl_8 swMath_V -1884
scoreboard players set #wl_80 swMath_V 7725
scoreboard players operation #wl_80 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_80 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_8 swMath_V += #wl_80 swMath_V
scoreboard players set #wl_81 swMath_V 4847
scoreboard players operation #wl_81 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_81 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_8 swMath_V += #wl_81 swMath_V
scoreboard players set #wl_82 swMath_V 1391
scoreboard players operation #wl_82 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_82 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_8 swMath_V += #wl_82 swMath_V
scoreboard players set #wl_83 swMath_V 1710
scoreboard players operation #wl_83 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_83 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_8 swMath_V += #wl_83 swMath_V
scoreboard players operation #x1_8 swMath_V += #bl_8 swMath_V
execute if score #x1_8 swMath_V matches ..-1 run scoreboard players set #x1_8 swMath_V 0


scoreboard players set #x1_9 swMath_V 0
scoreboard players set #bl_9 swMath_V -4425
scoreboard players set #wl_90 swMath_V 10000
scoreboard players operation #wl_90 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_90 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_9 swMath_V += #wl_90 swMath_V
scoreboard players set #wl_91 swMath_V 7723
scoreboard players operation #wl_91 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_91 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_9 swMath_V += #wl_91 swMath_V
scoreboard players set #wl_92 swMath_V 1048
scoreboard players operation #wl_92 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_92 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_9 swMath_V += #wl_92 swMath_V
scoreboard players set #wl_93 swMath_V 781
scoreboard players operation #wl_93 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_93 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_9 swMath_V += #wl_93 swMath_V
scoreboard players operation #x1_9 swMath_V += #bl_9 swMath_V
execute if score #x1_9 swMath_V matches ..-1 run scoreboard players set #x1_9 swMath_V 0


scoreboard players set #x1_10 swMath_V 0
scoreboard players set #bl_10 swMath_V -1360
scoreboard players set #wl_100 swMath_V -2360
scoreboard players operation #wl_100 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_100 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_10 swMath_V += #wl_100 swMath_V
scoreboard players set #wl_101 swMath_V -5539
scoreboard players operation #wl_101 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_101 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_10 swMath_V += #wl_101 swMath_V
scoreboard players set #wl_102 swMath_V -1469
scoreboard players operation #wl_102 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_102 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_10 swMath_V += #wl_102 swMath_V
scoreboard players set #wl_103 swMath_V -3957
scoreboard players operation #wl_103 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_103 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_10 swMath_V += #wl_103 swMath_V
scoreboard players operation #x1_10 swMath_V += #bl_10 swMath_V
execute if score #x1_10 swMath_V matches ..-1 run scoreboard players set #x1_10 swMath_V 0


scoreboard players set #x1_11 swMath_V 0
scoreboard players set #bl_11 swMath_V -4212
scoreboard players set #wl_110 swMath_V -1945
scoreboard players operation #wl_110 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_110 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_11 swMath_V += #wl_110 swMath_V
scoreboard players set #wl_111 swMath_V 476
scoreboard players operation #wl_111 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_111 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_11 swMath_V += #wl_111 swMath_V
scoreboard players set #wl_112 swMath_V 1442
scoreboard players operation #wl_112 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_112 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_11 swMath_V += #wl_112 swMath_V
scoreboard players set #wl_113 swMath_V -5730
scoreboard players operation #wl_113 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_113 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_11 swMath_V += #wl_113 swMath_V
scoreboard players operation #x1_11 swMath_V += #bl_11 swMath_V
execute if score #x1_11 swMath_V matches ..-1 run scoreboard players set #x1_11 swMath_V 0


scoreboard players set #x1_12 swMath_V 0
scoreboard players set #bl_12 swMath_V 2416
scoreboard players set #wl_120 swMath_V -6170
scoreboard players operation #wl_120 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_120 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_12 swMath_V += #wl_120 swMath_V
scoreboard players set #wl_121 swMath_V 9992
scoreboard players operation #wl_121 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_121 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_12 swMath_V += #wl_121 swMath_V
scoreboard players set #wl_122 swMath_V -1705
scoreboard players operation #wl_122 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_122 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_12 swMath_V += #wl_122 swMath_V
scoreboard players set #wl_123 swMath_V 386
scoreboard players operation #wl_123 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_123 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_12 swMath_V += #wl_123 swMath_V
scoreboard players operation #x1_12 swMath_V += #bl_12 swMath_V
execute if score #x1_12 swMath_V matches ..-1 run scoreboard players set #x1_12 swMath_V 0


scoreboard players set #x1_13 swMath_V 0
scoreboard players set #bl_13 swMath_V -2837
scoreboard players set #wl_130 swMath_V 2730
scoreboard players operation #wl_130 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_130 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_13 swMath_V += #wl_130 swMath_V
scoreboard players set #wl_131 swMath_V 2224
scoreboard players operation #wl_131 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_131 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_13 swMath_V += #wl_131 swMath_V
scoreboard players set #wl_132 swMath_V -2534
scoreboard players operation #wl_132 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_132 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_13 swMath_V += #wl_132 swMath_V
scoreboard players set #wl_133 swMath_V 3067
scoreboard players operation #wl_133 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_133 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_13 swMath_V += #wl_133 swMath_V
scoreboard players operation #x1_13 swMath_V += #bl_13 swMath_V
execute if score #x1_13 swMath_V matches ..-1 run scoreboard players set #x1_13 swMath_V 0


scoreboard players set #x1_14 swMath_V 0
scoreboard players set #bl_14 swMath_V -1414
scoreboard players set #wl_140 swMath_V -1005
scoreboard players operation #wl_140 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_140 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_14 swMath_V += #wl_140 swMath_V
scoreboard players set #wl_141 swMath_V 2576
scoreboard players operation #wl_141 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_141 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_14 swMath_V += #wl_141 swMath_V
scoreboard players set #wl_142 swMath_V -6692
scoreboard players operation #wl_142 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_142 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_14 swMath_V += #wl_142 swMath_V
scoreboard players set #wl_143 swMath_V 3146
scoreboard players operation #wl_143 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_143 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_14 swMath_V += #wl_143 swMath_V
scoreboard players operation #x1_14 swMath_V += #bl_14 swMath_V
execute if score #x1_14 swMath_V matches ..-1 run scoreboard players set #x1_14 swMath_V 0


scoreboard players set #x1_15 swMath_V 0
scoreboard players set #bl_15 swMath_V 4996
scoreboard players set #wl_150 swMath_V 9992
scoreboard players operation #wl_150 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_150 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_15 swMath_V += #wl_150 swMath_V
scoreboard players set #wl_151 swMath_V 4124
scoreboard players operation #wl_151 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_151 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_15 swMath_V += #wl_151 swMath_V
scoreboard players set #wl_152 swMath_V -448
scoreboard players operation #wl_152 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_152 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_15 swMath_V += #wl_152 swMath_V
scoreboard players set #wl_153 swMath_V 659
scoreboard players operation #wl_153 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_153 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_15 swMath_V += #wl_153 swMath_V
scoreboard players operation #x1_15 swMath_V += #bl_15 swMath_V
execute if score #x1_15 swMath_V matches ..-1 run scoreboard players set #x1_15 swMath_V 0


scoreboard players set #x1_16 swMath_V 0
scoreboard players set #bl_16 swMath_V 9143
scoreboard players set #wl_160 swMath_V 1706
scoreboard players operation #wl_160 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_160 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_16 swMath_V += #wl_160 swMath_V
scoreboard players set #wl_161 swMath_V -9990
scoreboard players operation #wl_161 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_161 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_16 swMath_V += #wl_161 swMath_V
scoreboard players set #wl_162 swMath_V 545
scoreboard players operation #wl_162 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_162 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_16 swMath_V += #wl_162 swMath_V
scoreboard players set #wl_163 swMath_V -4854
scoreboard players operation #wl_163 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_163 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_16 swMath_V += #wl_163 swMath_V
scoreboard players operation #x1_16 swMath_V += #bl_16 swMath_V
execute if score #x1_16 swMath_V matches ..-1 run scoreboard players set #x1_16 swMath_V 0


scoreboard players set #x1_17 swMath_V 0
scoreboard players set #bl_17 swMath_V 630
scoreboard players set #wl_170 swMath_V 4387
scoreboard players operation #wl_170 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_170 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_17 swMath_V += #wl_170 swMath_V
scoreboard players set #wl_171 swMath_V -1876
scoreboard players operation #wl_171 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_171 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_17 swMath_V += #wl_171 swMath_V
scoreboard players set #wl_172 swMath_V -2217
scoreboard players operation #wl_172 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_172 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_17 swMath_V += #wl_172 swMath_V
scoreboard players set #wl_173 swMath_V -6558
scoreboard players operation #wl_173 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_173 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_17 swMath_V += #wl_173 swMath_V
scoreboard players operation #x1_17 swMath_V += #bl_17 swMath_V
execute if score #x1_17 swMath_V matches ..-1 run scoreboard players set #x1_17 swMath_V 0


scoreboard players set #x1_18 swMath_V 0
scoreboard players set #bl_18 swMath_V 2224
scoreboard players set #wl_180 swMath_V 371
scoreboard players operation #wl_180 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_180 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_18 swMath_V += #wl_180 swMath_V
scoreboard players set #wl_181 swMath_V 2999
scoreboard players operation #wl_181 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_181 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_18 swMath_V += #wl_181 swMath_V
scoreboard players set #wl_182 swMath_V 1725
scoreboard players operation #wl_182 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_182 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_18 swMath_V += #wl_182 swMath_V
scoreboard players set #wl_183 swMath_V 6365
scoreboard players operation #wl_183 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_183 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_18 swMath_V += #wl_183 swMath_V
scoreboard players operation #x1_18 swMath_V += #bl_18 swMath_V
execute if score #x1_18 swMath_V matches ..-1 run scoreboard players set #x1_18 swMath_V 0


scoreboard players set #x1_19 swMath_V 0
scoreboard players set #bl_19 swMath_V -2772
scoreboard players set #wl_190 swMath_V 787
scoreboard players operation #wl_190 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_190 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_19 swMath_V += #wl_190 swMath_V
scoreboard players set #wl_191 swMath_V 1406
scoreboard players operation #wl_191 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_191 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_19 swMath_V += #wl_191 swMath_V
scoreboard players set #wl_192 swMath_V -589
scoreboard players operation #wl_192 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_192 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_19 swMath_V += #wl_192 swMath_V
scoreboard players set #wl_193 swMath_V -4916
scoreboard players operation #wl_193 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_193 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_19 swMath_V += #wl_193 swMath_V
scoreboard players operation #x1_19 swMath_V += #bl_19 swMath_V
execute if score #x1_19 swMath_V matches ..-1 run scoreboard players set #x1_19 swMath_V 0


scoreboard players set #x1_20 swMath_V 0
scoreboard players set #bl_20 swMath_V 3070
scoreboard players set #wl_200 swMath_V -2711
scoreboard players operation #wl_200 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_200 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_20 swMath_V += #wl_200 swMath_V
scoreboard players set #wl_201 swMath_V 5166
scoreboard players operation #wl_201 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_201 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_20 swMath_V += #wl_201 swMath_V
scoreboard players set #wl_202 swMath_V -4551
scoreboard players operation #wl_202 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_202 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_20 swMath_V += #wl_202 swMath_V
scoreboard players set #wl_203 swMath_V -91
scoreboard players operation #wl_203 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_203 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_20 swMath_V += #wl_203 swMath_V
scoreboard players operation #x1_20 swMath_V += #bl_20 swMath_V
execute if score #x1_20 swMath_V matches ..-1 run scoreboard players set #x1_20 swMath_V 0


scoreboard players set #x1_21 swMath_V 0
scoreboard players set #bl_21 swMath_V 8827
scoreboard players set #wl_210 swMath_V 1486
scoreboard players operation #wl_210 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_210 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_21 swMath_V += #wl_210 swMath_V
scoreboard players set #wl_211 swMath_V -1599
scoreboard players operation #wl_211 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_211 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_21 swMath_V += #wl_211 swMath_V
scoreboard players set #wl_212 swMath_V 1268
scoreboard players operation #wl_212 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_212 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_21 swMath_V += #wl_212 swMath_V
scoreboard players set #wl_213 swMath_V -3829
scoreboard players operation #wl_213 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_213 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_21 swMath_V += #wl_213 swMath_V
scoreboard players operation #x1_21 swMath_V += #bl_21 swMath_V
execute if score #x1_21 swMath_V matches ..-1 run scoreboard players set #x1_21 swMath_V 0


scoreboard players set #x1_22 swMath_V 0
scoreboard players set #bl_22 swMath_V -521
scoreboard players set #wl_220 swMath_V 497
scoreboard players operation #wl_220 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_220 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_22 swMath_V += #wl_220 swMath_V
scoreboard players set #wl_221 swMath_V 4286
scoreboard players operation #wl_221 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_221 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_22 swMath_V += #wl_221 swMath_V
scoreboard players set #wl_222 swMath_V 6433
scoreboard players operation #wl_222 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_222 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_22 swMath_V += #wl_222 swMath_V
scoreboard players set #wl_223 swMath_V 1628
scoreboard players operation #wl_223 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_223 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_22 swMath_V += #wl_223 swMath_V
scoreboard players operation #x1_22 swMath_V += #bl_22 swMath_V
execute if score #x1_22 swMath_V matches ..-1 run scoreboard players set #x1_22 swMath_V 0


scoreboard players set #x1_23 swMath_V 0
scoreboard players set #bl_23 swMath_V 2034
scoreboard players set #wl_230 swMath_V 3768
scoreboard players operation #wl_230 swMath_V *= #x0_0 swMath_V
scoreboard players operation #wl_230 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_23 swMath_V += #wl_230 swMath_V
scoreboard players set #wl_231 swMath_V -742
scoreboard players operation #wl_231 swMath_V *= #x0_1 swMath_V
scoreboard players operation #wl_231 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_23 swMath_V += #wl_231 swMath_V
scoreboard players set #wl_232 swMath_V 5260
scoreboard players operation #wl_232 swMath_V *= #x0_2 swMath_V
scoreboard players operation #wl_232 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_23 swMath_V += #wl_232 swMath_V
scoreboard players set #wl_233 swMath_V -157
scoreboard players operation #wl_233 swMath_V *= #x0_3 swMath_V
scoreboard players operation #wl_233 swMath_V /= #div1 swMath_V
scoreboard players operation #x1_23 swMath_V += #wl_233 swMath_V
scoreboard players operation #x1_23 swMath_V += #bl_23 swMath_V
execute if score #x1_23 swMath_V matches ..-1 run scoreboard players set #x1_23 swMath_V 0




#Process Layer 1

scoreboard players set #div0 swMath_V 24
scoreboard players set #div1 swMath_V 417
scoreboard players operation #x1_0 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_1 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_2 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_3 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_4 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_5 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_6 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_7 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_8 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_9 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_10 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_11 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_12 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_13 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_14 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_15 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_16 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_17 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_18 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_19 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_20 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_21 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_22 swMath_V /= #div0 swMath_V
scoreboard players operation #x1_23 swMath_V /= #div0 swMath_V

scoreboard players set #x2_0 swMath_V 0
scoreboard players set #bl_0 swMath_V 1149
scoreboard players set #wl_00 swMath_V 37
scoreboard players operation #wl_00 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_00 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_00 swMath_V
scoreboard players set #wl_01 swMath_V 6285
scoreboard players operation #wl_01 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_01 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_01 swMath_V
scoreboard players set #wl_02 swMath_V 4830
scoreboard players operation #wl_02 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_02 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_02 swMath_V
scoreboard players set #wl_03 swMath_V 489
scoreboard players operation #wl_03 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_03 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_03 swMath_V
scoreboard players set #wl_04 swMath_V -1576
scoreboard players operation #wl_04 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_04 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_04 swMath_V
scoreboard players set #wl_05 swMath_V -304
scoreboard players operation #wl_05 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_05 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_05 swMath_V
scoreboard players set #wl_06 swMath_V -4166
scoreboard players operation #wl_06 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_06 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_06 swMath_V
scoreboard players set #wl_07 swMath_V -2891
scoreboard players operation #wl_07 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_07 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_07 swMath_V
scoreboard players set #wl_08 swMath_V 621
scoreboard players operation #wl_08 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_08 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_08 swMath_V
scoreboard players set #wl_09 swMath_V 802
scoreboard players operation #wl_09 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_09 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_09 swMath_V
scoreboard players set #wl_010 swMath_V -3078
scoreboard players operation #wl_010 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_010 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_010 swMath_V
scoreboard players set #wl_011 swMath_V -722
scoreboard players operation #wl_011 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_011 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_011 swMath_V
scoreboard players set #wl_012 swMath_V 1722
scoreboard players operation #wl_012 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_012 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_012 swMath_V
scoreboard players set #wl_013 swMath_V 2238
scoreboard players operation #wl_013 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_013 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_013 swMath_V
scoreboard players set #wl_014 swMath_V 571
scoreboard players operation #wl_014 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_014 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_014 swMath_V
scoreboard players set #wl_015 swMath_V -1394
scoreboard players operation #wl_015 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_015 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_015 swMath_V
scoreboard players set #wl_016 swMath_V -5372
scoreboard players operation #wl_016 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_016 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_016 swMath_V
scoreboard players set #wl_017 swMath_V -5744
scoreboard players operation #wl_017 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_017 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_017 swMath_V
scoreboard players set #wl_018 swMath_V -4414
scoreboard players operation #wl_018 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_018 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_018 swMath_V
scoreboard players set #wl_019 swMath_V 1483
scoreboard players operation #wl_019 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_019 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_019 swMath_V
scoreboard players set #wl_020 swMath_V 550
scoreboard players operation #wl_020 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_020 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_020 swMath_V
scoreboard players set #wl_021 swMath_V 4071
scoreboard players operation #wl_021 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_021 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_021 swMath_V
scoreboard players set #wl_022 swMath_V -2698
scoreboard players operation #wl_022 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_022 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_022 swMath_V
scoreboard players set #wl_023 swMath_V -2060
scoreboard players operation #wl_023 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_023 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_0 swMath_V += #wl_023 swMath_V
scoreboard players operation #x2_0 swMath_V += #bl_0 swMath_V
execute if score #x2_0 swMath_V matches ..-1 run scoreboard players set #x2_0 swMath_V 0


scoreboard players set #x2_1 swMath_V 0
scoreboard players set #bl_1 swMath_V -333
scoreboard players set #wl_10 swMath_V 1554
scoreboard players operation #wl_10 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_10 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_10 swMath_V
scoreboard players set #wl_11 swMath_V -586
scoreboard players operation #wl_11 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_11 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_11 swMath_V
scoreboard players set #wl_12 swMath_V -2012
scoreboard players operation #wl_12 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_12 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_12 swMath_V
scoreboard players set #wl_13 swMath_V -1665
scoreboard players operation #wl_13 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_13 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_13 swMath_V
scoreboard players set #wl_14 swMath_V 2268
scoreboard players operation #wl_14 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_14 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_14 swMath_V
scoreboard players set #wl_15 swMath_V 892
scoreboard players operation #wl_15 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_15 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_15 swMath_V
scoreboard players set #wl_16 swMath_V 125
scoreboard players operation #wl_16 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_16 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_16 swMath_V
scoreboard players set #wl_17 swMath_V 348
scoreboard players operation #wl_17 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_17 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_17 swMath_V
scoreboard players set #wl_18 swMath_V -246
scoreboard players operation #wl_18 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_18 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_18 swMath_V
scoreboard players set #wl_19 swMath_V -1957
scoreboard players operation #wl_19 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_19 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_19 swMath_V
scoreboard players set #wl_110 swMath_V 362
scoreboard players operation #wl_110 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_110 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_110 swMath_V
scoreboard players set #wl_111 swMath_V -40
scoreboard players operation #wl_111 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_111 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_111 swMath_V
scoreboard players set #wl_112 swMath_V -10000
scoreboard players operation #wl_112 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_112 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_112 swMath_V
scoreboard players set #wl_113 swMath_V 108
scoreboard players operation #wl_113 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_113 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_113 swMath_V
scoreboard players set #wl_114 swMath_V 673
scoreboard players operation #wl_114 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_114 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_114 swMath_V
scoreboard players set #wl_115 swMath_V 1065
scoreboard players operation #wl_115 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_115 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_115 swMath_V
scoreboard players set #wl_116 swMath_V -10000
scoreboard players operation #wl_116 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_116 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_116 swMath_V
scoreboard players set #wl_117 swMath_V 1675
scoreboard players operation #wl_117 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_117 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_117 swMath_V
scoreboard players set #wl_118 swMath_V -1590
scoreboard players operation #wl_118 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_118 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_118 swMath_V
scoreboard players set #wl_119 swMath_V 473
scoreboard players operation #wl_119 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_119 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_119 swMath_V
scoreboard players set #wl_120 swMath_V -937
scoreboard players operation #wl_120 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_120 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_120 swMath_V
scoreboard players set #wl_121 swMath_V 1145
scoreboard players operation #wl_121 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_121 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_121 swMath_V
scoreboard players set #wl_122 swMath_V -1942
scoreboard players operation #wl_122 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_122 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_122 swMath_V
scoreboard players set #wl_123 swMath_V -576
scoreboard players operation #wl_123 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_123 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_1 swMath_V += #wl_123 swMath_V
scoreboard players operation #x2_1 swMath_V += #bl_1 swMath_V
execute if score #x2_1 swMath_V matches ..-1 run scoreboard players set #x2_1 swMath_V 0


scoreboard players set #x2_2 swMath_V 0
scoreboard players set #bl_2 swMath_V -2244
scoreboard players set #wl_20 swMath_V -166
scoreboard players operation #wl_20 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_20 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_20 swMath_V
scoreboard players set #wl_21 swMath_V 201
scoreboard players operation #wl_21 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_21 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_21 swMath_V
scoreboard players set #wl_22 swMath_V 687
scoreboard players operation #wl_22 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_22 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_22 swMath_V
scoreboard players set #wl_23 swMath_V -1195
scoreboard players operation #wl_23 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_23 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_23 swMath_V
scoreboard players set #wl_24 swMath_V 1022
scoreboard players operation #wl_24 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_24 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_24 swMath_V
scoreboard players set #wl_25 swMath_V -1614
scoreboard players operation #wl_25 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_25 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_25 swMath_V
scoreboard players set #wl_26 swMath_V -400
scoreboard players operation #wl_26 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_26 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_26 swMath_V
scoreboard players set #wl_27 swMath_V 1323
scoreboard players operation #wl_27 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_27 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_27 swMath_V
scoreboard players set #wl_28 swMath_V -1667
scoreboard players operation #wl_28 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_28 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_28 swMath_V
scoreboard players set #wl_29 swMath_V 917
scoreboard players operation #wl_29 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_29 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_29 swMath_V
scoreboard players set #wl_210 swMath_V -1688
scoreboard players operation #wl_210 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_210 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_210 swMath_V
scoreboard players set #wl_211 swMath_V -1329
scoreboard players operation #wl_211 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_211 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_211 swMath_V
scoreboard players set #wl_212 swMath_V -1931
scoreboard players operation #wl_212 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_212 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_212 swMath_V
scoreboard players set #wl_213 swMath_V -501
scoreboard players operation #wl_213 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_213 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_213 swMath_V
scoreboard players set #wl_214 swMath_V -1496
scoreboard players operation #wl_214 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_214 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_214 swMath_V
scoreboard players set #wl_215 swMath_V -1884
scoreboard players operation #wl_215 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_215 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_215 swMath_V
scoreboard players set #wl_216 swMath_V -2089
scoreboard players operation #wl_216 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_216 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_216 swMath_V
scoreboard players set #wl_217 swMath_V 192
scoreboard players operation #wl_217 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_217 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_217 swMath_V
scoreboard players set #wl_218 swMath_V 1455
scoreboard players operation #wl_218 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_218 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_218 swMath_V
scoreboard players set #wl_219 swMath_V 1168
scoreboard players operation #wl_219 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_219 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_219 swMath_V
scoreboard players set #wl_220 swMath_V -1083
scoreboard players operation #wl_220 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_220 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_220 swMath_V
scoreboard players set #wl_221 swMath_V -363
scoreboard players operation #wl_221 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_221 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_221 swMath_V
scoreboard players set #wl_222 swMath_V 422
scoreboard players operation #wl_222 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_222 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_222 swMath_V
scoreboard players set #wl_223 swMath_V -252
scoreboard players operation #wl_223 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_223 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_2 swMath_V += #wl_223 swMath_V
scoreboard players operation #x2_2 swMath_V += #bl_2 swMath_V
execute if score #x2_2 swMath_V matches ..-1 run scoreboard players set #x2_2 swMath_V 0


scoreboard players set #x2_3 swMath_V 0
scoreboard players set #bl_3 swMath_V 3690
scoreboard players set #wl_30 swMath_V -10000
scoreboard players operation #wl_30 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_30 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_30 swMath_V
scoreboard players set #wl_31 swMath_V -3416
scoreboard players operation #wl_31 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_31 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_31 swMath_V
scoreboard players set #wl_32 swMath_V 476
scoreboard players operation #wl_32 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_32 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_32 swMath_V
scoreboard players set #wl_33 swMath_V -386
scoreboard players operation #wl_33 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_33 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_33 swMath_V
scoreboard players set #wl_34 swMath_V -3002
scoreboard players operation #wl_34 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_34 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_34 swMath_V
scoreboard players set #wl_35 swMath_V -10000
scoreboard players operation #wl_35 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_35 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_35 swMath_V
scoreboard players set #wl_36 swMath_V 5423
scoreboard players operation #wl_36 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_36 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_36 swMath_V
scoreboard players set #wl_37 swMath_V 1138
scoreboard players operation #wl_37 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_37 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_37 swMath_V
scoreboard players set #wl_38 swMath_V -1522
scoreboard players operation #wl_38 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_38 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_38 swMath_V
scoreboard players set #wl_39 swMath_V -3867
scoreboard players operation #wl_39 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_39 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_39 swMath_V
scoreboard players set #wl_310 swMath_V 1769
scoreboard players operation #wl_310 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_310 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_310 swMath_V
scoreboard players set #wl_311 swMath_V -1265
scoreboard players operation #wl_311 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_311 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_311 swMath_V
scoreboard players set #wl_312 swMath_V -77
scoreboard players operation #wl_312 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_312 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_312 swMath_V
scoreboard players set #wl_313 swMath_V 1678
scoreboard players operation #wl_313 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_313 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_313 swMath_V
scoreboard players set #wl_314 swMath_V 2434
scoreboard players operation #wl_314 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_314 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_314 swMath_V
scoreboard players set #wl_315 swMath_V 2615
scoreboard players operation #wl_315 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_315 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_315 swMath_V
scoreboard players set #wl_316 swMath_V -3325
scoreboard players operation #wl_316 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_316 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_316 swMath_V
scoreboard players set #wl_317 swMath_V -365
scoreboard players operation #wl_317 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_317 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_317 swMath_V
scoreboard players set #wl_318 swMath_V -524
scoreboard players operation #wl_318 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_318 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_318 swMath_V
scoreboard players set #wl_319 swMath_V 827
scoreboard players operation #wl_319 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_319 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_319 swMath_V
scoreboard players set #wl_320 swMath_V -170
scoreboard players operation #wl_320 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_320 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_320 swMath_V
scoreboard players set #wl_321 swMath_V 3788
scoreboard players operation #wl_321 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_321 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_321 swMath_V
scoreboard players set #wl_322 swMath_V -673
scoreboard players operation #wl_322 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_322 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_322 swMath_V
scoreboard players set #wl_323 swMath_V 1218
scoreboard players operation #wl_323 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_323 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_3 swMath_V += #wl_323 swMath_V
scoreboard players operation #x2_3 swMath_V += #bl_3 swMath_V
execute if score #x2_3 swMath_V matches ..-1 run scoreboard players set #x2_3 swMath_V 0


scoreboard players set #x2_4 swMath_V 0
scoreboard players set #bl_4 swMath_V -673
scoreboard players set #wl_40 swMath_V 719
scoreboard players operation #wl_40 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_40 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_40 swMath_V
scoreboard players set #wl_41 swMath_V -1750
scoreboard players operation #wl_41 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_41 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_41 swMath_V
scoreboard players set #wl_42 swMath_V 382
scoreboard players operation #wl_42 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_42 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_42 swMath_V
scoreboard players set #wl_43 swMath_V -2825
scoreboard players operation #wl_43 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_43 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_43 swMath_V
scoreboard players set #wl_44 swMath_V 271
scoreboard players operation #wl_44 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_44 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_44 swMath_V
scoreboard players set #wl_45 swMath_V -2155
scoreboard players operation #wl_45 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_45 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_45 swMath_V
scoreboard players set #wl_46 swMath_V 936
scoreboard players operation #wl_46 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_46 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_46 swMath_V
scoreboard players set #wl_47 swMath_V 59
scoreboard players operation #wl_47 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_47 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_47 swMath_V
scoreboard players set #wl_48 swMath_V -4
scoreboard players operation #wl_48 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_48 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_48 swMath_V
scoreboard players set #wl_49 swMath_V 356
scoreboard players operation #wl_49 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_49 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_49 swMath_V
scoreboard players set #wl_410 swMath_V -1474
scoreboard players operation #wl_410 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_410 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_410 swMath_V
scoreboard players set #wl_411 swMath_V -1897
scoreboard players operation #wl_411 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_411 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_411 swMath_V
scoreboard players set #wl_412 swMath_V 397
scoreboard players operation #wl_412 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_412 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_412 swMath_V
scoreboard players set #wl_413 swMath_V -1121
scoreboard players operation #wl_413 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_413 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_413 swMath_V
scoreboard players set #wl_414 swMath_V -1622
scoreboard players operation #wl_414 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_414 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_414 swMath_V
scoreboard players set #wl_415 swMath_V -1266
scoreboard players operation #wl_415 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_415 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_415 swMath_V
scoreboard players set #wl_416 swMath_V -2469
scoreboard players operation #wl_416 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_416 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_416 swMath_V
scoreboard players set #wl_417 swMath_V 147
scoreboard players operation #wl_417 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_417 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_417 swMath_V
scoreboard players set #wl_418 swMath_V -1553
scoreboard players operation #wl_418 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_418 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_418 swMath_V
scoreboard players set #wl_419 swMath_V -1858
scoreboard players operation #wl_419 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_419 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_419 swMath_V
scoreboard players set #wl_420 swMath_V -1522
scoreboard players operation #wl_420 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_420 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_420 swMath_V
scoreboard players set #wl_421 swMath_V -2951
scoreboard players operation #wl_421 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_421 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_421 swMath_V
scoreboard players set #wl_422 swMath_V 295
scoreboard players operation #wl_422 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_422 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_422 swMath_V
scoreboard players set #wl_423 swMath_V -952
scoreboard players operation #wl_423 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_423 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_4 swMath_V += #wl_423 swMath_V
scoreboard players operation #x2_4 swMath_V += #bl_4 swMath_V
execute if score #x2_4 swMath_V matches ..-1 run scoreboard players set #x2_4 swMath_V 0


scoreboard players set #x2_5 swMath_V 0
scoreboard players set #bl_5 swMath_V -373
scoreboard players set #wl_50 swMath_V -2551
scoreboard players operation #wl_50 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_50 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_50 swMath_V
scoreboard players set #wl_51 swMath_V 2069
scoreboard players operation #wl_51 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_51 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_51 swMath_V
scoreboard players set #wl_52 swMath_V -7728
scoreboard players operation #wl_52 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_52 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_52 swMath_V
scoreboard players set #wl_53 swMath_V 8264
scoreboard players operation #wl_53 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_53 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_53 swMath_V
scoreboard players set #wl_54 swMath_V 4473
scoreboard players operation #wl_54 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_54 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_54 swMath_V
scoreboard players set #wl_55 swMath_V -355
scoreboard players operation #wl_55 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_55 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_55 swMath_V
scoreboard players set #wl_56 swMath_V 1713
scoreboard players operation #wl_56 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_56 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_56 swMath_V
scoreboard players set #wl_57 swMath_V 2091
scoreboard players operation #wl_57 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_57 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_57 swMath_V
scoreboard players set #wl_58 swMath_V -7110
scoreboard players operation #wl_58 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_58 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_58 swMath_V
scoreboard players set #wl_59 swMath_V 712
scoreboard players operation #wl_59 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_59 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_59 swMath_V
scoreboard players set #wl_510 swMath_V -2087
scoreboard players operation #wl_510 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_510 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_510 swMath_V
scoreboard players set #wl_511 swMath_V 695
scoreboard players operation #wl_511 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_511 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_511 swMath_V
scoreboard players set #wl_512 swMath_V -1306
scoreboard players operation #wl_512 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_512 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_512 swMath_V
scoreboard players set #wl_513 swMath_V 2780
scoreboard players operation #wl_513 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_513 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_513 swMath_V
scoreboard players set #wl_514 swMath_V -87
scoreboard players operation #wl_514 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_514 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_514 swMath_V
scoreboard players set #wl_515 swMath_V -1057
scoreboard players operation #wl_515 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_515 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_515 swMath_V
scoreboard players set #wl_516 swMath_V 5676
scoreboard players operation #wl_516 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_516 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_516 swMath_V
scoreboard players set #wl_517 swMath_V -287
scoreboard players operation #wl_517 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_517 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_517 swMath_V
scoreboard players set #wl_518 swMath_V 355
scoreboard players operation #wl_518 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_518 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_518 swMath_V
scoreboard players set #wl_519 swMath_V 947
scoreboard players operation #wl_519 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_519 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_519 swMath_V
scoreboard players set #wl_520 swMath_V -1273
scoreboard players operation #wl_520 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_520 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_520 swMath_V
scoreboard players set #wl_521 swMath_V -143
scoreboard players operation #wl_521 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_521 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_521 swMath_V
scoreboard players set #wl_522 swMath_V -207
scoreboard players operation #wl_522 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_522 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_522 swMath_V
scoreboard players set #wl_523 swMath_V 1567
scoreboard players operation #wl_523 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_523 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_5 swMath_V += #wl_523 swMath_V
scoreboard players operation #x2_5 swMath_V += #bl_5 swMath_V
execute if score #x2_5 swMath_V matches ..-1 run scoreboard players set #x2_5 swMath_V 0


scoreboard players set #x2_6 swMath_V 0
scoreboard players set #bl_6 swMath_V 3995
scoreboard players set #wl_60 swMath_V -1065
scoreboard players operation #wl_60 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_60 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_60 swMath_V
scoreboard players set #wl_61 swMath_V 5897
scoreboard players operation #wl_61 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_61 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_61 swMath_V
scoreboard players set #wl_62 swMath_V -3500
scoreboard players operation #wl_62 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_62 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_62 swMath_V
scoreboard players set #wl_63 swMath_V 3191
scoreboard players operation #wl_63 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_63 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_63 swMath_V
scoreboard players set #wl_64 swMath_V 3723
scoreboard players operation #wl_64 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_64 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_64 swMath_V
scoreboard players set #wl_65 swMath_V 217
scoreboard players operation #wl_65 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_65 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_65 swMath_V
scoreboard players set #wl_66 swMath_V -6418
scoreboard players operation #wl_66 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_66 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_66 swMath_V
scoreboard players set #wl_67 swMath_V -99
scoreboard players operation #wl_67 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_67 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_67 swMath_V
scoreboard players set #wl_68 swMath_V -809
scoreboard players operation #wl_68 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_68 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_68 swMath_V
scoreboard players set #wl_69 swMath_V 1476
scoreboard players operation #wl_69 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_69 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_69 swMath_V
scoreboard players set #wl_610 swMath_V 2839
scoreboard players operation #wl_610 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_610 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_610 swMath_V
scoreboard players set #wl_611 swMath_V -3656
scoreboard players operation #wl_611 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_611 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_611 swMath_V
scoreboard players set #wl_612 swMath_V -1710
scoreboard players operation #wl_612 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_612 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_612 swMath_V
scoreboard players set #wl_613 swMath_V 5227
scoreboard players operation #wl_613 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_613 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_613 swMath_V
scoreboard players set #wl_614 swMath_V -2536
scoreboard players operation #wl_614 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_614 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_614 swMath_V
scoreboard players set #wl_615 swMath_V -3553
scoreboard players operation #wl_615 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_615 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_615 swMath_V
scoreboard players set #wl_616 swMath_V -1352
scoreboard players operation #wl_616 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_616 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_616 swMath_V
scoreboard players set #wl_617 swMath_V -930
scoreboard players operation #wl_617 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_617 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_617 swMath_V
scoreboard players set #wl_618 swMath_V -2915
scoreboard players operation #wl_618 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_618 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_618 swMath_V
scoreboard players set #wl_619 swMath_V -2582
scoreboard players operation #wl_619 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_619 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_619 swMath_V
scoreboard players set #wl_620 swMath_V 5721
scoreboard players operation #wl_620 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_620 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_620 swMath_V
scoreboard players set #wl_621 swMath_V 2525
scoreboard players operation #wl_621 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_621 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_621 swMath_V
scoreboard players set #wl_622 swMath_V -4251
scoreboard players operation #wl_622 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_622 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_622 swMath_V
scoreboard players set #wl_623 swMath_V 844
scoreboard players operation #wl_623 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_623 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_6 swMath_V += #wl_623 swMath_V
scoreboard players operation #x2_6 swMath_V += #bl_6 swMath_V
execute if score #x2_6 swMath_V matches ..-1 run scoreboard players set #x2_6 swMath_V 0


scoreboard players set #x2_7 swMath_V 0
scoreboard players set #bl_7 swMath_V -2828
scoreboard players set #wl_70 swMath_V 1044
scoreboard players operation #wl_70 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_70 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_70 swMath_V
scoreboard players set #wl_71 swMath_V -10000
scoreboard players operation #wl_71 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_71 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_71 swMath_V
scoreboard players set #wl_72 swMath_V 2338
scoreboard players operation #wl_72 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_72 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_72 swMath_V
scoreboard players set #wl_73 swMath_V 198
scoreboard players operation #wl_73 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_73 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_73 swMath_V
scoreboard players set #wl_74 swMath_V -521
scoreboard players operation #wl_74 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_74 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_74 swMath_V
scoreboard players set #wl_75 swMath_V -1377
scoreboard players operation #wl_75 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_75 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_75 swMath_V
scoreboard players set #wl_76 swMath_V -10000
scoreboard players operation #wl_76 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_76 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_76 swMath_V
scoreboard players set #wl_77 swMath_V -10000
scoreboard players operation #wl_77 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_77 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_77 swMath_V
scoreboard players set #wl_78 swMath_V 1388
scoreboard players operation #wl_78 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_78 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_78 swMath_V
scoreboard players set #wl_79 swMath_V -1785
scoreboard players operation #wl_79 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_79 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_79 swMath_V
scoreboard players set #wl_710 swMath_V -968
scoreboard players operation #wl_710 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_710 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_710 swMath_V
scoreboard players set #wl_711 swMath_V 2414
scoreboard players operation #wl_711 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_711 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_711 swMath_V
scoreboard players set #wl_712 swMath_V 759
scoreboard players operation #wl_712 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_712 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_712 swMath_V
scoreboard players set #wl_713 swMath_V 1257
scoreboard players operation #wl_713 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_713 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_713 swMath_V
scoreboard players set #wl_714 swMath_V -1135
scoreboard players operation #wl_714 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_714 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_714 swMath_V
scoreboard players set #wl_715 swMath_V -3323
scoreboard players operation #wl_715 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_715 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_715 swMath_V
scoreboard players set #wl_716 swMath_V -1533
scoreboard players operation #wl_716 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_716 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_716 swMath_V
scoreboard players set #wl_717 swMath_V 1563
scoreboard players operation #wl_717 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_717 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_717 swMath_V
scoreboard players set #wl_718 swMath_V 622
scoreboard players operation #wl_718 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_718 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_718 swMath_V
scoreboard players set #wl_719 swMath_V -907
scoreboard players operation #wl_719 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_719 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_719 swMath_V
scoreboard players set #wl_720 swMath_V 563
scoreboard players operation #wl_720 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_720 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_720 swMath_V
scoreboard players set #wl_721 swMath_V 2550
scoreboard players operation #wl_721 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_721 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_721 swMath_V
scoreboard players set #wl_722 swMath_V -657
scoreboard players operation #wl_722 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_722 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_722 swMath_V
scoreboard players set #wl_723 swMath_V 1222
scoreboard players operation #wl_723 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_723 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_7 swMath_V += #wl_723 swMath_V
scoreboard players operation #x2_7 swMath_V += #bl_7 swMath_V
execute if score #x2_7 swMath_V matches ..-1 run scoreboard players set #x2_7 swMath_V 0


scoreboard players set #x2_8 swMath_V 0
scoreboard players set #bl_8 swMath_V -3183
scoreboard players set #wl_80 swMath_V 1247
scoreboard players operation #wl_80 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_80 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_80 swMath_V
scoreboard players set #wl_81 swMath_V -2447
scoreboard players operation #wl_81 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_81 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_81 swMath_V
scoreboard players set #wl_82 swMath_V 426
scoreboard players operation #wl_82 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_82 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_82 swMath_V
scoreboard players set #wl_83 swMath_V 287
scoreboard players operation #wl_83 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_83 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_83 swMath_V
scoreboard players set #wl_84 swMath_V -3799
scoreboard players operation #wl_84 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_84 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_84 swMath_V
scoreboard players set #wl_85 swMath_V 2838
scoreboard players operation #wl_85 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_85 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_85 swMath_V
scoreboard players set #wl_86 swMath_V -860
scoreboard players operation #wl_86 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_86 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_86 swMath_V
scoreboard players set #wl_87 swMath_V -4658
scoreboard players operation #wl_87 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_87 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_87 swMath_V
scoreboard players set #wl_88 swMath_V -1438
scoreboard players operation #wl_88 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_88 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_88 swMath_V
scoreboard players set #wl_89 swMath_V -2131
scoreboard players operation #wl_89 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_89 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_89 swMath_V
scoreboard players set #wl_810 swMath_V 4559
scoreboard players operation #wl_810 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_810 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_810 swMath_V
scoreboard players set #wl_811 swMath_V 2778
scoreboard players operation #wl_811 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_811 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_811 swMath_V
scoreboard players set #wl_812 swMath_V 832
scoreboard players operation #wl_812 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_812 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_812 swMath_V
scoreboard players set #wl_813 swMath_V -445
scoreboard players operation #wl_813 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_813 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_813 swMath_V
scoreboard players set #wl_814 swMath_V -148
scoreboard players operation #wl_814 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_814 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_814 swMath_V
scoreboard players set #wl_815 swMath_V 6342
scoreboard players operation #wl_815 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_815 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_815 swMath_V
scoreboard players set #wl_816 swMath_V 2523
scoreboard players operation #wl_816 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_816 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_816 swMath_V
scoreboard players set #wl_817 swMath_V 537
scoreboard players operation #wl_817 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_817 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_817 swMath_V
scoreboard players set #wl_818 swMath_V -3004
scoreboard players operation #wl_818 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_818 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_818 swMath_V
scoreboard players set #wl_819 swMath_V -6434
scoreboard players operation #wl_819 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_819 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_819 swMath_V
scoreboard players set #wl_820 swMath_V -135
scoreboard players operation #wl_820 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_820 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_820 swMath_V
scoreboard players set #wl_821 swMath_V -3522
scoreboard players operation #wl_821 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_821 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_821 swMath_V
scoreboard players set #wl_822 swMath_V -6185
scoreboard players operation #wl_822 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_822 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_822 swMath_V
scoreboard players set #wl_823 swMath_V -10000
scoreboard players operation #wl_823 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_823 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_8 swMath_V += #wl_823 swMath_V
scoreboard players operation #x2_8 swMath_V += #bl_8 swMath_V
execute if score #x2_8 swMath_V matches ..-1 run scoreboard players set #x2_8 swMath_V 0


scoreboard players set #x2_9 swMath_V 0
scoreboard players set #bl_9 swMath_V 1920
scoreboard players set #wl_90 swMath_V 1419
scoreboard players operation #wl_90 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_90 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_90 swMath_V
scoreboard players set #wl_91 swMath_V -86
scoreboard players operation #wl_91 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_91 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_91 swMath_V
scoreboard players set #wl_92 swMath_V 2517
scoreboard players operation #wl_92 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_92 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_92 swMath_V
scoreboard players set #wl_93 swMath_V 3903
scoreboard players operation #wl_93 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_93 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_93 swMath_V
scoreboard players set #wl_94 swMath_V 1054
scoreboard players operation #wl_94 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_94 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_94 swMath_V
scoreboard players set #wl_95 swMath_V 839
scoreboard players operation #wl_95 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_95 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_95 swMath_V
scoreboard players set #wl_96 swMath_V 893
scoreboard players operation #wl_96 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_96 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_96 swMath_V
scoreboard players set #wl_97 swMath_V 1228
scoreboard players operation #wl_97 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_97 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_97 swMath_V
scoreboard players set #wl_98 swMath_V 3447
scoreboard players operation #wl_98 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_98 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_98 swMath_V
scoreboard players set #wl_99 swMath_V -2479
scoreboard players operation #wl_99 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_99 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_99 swMath_V
scoreboard players set #wl_910 swMath_V -942
scoreboard players operation #wl_910 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_910 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_910 swMath_V
scoreboard players set #wl_911 swMath_V -2854
scoreboard players operation #wl_911 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_911 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_911 swMath_V
scoreboard players set #wl_912 swMath_V 3348
scoreboard players operation #wl_912 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_912 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_912 swMath_V
scoreboard players set #wl_913 swMath_V -550
scoreboard players operation #wl_913 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_913 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_913 swMath_V
scoreboard players set #wl_914 swMath_V 710
scoreboard players operation #wl_914 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_914 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_914 swMath_V
scoreboard players set #wl_915 swMath_V -1006
scoreboard players operation #wl_915 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_915 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_915 swMath_V
scoreboard players set #wl_916 swMath_V -4336
scoreboard players operation #wl_916 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_916 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_916 swMath_V
scoreboard players set #wl_917 swMath_V -3337
scoreboard players operation #wl_917 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_917 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_917 swMath_V
scoreboard players set #wl_918 swMath_V -2292
scoreboard players operation #wl_918 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_918 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_918 swMath_V
scoreboard players set #wl_919 swMath_V 3738
scoreboard players operation #wl_919 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_919 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_919 swMath_V
scoreboard players set #wl_920 swMath_V -6125
scoreboard players operation #wl_920 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_920 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_920 swMath_V
scoreboard players set #wl_921 swMath_V -2160
scoreboard players operation #wl_921 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_921 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_921 swMath_V
scoreboard players set #wl_922 swMath_V -198
scoreboard players operation #wl_922 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_922 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_922 swMath_V
scoreboard players set #wl_923 swMath_V -1941
scoreboard players operation #wl_923 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_923 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_9 swMath_V += #wl_923 swMath_V
scoreboard players operation #x2_9 swMath_V += #bl_9 swMath_V
execute if score #x2_9 swMath_V matches ..-1 run scoreboard players set #x2_9 swMath_V 0


scoreboard players set #x2_10 swMath_V 0
scoreboard players set #bl_10 swMath_V -1157
scoreboard players set #wl_100 swMath_V -78
scoreboard players operation #wl_100 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_100 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_100 swMath_V
scoreboard players set #wl_101 swMath_V -957
scoreboard players operation #wl_101 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_101 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_101 swMath_V
scoreboard players set #wl_102 swMath_V -1378
scoreboard players operation #wl_102 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_102 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_102 swMath_V
scoreboard players set #wl_103 swMath_V 889
scoreboard players operation #wl_103 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_103 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_103 swMath_V
scoreboard players set #wl_104 swMath_V -1021
scoreboard players operation #wl_104 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_104 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_104 swMath_V
scoreboard players set #wl_105 swMath_V -1144
scoreboard players operation #wl_105 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_105 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_105 swMath_V
scoreboard players set #wl_106 swMath_V -1119
scoreboard players operation #wl_106 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_106 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_106 swMath_V
scoreboard players set #wl_107 swMath_V 1124
scoreboard players operation #wl_107 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_107 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_107 swMath_V
scoreboard players set #wl_108 swMath_V -1
scoreboard players operation #wl_108 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_108 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_108 swMath_V
scoreboard players set #wl_109 swMath_V 958
scoreboard players operation #wl_109 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_109 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_109 swMath_V
scoreboard players set #wl_1010 swMath_V 1443
scoreboard players operation #wl_1010 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1010 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1010 swMath_V
scoreboard players set #wl_1011 swMath_V -632
scoreboard players operation #wl_1011 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1011 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1011 swMath_V
scoreboard players set #wl_1012 swMath_V -636
scoreboard players operation #wl_1012 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1012 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1012 swMath_V
scoreboard players set #wl_1013 swMath_V -1454
scoreboard players operation #wl_1013 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1013 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1013 swMath_V
scoreboard players set #wl_1014 swMath_V -435
scoreboard players operation #wl_1014 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1014 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1014 swMath_V
scoreboard players set #wl_1015 swMath_V -831
scoreboard players operation #wl_1015 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1015 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1015 swMath_V
scoreboard players set #wl_1016 swMath_V 119
scoreboard players operation #wl_1016 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1016 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1016 swMath_V
scoreboard players set #wl_1017 swMath_V 1377
scoreboard players operation #wl_1017 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1017 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1017 swMath_V
scoreboard players set #wl_1018 swMath_V 1042
scoreboard players operation #wl_1018 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1018 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1018 swMath_V
scoreboard players set #wl_1019 swMath_V -1340
scoreboard players operation #wl_1019 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1019 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1019 swMath_V
scoreboard players set #wl_1020 swMath_V 222
scoreboard players operation #wl_1020 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1020 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1020 swMath_V
scoreboard players set #wl_1021 swMath_V 339
scoreboard players operation #wl_1021 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1021 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1021 swMath_V
scoreboard players set #wl_1022 swMath_V -1801
scoreboard players operation #wl_1022 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1022 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1022 swMath_V
scoreboard players set #wl_1023 swMath_V -526
scoreboard players operation #wl_1023 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1023 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_10 swMath_V += #wl_1023 swMath_V
scoreboard players operation #x2_10 swMath_V += #bl_10 swMath_V
execute if score #x2_10 swMath_V matches ..-1 run scoreboard players set #x2_10 swMath_V 0


scoreboard players set #x2_11 swMath_V 0
scoreboard players set #bl_11 swMath_V 1124
scoreboard players set #wl_110 swMath_V 1178
scoreboard players operation #wl_110 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_110 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_110 swMath_V
scoreboard players set #wl_111 swMath_V -681
scoreboard players operation #wl_111 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_111 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_111 swMath_V
scoreboard players set #wl_112 swMath_V -627
scoreboard players operation #wl_112 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_112 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_112 swMath_V
scoreboard players set #wl_113 swMath_V 634
scoreboard players operation #wl_113 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_113 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_113 swMath_V
scoreboard players set #wl_114 swMath_V -2392
scoreboard players operation #wl_114 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_114 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_114 swMath_V
scoreboard players set #wl_115 swMath_V -1819
scoreboard players operation #wl_115 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_115 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_115 swMath_V
scoreboard players set #wl_116 swMath_V -2160
scoreboard players operation #wl_116 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_116 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_116 swMath_V
scoreboard players set #wl_117 swMath_V -505
scoreboard players operation #wl_117 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_117 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_117 swMath_V
scoreboard players set #wl_118 swMath_V 431
scoreboard players operation #wl_118 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_118 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_118 swMath_V
scoreboard players set #wl_119 swMath_V -178
scoreboard players operation #wl_119 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_119 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_119 swMath_V
scoreboard players set #wl_1110 swMath_V 656
scoreboard players operation #wl_1110 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1110 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1110 swMath_V
scoreboard players set #wl_1111 swMath_V -832
scoreboard players operation #wl_1111 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1111 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1111 swMath_V
scoreboard players set #wl_1112 swMath_V -1741
scoreboard players operation #wl_1112 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1112 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1112 swMath_V
scoreboard players set #wl_1113 swMath_V -120
scoreboard players operation #wl_1113 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1113 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1113 swMath_V
scoreboard players set #wl_1114 swMath_V -2254
scoreboard players operation #wl_1114 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1114 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1114 swMath_V
scoreboard players set #wl_1115 swMath_V -1914
scoreboard players operation #wl_1115 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1115 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1115 swMath_V
scoreboard players set #wl_1116 swMath_V -945
scoreboard players operation #wl_1116 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1116 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1116 swMath_V
scoreboard players set #wl_1117 swMath_V -1301
scoreboard players operation #wl_1117 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1117 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1117 swMath_V
scoreboard players set #wl_1118 swMath_V 1641
scoreboard players operation #wl_1118 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1118 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1118 swMath_V
scoreboard players set #wl_1119 swMath_V -600
scoreboard players operation #wl_1119 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1119 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1119 swMath_V
scoreboard players set #wl_1120 swMath_V -1393
scoreboard players operation #wl_1120 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1120 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1120 swMath_V
scoreboard players set #wl_1121 swMath_V -411
scoreboard players operation #wl_1121 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1121 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1121 swMath_V
scoreboard players set #wl_1122 swMath_V -291
scoreboard players operation #wl_1122 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1122 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1122 swMath_V
scoreboard players set #wl_1123 swMath_V -166
scoreboard players operation #wl_1123 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1123 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_11 swMath_V += #wl_1123 swMath_V
scoreboard players operation #x2_11 swMath_V += #bl_11 swMath_V
execute if score #x2_11 swMath_V matches ..-1 run scoreboard players set #x2_11 swMath_V 0


scoreboard players set #x2_12 swMath_V 0
scoreboard players set #bl_12 swMath_V -2637
scoreboard players set #wl_120 swMath_V -604
scoreboard players operation #wl_120 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_120 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_120 swMath_V
scoreboard players set #wl_121 swMath_V 263
scoreboard players operation #wl_121 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_121 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_121 swMath_V
scoreboard players set #wl_122 swMath_V 6914
scoreboard players operation #wl_122 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_122 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_122 swMath_V
scoreboard players set #wl_123 swMath_V -2910
scoreboard players operation #wl_123 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_123 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_123 swMath_V
scoreboard players set #wl_124 swMath_V -5457
scoreboard players operation #wl_124 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_124 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_124 swMath_V
scoreboard players set #wl_125 swMath_V 3341
scoreboard players operation #wl_125 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_125 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_125 swMath_V
scoreboard players set #wl_126 swMath_V 795
scoreboard players operation #wl_126 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_126 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_126 swMath_V
scoreboard players set #wl_127 swMath_V 305
scoreboard players operation #wl_127 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_127 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_127 swMath_V
scoreboard players set #wl_128 swMath_V 1262
scoreboard players operation #wl_128 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_128 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_128 swMath_V
scoreboard players set #wl_129 swMath_V -597
scoreboard players operation #wl_129 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_129 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_129 swMath_V
scoreboard players set #wl_1210 swMath_V -3593
scoreboard players operation #wl_1210 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1210 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1210 swMath_V
scoreboard players set #wl_1211 swMath_V 2978
scoreboard players operation #wl_1211 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1211 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1211 swMath_V
scoreboard players set #wl_1212 swMath_V 2785
scoreboard players operation #wl_1212 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1212 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1212 swMath_V
scoreboard players set #wl_1213 swMath_V -2903
scoreboard players operation #wl_1213 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1213 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1213 swMath_V
scoreboard players set #wl_1214 swMath_V 3797
scoreboard players operation #wl_1214 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1214 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1214 swMath_V
scoreboard players set #wl_1215 swMath_V 309
scoreboard players operation #wl_1215 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1215 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1215 swMath_V
scoreboard players set #wl_1216 swMath_V -1620
scoreboard players operation #wl_1216 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1216 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1216 swMath_V
scoreboard players set #wl_1217 swMath_V -228
scoreboard players operation #wl_1217 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1217 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1217 swMath_V
scoreboard players set #wl_1218 swMath_V -3480
scoreboard players operation #wl_1218 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1218 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1218 swMath_V
scoreboard players set #wl_1219 swMath_V 4593
scoreboard players operation #wl_1219 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1219 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1219 swMath_V
scoreboard players set #wl_1220 swMath_V -3552
scoreboard players operation #wl_1220 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1220 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1220 swMath_V
scoreboard players set #wl_1221 swMath_V 3976
scoreboard players operation #wl_1221 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1221 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1221 swMath_V
scoreboard players set #wl_1222 swMath_V 1523
scoreboard players operation #wl_1222 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1222 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1222 swMath_V
scoreboard players set #wl_1223 swMath_V -1869
scoreboard players operation #wl_1223 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1223 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_12 swMath_V += #wl_1223 swMath_V
scoreboard players operation #x2_12 swMath_V += #bl_12 swMath_V
execute if score #x2_12 swMath_V matches ..-1 run scoreboard players set #x2_12 swMath_V 0


scoreboard players set #x2_13 swMath_V 0
scoreboard players set #bl_13 swMath_V -1132
scoreboard players set #wl_130 swMath_V -399
scoreboard players operation #wl_130 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_130 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_130 swMath_V
scoreboard players set #wl_131 swMath_V -2719
scoreboard players operation #wl_131 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_131 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_131 swMath_V
scoreboard players set #wl_132 swMath_V 721
scoreboard players operation #wl_132 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_132 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_132 swMath_V
scoreboard players set #wl_133 swMath_V -582
scoreboard players operation #wl_133 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_133 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_133 swMath_V
scoreboard players set #wl_134 swMath_V 179
scoreboard players operation #wl_134 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_134 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_134 swMath_V
scoreboard players set #wl_135 swMath_V -2709
scoreboard players operation #wl_135 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_135 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_135 swMath_V
scoreboard players set #wl_136 swMath_V 1321
scoreboard players operation #wl_136 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_136 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_136 swMath_V
scoreboard players set #wl_137 swMath_V 2927
scoreboard players operation #wl_137 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_137 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_137 swMath_V
scoreboard players set #wl_138 swMath_V -94
scoreboard players operation #wl_138 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_138 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_138 swMath_V
scoreboard players set #wl_139 swMath_V -10000
scoreboard players operation #wl_139 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_139 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_139 swMath_V
scoreboard players set #wl_1310 swMath_V 1484
scoreboard players operation #wl_1310 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1310 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1310 swMath_V
scoreboard players set #wl_1311 swMath_V -134
scoreboard players operation #wl_1311 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1311 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1311 swMath_V
scoreboard players set #wl_1312 swMath_V 160
scoreboard players operation #wl_1312 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1312 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1312 swMath_V
scoreboard players set #wl_1313 swMath_V -2316
scoreboard players operation #wl_1313 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1313 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1313 swMath_V
scoreboard players set #wl_1314 swMath_V 641
scoreboard players operation #wl_1314 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1314 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1314 swMath_V
scoreboard players set #wl_1315 swMath_V 9996
scoreboard players operation #wl_1315 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1315 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1315 swMath_V
scoreboard players set #wl_1316 swMath_V -1566
scoreboard players operation #wl_1316 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1316 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1316 swMath_V
scoreboard players set #wl_1317 swMath_V -4156
scoreboard players operation #wl_1317 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1317 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1317 swMath_V
scoreboard players set #wl_1318 swMath_V 408
scoreboard players operation #wl_1318 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1318 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1318 swMath_V
scoreboard players set #wl_1319 swMath_V 646
scoreboard players operation #wl_1319 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1319 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1319 swMath_V
scoreboard players set #wl_1320 swMath_V 846
scoreboard players operation #wl_1320 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1320 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1320 swMath_V
scoreboard players set #wl_1321 swMath_V -2845
scoreboard players operation #wl_1321 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1321 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1321 swMath_V
scoreboard players set #wl_1322 swMath_V 562
scoreboard players operation #wl_1322 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1322 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1322 swMath_V
scoreboard players set #wl_1323 swMath_V 1993
scoreboard players operation #wl_1323 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1323 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_13 swMath_V += #wl_1323 swMath_V
scoreboard players operation #x2_13 swMath_V += #bl_13 swMath_V
execute if score #x2_13 swMath_V matches ..-1 run scoreboard players set #x2_13 swMath_V 0


scoreboard players set #x2_14 swMath_V 0
scoreboard players set #bl_14 swMath_V 995
scoreboard players set #wl_140 swMath_V -820
scoreboard players operation #wl_140 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_140 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_140 swMath_V
scoreboard players set #wl_141 swMath_V 749
scoreboard players operation #wl_141 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_141 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_141 swMath_V
scoreboard players set #wl_142 swMath_V -4647
scoreboard players operation #wl_142 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_142 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_142 swMath_V
scoreboard players set #wl_143 swMath_V 974
scoreboard players operation #wl_143 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_143 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_143 swMath_V
scoreboard players set #wl_144 swMath_V 4641
scoreboard players operation #wl_144 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_144 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_144 swMath_V
scoreboard players set #wl_145 swMath_V 2046
scoreboard players operation #wl_145 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_145 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_145 swMath_V
scoreboard players set #wl_146 swMath_V -2528
scoreboard players operation #wl_146 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_146 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_146 swMath_V
scoreboard players set #wl_147 swMath_V 847
scoreboard players operation #wl_147 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_147 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_147 swMath_V
scoreboard players set #wl_148 swMath_V -4177
scoreboard players operation #wl_148 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_148 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_148 swMath_V
scoreboard players set #wl_149 swMath_V 8661
scoreboard players operation #wl_149 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_149 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_149 swMath_V
scoreboard players set #wl_1410 swMath_V 2990
scoreboard players operation #wl_1410 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1410 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1410 swMath_V
scoreboard players set #wl_1411 swMath_V -705
scoreboard players operation #wl_1411 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1411 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1411 swMath_V
scoreboard players set #wl_1412 swMath_V 822
scoreboard players operation #wl_1412 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1412 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1412 swMath_V
scoreboard players set #wl_1413 swMath_V -2808
scoreboard players operation #wl_1413 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1413 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1413 swMath_V
scoreboard players set #wl_1414 swMath_V -1714
scoreboard players operation #wl_1414 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1414 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1414 swMath_V
scoreboard players set #wl_1415 swMath_V -2744
scoreboard players operation #wl_1415 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1415 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1415 swMath_V
scoreboard players set #wl_1416 swMath_V -195
scoreboard players operation #wl_1416 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1416 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1416 swMath_V
scoreboard players set #wl_1417 swMath_V -3760
scoreboard players operation #wl_1417 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1417 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1417 swMath_V
scoreboard players set #wl_1418 swMath_V -3333
scoreboard players operation #wl_1418 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1418 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1418 swMath_V
scoreboard players set #wl_1419 swMath_V -1744
scoreboard players operation #wl_1419 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1419 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1419 swMath_V
scoreboard players set #wl_1420 swMath_V 1525
scoreboard players operation #wl_1420 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1420 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1420 swMath_V
scoreboard players set #wl_1421 swMath_V -1314
scoreboard players operation #wl_1421 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1421 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1421 swMath_V
scoreboard players set #wl_1422 swMath_V -2790
scoreboard players operation #wl_1422 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1422 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1422 swMath_V
scoreboard players set #wl_1423 swMath_V -2250
scoreboard players operation #wl_1423 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1423 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_14 swMath_V += #wl_1423 swMath_V
scoreboard players operation #x2_14 swMath_V += #bl_14 swMath_V
execute if score #x2_14 swMath_V matches ..-1 run scoreboard players set #x2_14 swMath_V 0


scoreboard players set #x2_15 swMath_V 0
scoreboard players set #bl_15 swMath_V -196
scoreboard players set #wl_150 swMath_V -1130
scoreboard players operation #wl_150 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_150 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_150 swMath_V
scoreboard players set #wl_151 swMath_V -553
scoreboard players operation #wl_151 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_151 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_151 swMath_V
scoreboard players set #wl_152 swMath_V -1825
scoreboard players operation #wl_152 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_152 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_152 swMath_V
scoreboard players set #wl_153 swMath_V 302
scoreboard players operation #wl_153 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_153 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_153 swMath_V
scoreboard players set #wl_154 swMath_V -1738
scoreboard players operation #wl_154 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_154 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_154 swMath_V
scoreboard players set #wl_155 swMath_V 243
scoreboard players operation #wl_155 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_155 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_155 swMath_V
scoreboard players set #wl_156 swMath_V -78
scoreboard players operation #wl_156 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_156 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_156 swMath_V
scoreboard players set #wl_157 swMath_V -481
scoreboard players operation #wl_157 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_157 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_157 swMath_V
scoreboard players set #wl_158 swMath_V -1025
scoreboard players operation #wl_158 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_158 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_158 swMath_V
scoreboard players set #wl_159 swMath_V 1156
scoreboard players operation #wl_159 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_159 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_159 swMath_V
scoreboard players set #wl_1510 swMath_V -630
scoreboard players operation #wl_1510 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1510 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1510 swMath_V
scoreboard players set #wl_1511 swMath_V 110
scoreboard players operation #wl_1511 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1511 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1511 swMath_V
scoreboard players set #wl_1512 swMath_V 404
scoreboard players operation #wl_1512 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1512 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1512 swMath_V
scoreboard players set #wl_1513 swMath_V -1775
scoreboard players operation #wl_1513 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1513 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1513 swMath_V
scoreboard players set #wl_1514 swMath_V -1730
scoreboard players operation #wl_1514 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1514 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1514 swMath_V
scoreboard players set #wl_1515 swMath_V -320
scoreboard players operation #wl_1515 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1515 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1515 swMath_V
scoreboard players set #wl_1516 swMath_V -590
scoreboard players operation #wl_1516 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1516 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1516 swMath_V
scoreboard players set #wl_1517 swMath_V -422
scoreboard players operation #wl_1517 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1517 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1517 swMath_V
scoreboard players set #wl_1518 swMath_V -1183
scoreboard players operation #wl_1518 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1518 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1518 swMath_V
scoreboard players set #wl_1519 swMath_V 11
scoreboard players operation #wl_1519 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1519 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1519 swMath_V
scoreboard players set #wl_1520 swMath_V -2464
scoreboard players operation #wl_1520 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1520 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1520 swMath_V
scoreboard players set #wl_1521 swMath_V -1141
scoreboard players operation #wl_1521 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1521 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1521 swMath_V
scoreboard players set #wl_1522 swMath_V 536
scoreboard players operation #wl_1522 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1522 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1522 swMath_V
scoreboard players set #wl_1523 swMath_V 1759
scoreboard players operation #wl_1523 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1523 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_15 swMath_V += #wl_1523 swMath_V
scoreboard players operation #x2_15 swMath_V += #bl_15 swMath_V
execute if score #x2_15 swMath_V matches ..-1 run scoreboard players set #x2_15 swMath_V 0


scoreboard players set #x2_16 swMath_V 0
scoreboard players set #bl_16 swMath_V -8158
scoreboard players set #wl_160 swMath_V -5010
scoreboard players operation #wl_160 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_160 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_160 swMath_V
scoreboard players set #wl_161 swMath_V -1912
scoreboard players operation #wl_161 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_161 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_161 swMath_V
scoreboard players set #wl_162 swMath_V -5783
scoreboard players operation #wl_162 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_162 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_162 swMath_V
scoreboard players set #wl_163 swMath_V 6041
scoreboard players operation #wl_163 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_163 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_163 swMath_V
scoreboard players set #wl_164 swMath_V 9998
scoreboard players operation #wl_164 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_164 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_164 swMath_V
scoreboard players set #wl_165 swMath_V 3325
scoreboard players operation #wl_165 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_165 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_165 swMath_V
scoreboard players set #wl_166 swMath_V 1460
scoreboard players operation #wl_166 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_166 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_166 swMath_V
scoreboard players set #wl_167 swMath_V 1330
scoreboard players operation #wl_167 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_167 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_167 swMath_V
scoreboard players set #wl_168 swMath_V 3487
scoreboard players operation #wl_168 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_168 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_168 swMath_V
scoreboard players set #wl_169 swMath_V 2612
scoreboard players operation #wl_169 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_169 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_169 swMath_V
scoreboard players set #wl_1610 swMath_V -5293
scoreboard players operation #wl_1610 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1610 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1610 swMath_V
scoreboard players set #wl_1611 swMath_V -1514
scoreboard players operation #wl_1611 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1611 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1611 swMath_V
scoreboard players set #wl_1612 swMath_V 47
scoreboard players operation #wl_1612 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1612 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1612 swMath_V
scoreboard players set #wl_1613 swMath_V 974
scoreboard players operation #wl_1613 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1613 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1613 swMath_V
scoreboard players set #wl_1614 swMath_V -6516
scoreboard players operation #wl_1614 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1614 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1614 swMath_V
scoreboard players set #wl_1615 swMath_V -1290
scoreboard players operation #wl_1615 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1615 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1615 swMath_V
scoreboard players set #wl_1616 swMath_V 2140
scoreboard players operation #wl_1616 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1616 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1616 swMath_V
scoreboard players set #wl_1617 swMath_V -2238
scoreboard players operation #wl_1617 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1617 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1617 swMath_V
scoreboard players set #wl_1618 swMath_V 1356
scoreboard players operation #wl_1618 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1618 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1618 swMath_V
scoreboard players set #wl_1619 swMath_V 2007
scoreboard players operation #wl_1619 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1619 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1619 swMath_V
scoreboard players set #wl_1620 swMath_V 201
scoreboard players operation #wl_1620 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1620 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1620 swMath_V
scoreboard players set #wl_1621 swMath_V -6421
scoreboard players operation #wl_1621 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1621 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1621 swMath_V
scoreboard players set #wl_1622 swMath_V 2558
scoreboard players operation #wl_1622 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1622 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1622 swMath_V
scoreboard players set #wl_1623 swMath_V -1778
scoreboard players operation #wl_1623 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1623 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_16 swMath_V += #wl_1623 swMath_V
scoreboard players operation #x2_16 swMath_V += #bl_16 swMath_V
execute if score #x2_16 swMath_V matches ..-1 run scoreboard players set #x2_16 swMath_V 0


scoreboard players set #x2_17 swMath_V 0
scoreboard players set #bl_17 swMath_V -1576
scoreboard players set #wl_170 swMath_V -484
scoreboard players operation #wl_170 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_170 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_170 swMath_V
scoreboard players set #wl_171 swMath_V -1450
scoreboard players operation #wl_171 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_171 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_171 swMath_V
scoreboard players set #wl_172 swMath_V -286
scoreboard players operation #wl_172 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_172 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_172 swMath_V
scoreboard players set #wl_173 swMath_V 271
scoreboard players operation #wl_173 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_173 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_173 swMath_V
scoreboard players set #wl_174 swMath_V -140
scoreboard players operation #wl_174 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_174 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_174 swMath_V
scoreboard players set #wl_175 swMath_V 615
scoreboard players operation #wl_175 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_175 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_175 swMath_V
scoreboard players set #wl_176 swMath_V -1765
scoreboard players operation #wl_176 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_176 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_176 swMath_V
scoreboard players set #wl_177 swMath_V -1876
scoreboard players operation #wl_177 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_177 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_177 swMath_V
scoreboard players set #wl_178 swMath_V -590
scoreboard players operation #wl_178 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_178 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_178 swMath_V
scoreboard players set #wl_179 swMath_V -273
scoreboard players operation #wl_179 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_179 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_179 swMath_V
scoreboard players set #wl_1710 swMath_V -1481
scoreboard players operation #wl_1710 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1710 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1710 swMath_V
scoreboard players set #wl_1711 swMath_V -2569
scoreboard players operation #wl_1711 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1711 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1711 swMath_V
scoreboard players set #wl_1712 swMath_V 156
scoreboard players operation #wl_1712 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1712 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1712 swMath_V
scoreboard players set #wl_1713 swMath_V -425
scoreboard players operation #wl_1713 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1713 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1713 swMath_V
scoreboard players set #wl_1714 swMath_V 1692
scoreboard players operation #wl_1714 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1714 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1714 swMath_V
scoreboard players set #wl_1715 swMath_V -1851
scoreboard players operation #wl_1715 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1715 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1715 swMath_V
scoreboard players set #wl_1716 swMath_V -107
scoreboard players operation #wl_1716 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1716 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1716 swMath_V
scoreboard players set #wl_1717 swMath_V -1781
scoreboard players operation #wl_1717 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1717 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1717 swMath_V
scoreboard players set #wl_1718 swMath_V -1559
scoreboard players operation #wl_1718 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1718 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1718 swMath_V
scoreboard players set #wl_1719 swMath_V -1972
scoreboard players operation #wl_1719 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1719 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1719 swMath_V
scoreboard players set #wl_1720 swMath_V -865
scoreboard players operation #wl_1720 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1720 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1720 swMath_V
scoreboard players set #wl_1721 swMath_V -624
scoreboard players operation #wl_1721 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1721 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1721 swMath_V
scoreboard players set #wl_1722 swMath_V -1406
scoreboard players operation #wl_1722 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1722 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1722 swMath_V
scoreboard players set #wl_1723 swMath_V 71
scoreboard players operation #wl_1723 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1723 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_17 swMath_V += #wl_1723 swMath_V
scoreboard players operation #x2_17 swMath_V += #bl_17 swMath_V
execute if score #x2_17 swMath_V matches ..-1 run scoreboard players set #x2_17 swMath_V 0


scoreboard players set #x2_18 swMath_V 0
scoreboard players set #bl_18 swMath_V 1995
scoreboard players set #wl_180 swMath_V -821
scoreboard players operation #wl_180 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_180 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_180 swMath_V
scoreboard players set #wl_181 swMath_V 2883
scoreboard players operation #wl_181 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_181 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_181 swMath_V
scoreboard players set #wl_182 swMath_V 843
scoreboard players operation #wl_182 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_182 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_182 swMath_V
scoreboard players set #wl_183 swMath_V -1630
scoreboard players operation #wl_183 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_183 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_183 swMath_V
scoreboard players set #wl_184 swMath_V 2512
scoreboard players operation #wl_184 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_184 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_184 swMath_V
scoreboard players set #wl_185 swMath_V 309
scoreboard players operation #wl_185 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_185 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_185 swMath_V
scoreboard players set #wl_186 swMath_V -9999
scoreboard players operation #wl_186 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_186 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_186 swMath_V
scoreboard players set #wl_187 swMath_V 4313
scoreboard players operation #wl_187 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_187 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_187 swMath_V
scoreboard players set #wl_188 swMath_V -8361
scoreboard players operation #wl_188 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_188 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_188 swMath_V
scoreboard players set #wl_189 swMath_V 9999
scoreboard players operation #wl_189 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_189 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_189 swMath_V
scoreboard players set #wl_1810 swMath_V 3039
scoreboard players operation #wl_1810 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1810 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1810 swMath_V
scoreboard players set #wl_1811 swMath_V 2359
scoreboard players operation #wl_1811 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1811 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1811 swMath_V
scoreboard players set #wl_1812 swMath_V 1496
scoreboard players operation #wl_1812 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1812 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1812 swMath_V
scoreboard players set #wl_1813 swMath_V 3761
scoreboard players operation #wl_1813 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1813 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1813 swMath_V
scoreboard players set #wl_1814 swMath_V -281
scoreboard players operation #wl_1814 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1814 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1814 swMath_V
scoreboard players set #wl_1815 swMath_V -7089
scoreboard players operation #wl_1815 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1815 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1815 swMath_V
scoreboard players set #wl_1816 swMath_V -5477
scoreboard players operation #wl_1816 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1816 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1816 swMath_V
scoreboard players set #wl_1817 swMath_V 602
scoreboard players operation #wl_1817 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1817 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1817 swMath_V
scoreboard players set #wl_1818 swMath_V -2572
scoreboard players operation #wl_1818 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1818 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1818 swMath_V
scoreboard players set #wl_1819 swMath_V -451
scoreboard players operation #wl_1819 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1819 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1819 swMath_V
scoreboard players set #wl_1820 swMath_V -1298
scoreboard players operation #wl_1820 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1820 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1820 swMath_V
scoreboard players set #wl_1821 swMath_V -3883
scoreboard players operation #wl_1821 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1821 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1821 swMath_V
scoreboard players set #wl_1822 swMath_V -847
scoreboard players operation #wl_1822 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1822 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1822 swMath_V
scoreboard players set #wl_1823 swMath_V 246
scoreboard players operation #wl_1823 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1823 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_18 swMath_V += #wl_1823 swMath_V
scoreboard players operation #x2_18 swMath_V += #bl_18 swMath_V
execute if score #x2_18 swMath_V matches ..-1 run scoreboard players set #x2_18 swMath_V 0


scoreboard players set #x2_19 swMath_V 0
scoreboard players set #bl_19 swMath_V -622
scoreboard players set #wl_190 swMath_V -1795
scoreboard players operation #wl_190 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_190 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_190 swMath_V
scoreboard players set #wl_191 swMath_V 1623
scoreboard players operation #wl_191 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_191 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_191 swMath_V
scoreboard players set #wl_192 swMath_V -5119
scoreboard players operation #wl_192 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_192 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_192 swMath_V
scoreboard players set #wl_193 swMath_V 2211
scoreboard players operation #wl_193 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_193 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_193 swMath_V
scoreboard players set #wl_194 swMath_V 4393
scoreboard players operation #wl_194 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_194 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_194 swMath_V
scoreboard players set #wl_195 swMath_V -9997
scoreboard players operation #wl_195 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_195 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_195 swMath_V
scoreboard players set #wl_196 swMath_V 3336
scoreboard players operation #wl_196 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_196 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_196 swMath_V
scoreboard players set #wl_197 swMath_V -1971
scoreboard players operation #wl_197 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_197 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_197 swMath_V
scoreboard players set #wl_198 swMath_V 8121
scoreboard players operation #wl_198 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_198 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_198 swMath_V
scoreboard players set #wl_199 swMath_V -5048
scoreboard players operation #wl_199 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_199 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_199 swMath_V
scoreboard players set #wl_1910 swMath_V 69
scoreboard players operation #wl_1910 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_1910 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1910 swMath_V
scoreboard players set #wl_1911 swMath_V 380
scoreboard players operation #wl_1911 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_1911 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1911 swMath_V
scoreboard players set #wl_1912 swMath_V -634
scoreboard players operation #wl_1912 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_1912 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1912 swMath_V
scoreboard players set #wl_1913 swMath_V -573
scoreboard players operation #wl_1913 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_1913 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1913 swMath_V
scoreboard players set #wl_1914 swMath_V -3596
scoreboard players operation #wl_1914 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_1914 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1914 swMath_V
scoreboard players set #wl_1915 swMath_V -556
scoreboard players operation #wl_1915 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_1915 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1915 swMath_V
scoreboard players set #wl_1916 swMath_V 2365
scoreboard players operation #wl_1916 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_1916 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1916 swMath_V
scoreboard players set #wl_1917 swMath_V -970
scoreboard players operation #wl_1917 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_1917 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1917 swMath_V
scoreboard players set #wl_1918 swMath_V -1289
scoreboard players operation #wl_1918 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_1918 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1918 swMath_V
scoreboard players set #wl_1919 swMath_V 434
scoreboard players operation #wl_1919 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_1919 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1919 swMath_V
scoreboard players set #wl_1920 swMath_V 3289
scoreboard players operation #wl_1920 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_1920 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1920 swMath_V
scoreboard players set #wl_1921 swMath_V -838
scoreboard players operation #wl_1921 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_1921 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1921 swMath_V
scoreboard players set #wl_1922 swMath_V -2201
scoreboard players operation #wl_1922 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_1922 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1922 swMath_V
scoreboard players set #wl_1923 swMath_V -7312
scoreboard players operation #wl_1923 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_1923 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_19 swMath_V += #wl_1923 swMath_V
scoreboard players operation #x2_19 swMath_V += #bl_19 swMath_V
execute if score #x2_19 swMath_V matches ..-1 run scoreboard players set #x2_19 swMath_V 0


scoreboard players set #x2_20 swMath_V 0
scoreboard players set #bl_20 swMath_V -94
scoreboard players set #wl_200 swMath_V 3119
scoreboard players operation #wl_200 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_200 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_200 swMath_V
scoreboard players set #wl_201 swMath_V -507
scoreboard players operation #wl_201 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_201 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_201 swMath_V
scoreboard players set #wl_202 swMath_V 1285
scoreboard players operation #wl_202 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_202 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_202 swMath_V
scoreboard players set #wl_203 swMath_V 2027
scoreboard players operation #wl_203 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_203 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_203 swMath_V
scoreboard players set #wl_204 swMath_V -2288
scoreboard players operation #wl_204 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_204 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_204 swMath_V
scoreboard players set #wl_205 swMath_V -3746
scoreboard players operation #wl_205 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_205 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_205 swMath_V
scoreboard players set #wl_206 swMath_V -2097
scoreboard players operation #wl_206 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_206 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_206 swMath_V
scoreboard players set #wl_207 swMath_V -408
scoreboard players operation #wl_207 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_207 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_207 swMath_V
scoreboard players set #wl_208 swMath_V 5885
scoreboard players operation #wl_208 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_208 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_208 swMath_V
scoreboard players set #wl_209 swMath_V -2954
scoreboard players operation #wl_209 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_209 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_209 swMath_V
scoreboard players set #wl_2010 swMath_V 3528
scoreboard players operation #wl_2010 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_2010 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2010 swMath_V
scoreboard players set #wl_2011 swMath_V 806
scoreboard players operation #wl_2011 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_2011 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2011 swMath_V
scoreboard players set #wl_2012 swMath_V 2685
scoreboard players operation #wl_2012 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_2012 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2012 swMath_V
scoreboard players set #wl_2013 swMath_V 3643
scoreboard players operation #wl_2013 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_2013 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2013 swMath_V
scoreboard players set #wl_2014 swMath_V -2020
scoreboard players operation #wl_2014 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_2014 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2014 swMath_V
scoreboard players set #wl_2015 swMath_V 981
scoreboard players operation #wl_2015 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_2015 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2015 swMath_V
scoreboard players set #wl_2016 swMath_V -1880
scoreboard players operation #wl_2016 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_2016 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2016 swMath_V
scoreboard players set #wl_2017 swMath_V 1209
scoreboard players operation #wl_2017 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_2017 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2017 swMath_V
scoreboard players set #wl_2018 swMath_V -1384
scoreboard players operation #wl_2018 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_2018 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2018 swMath_V
scoreboard players set #wl_2019 swMath_V -1139
scoreboard players operation #wl_2019 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_2019 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2019 swMath_V
scoreboard players set #wl_2020 swMath_V -2791
scoreboard players operation #wl_2020 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_2020 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2020 swMath_V
scoreboard players set #wl_2021 swMath_V 4914
scoreboard players operation #wl_2021 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_2021 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2021 swMath_V
scoreboard players set #wl_2022 swMath_V 1822
scoreboard players operation #wl_2022 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_2022 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2022 swMath_V
scoreboard players set #wl_2023 swMath_V -1876
scoreboard players operation #wl_2023 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_2023 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_20 swMath_V += #wl_2023 swMath_V
scoreboard players operation #x2_20 swMath_V += #bl_20 swMath_V
execute if score #x2_20 swMath_V matches ..-1 run scoreboard players set #x2_20 swMath_V 0


scoreboard players set #x2_21 swMath_V 0
scoreboard players set #bl_21 swMath_V -1013
scoreboard players set #wl_210 swMath_V -1597
scoreboard players operation #wl_210 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_210 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_210 swMath_V
scoreboard players set #wl_211 swMath_V -25
scoreboard players operation #wl_211 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_211 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_211 swMath_V
scoreboard players set #wl_212 swMath_V 1361
scoreboard players operation #wl_212 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_212 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_212 swMath_V
scoreboard players set #wl_213 swMath_V -1672
scoreboard players operation #wl_213 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_213 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_213 swMath_V
scoreboard players set #wl_214 swMath_V -1951
scoreboard players operation #wl_214 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_214 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_214 swMath_V
scoreboard players set #wl_215 swMath_V 1902
scoreboard players operation #wl_215 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_215 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_215 swMath_V
scoreboard players set #wl_216 swMath_V 960
scoreboard players operation #wl_216 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_216 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_216 swMath_V
scoreboard players set #wl_217 swMath_V -1448
scoreboard players operation #wl_217 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_217 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_217 swMath_V
scoreboard players set #wl_218 swMath_V 1841
scoreboard players operation #wl_218 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_218 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_218 swMath_V
scoreboard players set #wl_219 swMath_V -176
scoreboard players operation #wl_219 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_219 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_219 swMath_V
scoreboard players set #wl_2110 swMath_V -1697
scoreboard players operation #wl_2110 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_2110 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2110 swMath_V
scoreboard players set #wl_2111 swMath_V -1853
scoreboard players operation #wl_2111 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_2111 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2111 swMath_V
scoreboard players set #wl_2112 swMath_V -302
scoreboard players operation #wl_2112 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_2112 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2112 swMath_V
scoreboard players set #wl_2113 swMath_V 697
scoreboard players operation #wl_2113 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_2113 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2113 swMath_V
scoreboard players set #wl_2114 swMath_V -291
scoreboard players operation #wl_2114 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_2114 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2114 swMath_V
scoreboard players set #wl_2115 swMath_V -1809
scoreboard players operation #wl_2115 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_2115 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2115 swMath_V
scoreboard players set #wl_2116 swMath_V 744
scoreboard players operation #wl_2116 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_2116 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2116 swMath_V
scoreboard players set #wl_2117 swMath_V -1712
scoreboard players operation #wl_2117 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_2117 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2117 swMath_V
scoreboard players set #wl_2118 swMath_V -1178
scoreboard players operation #wl_2118 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_2118 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2118 swMath_V
scoreboard players set #wl_2119 swMath_V -1532
scoreboard players operation #wl_2119 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_2119 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2119 swMath_V
scoreboard players set #wl_2120 swMath_V 1104
scoreboard players operation #wl_2120 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_2120 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2120 swMath_V
scoreboard players set #wl_2121 swMath_V 1619
scoreboard players operation #wl_2121 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_2121 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2121 swMath_V
scoreboard players set #wl_2122 swMath_V -965
scoreboard players operation #wl_2122 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_2122 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2122 swMath_V
scoreboard players set #wl_2123 swMath_V 472
scoreboard players operation #wl_2123 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_2123 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_21 swMath_V += #wl_2123 swMath_V
scoreboard players operation #x2_21 swMath_V += #bl_21 swMath_V
execute if score #x2_21 swMath_V matches ..-1 run scoreboard players set #x2_21 swMath_V 0


scoreboard players set #x2_22 swMath_V 0
scoreboard players set #bl_22 swMath_V -1398
scoreboard players set #wl_220 swMath_V 858
scoreboard players operation #wl_220 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_220 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_220 swMath_V
scoreboard players set #wl_221 swMath_V -78
scoreboard players operation #wl_221 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_221 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_221 swMath_V
scoreboard players set #wl_222 swMath_V -755
scoreboard players operation #wl_222 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_222 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_222 swMath_V
scoreboard players set #wl_223 swMath_V -1119
scoreboard players operation #wl_223 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_223 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_223 swMath_V
scoreboard players set #wl_224 swMath_V -1340
scoreboard players operation #wl_224 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_224 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_224 swMath_V
scoreboard players set #wl_225 swMath_V 2011
scoreboard players operation #wl_225 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_225 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_225 swMath_V
scoreboard players set #wl_226 swMath_V 154
scoreboard players operation #wl_226 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_226 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_226 swMath_V
scoreboard players set #wl_227 swMath_V 462
scoreboard players operation #wl_227 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_227 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_227 swMath_V
scoreboard players set #wl_228 swMath_V -1375
scoreboard players operation #wl_228 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_228 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_228 swMath_V
scoreboard players set #wl_229 swMath_V -870
scoreboard players operation #wl_229 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_229 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_229 swMath_V
scoreboard players set #wl_2210 swMath_V -987
scoreboard players operation #wl_2210 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_2210 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2210 swMath_V
scoreboard players set #wl_2211 swMath_V 770
scoreboard players operation #wl_2211 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_2211 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2211 swMath_V
scoreboard players set #wl_2212 swMath_V -1649
scoreboard players operation #wl_2212 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_2212 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2212 swMath_V
scoreboard players set #wl_2213 swMath_V -844
scoreboard players operation #wl_2213 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_2213 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2213 swMath_V
scoreboard players set #wl_2214 swMath_V -1329
scoreboard players operation #wl_2214 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_2214 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2214 swMath_V
scoreboard players set #wl_2215 swMath_V -1371
scoreboard players operation #wl_2215 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_2215 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2215 swMath_V
scoreboard players set #wl_2216 swMath_V -1418
scoreboard players operation #wl_2216 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_2216 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2216 swMath_V
scoreboard players set #wl_2217 swMath_V -891
scoreboard players operation #wl_2217 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_2217 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2217 swMath_V
scoreboard players set #wl_2218 swMath_V -318
scoreboard players operation #wl_2218 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_2218 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2218 swMath_V
scoreboard players set #wl_2219 swMath_V -1216
scoreboard players operation #wl_2219 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_2219 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2219 swMath_V
scoreboard players set #wl_2220 swMath_V 4
scoreboard players operation #wl_2220 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_2220 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2220 swMath_V
scoreboard players set #wl_2221 swMath_V -609
scoreboard players operation #wl_2221 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_2221 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2221 swMath_V
scoreboard players set #wl_2222 swMath_V -959
scoreboard players operation #wl_2222 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_2222 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2222 swMath_V
scoreboard players set #wl_2223 swMath_V 175
scoreboard players operation #wl_2223 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_2223 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_22 swMath_V += #wl_2223 swMath_V
scoreboard players operation #x2_22 swMath_V += #bl_22 swMath_V
execute if score #x2_22 swMath_V matches ..-1 run scoreboard players set #x2_22 swMath_V 0


scoreboard players set #x2_23 swMath_V 0
scoreboard players set #bl_23 swMath_V 309
scoreboard players set #wl_230 swMath_V 4836
scoreboard players operation #wl_230 swMath_V *= #x1_0 swMath_V
scoreboard players operation #wl_230 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_230 swMath_V
scoreboard players set #wl_231 swMath_V 5136
scoreboard players operation #wl_231 swMath_V *= #x1_1 swMath_V
scoreboard players operation #wl_231 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_231 swMath_V
scoreboard players set #wl_232 swMath_V 1950
scoreboard players operation #wl_232 swMath_V *= #x1_2 swMath_V
scoreboard players operation #wl_232 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_232 swMath_V
scoreboard players set #wl_233 swMath_V 3041
scoreboard players operation #wl_233 swMath_V *= #x1_3 swMath_V
scoreboard players operation #wl_233 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_233 swMath_V
scoreboard players set #wl_234 swMath_V -6590
scoreboard players operation #wl_234 swMath_V *= #x1_4 swMath_V
scoreboard players operation #wl_234 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_234 swMath_V
scoreboard players set #wl_235 swMath_V -2362
scoreboard players operation #wl_235 swMath_V *= #x1_5 swMath_V
scoreboard players operation #wl_235 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_235 swMath_V
scoreboard players set #wl_236 swMath_V -3770
scoreboard players operation #wl_236 swMath_V *= #x1_6 swMath_V
scoreboard players operation #wl_236 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_236 swMath_V
scoreboard players set #wl_237 swMath_V 1533
scoreboard players operation #wl_237 swMath_V *= #x1_7 swMath_V
scoreboard players operation #wl_237 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_237 swMath_V
scoreboard players set #wl_238 swMath_V 2807
scoreboard players operation #wl_238 swMath_V *= #x1_8 swMath_V
scoreboard players operation #wl_238 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_238 swMath_V
scoreboard players set #wl_239 swMath_V 661
scoreboard players operation #wl_239 swMath_V *= #x1_9 swMath_V
scoreboard players operation #wl_239 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_239 swMath_V
scoreboard players set #wl_2310 swMath_V 2209
scoreboard players operation #wl_2310 swMath_V *= #x1_10 swMath_V
scoreboard players operation #wl_2310 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2310 swMath_V
scoreboard players set #wl_2311 swMath_V 3183
scoreboard players operation #wl_2311 swMath_V *= #x1_11 swMath_V
scoreboard players operation #wl_2311 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2311 swMath_V
scoreboard players set #wl_2312 swMath_V 1093
scoreboard players operation #wl_2312 swMath_V *= #x1_12 swMath_V
scoreboard players operation #wl_2312 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2312 swMath_V
scoreboard players set #wl_2313 swMath_V -629
scoreboard players operation #wl_2313 swMath_V *= #x1_13 swMath_V
scoreboard players operation #wl_2313 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2313 swMath_V
scoreboard players set #wl_2314 swMath_V 3256
scoreboard players operation #wl_2314 swMath_V *= #x1_14 swMath_V
scoreboard players operation #wl_2314 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2314 swMath_V
scoreboard players set #wl_2315 swMath_V -5892
scoreboard players operation #wl_2315 swMath_V *= #x1_15 swMath_V
scoreboard players operation #wl_2315 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2315 swMath_V
scoreboard players set #wl_2316 swMath_V -6881
scoreboard players operation #wl_2316 swMath_V *= #x1_16 swMath_V
scoreboard players operation #wl_2316 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2316 swMath_V
scoreboard players set #wl_2317 swMath_V -6170
scoreboard players operation #wl_2317 swMath_V *= #x1_17 swMath_V
scoreboard players operation #wl_2317 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2317 swMath_V
scoreboard players set #wl_2318 swMath_V -1612
scoreboard players operation #wl_2318 swMath_V *= #x1_18 swMath_V
scoreboard players operation #wl_2318 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2318 swMath_V
scoreboard players set #wl_2319 swMath_V 2827
scoreboard players operation #wl_2319 swMath_V *= #x1_19 swMath_V
scoreboard players operation #wl_2319 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2319 swMath_V
scoreboard players set #wl_2320 swMath_V 116
scoreboard players operation #wl_2320 swMath_V *= #x1_20 swMath_V
scoreboard players operation #wl_2320 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2320 swMath_V
scoreboard players set #wl_2321 swMath_V -1073
scoreboard players operation #wl_2321 swMath_V *= #x1_21 swMath_V
scoreboard players operation #wl_2321 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2321 swMath_V
scoreboard players set #wl_2322 swMath_V -3805
scoreboard players operation #wl_2322 swMath_V *= #x1_22 swMath_V
scoreboard players operation #wl_2322 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2322 swMath_V
scoreboard players set #wl_2323 swMath_V -1577
scoreboard players operation #wl_2323 swMath_V *= #x1_23 swMath_V
scoreboard players operation #wl_2323 swMath_V /= #div1 swMath_V
scoreboard players operation #x2_23 swMath_V += #wl_2323 swMath_V
scoreboard players operation #x2_23 swMath_V += #bl_23 swMath_V
execute if score #x2_23 swMath_V matches ..-1 run scoreboard players set #x2_23 swMath_V 0




#Process Layer 2

scoreboard players set #div0 swMath_V 24
scoreboard players set #div1 swMath_V 417
scoreboard players operation #x2_0 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_1 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_2 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_3 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_4 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_5 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_6 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_7 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_8 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_9 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_10 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_11 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_12 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_13 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_14 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_15 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_16 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_17 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_18 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_19 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_20 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_21 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_22 swMath_V /= #div0 swMath_V
scoreboard players operation #x2_23 swMath_V /= #div0 swMath_V

scoreboard players set #x3_0 swMath_V 0
scoreboard players set #bl_0 swMath_V 1673
scoreboard players set #wl_00 swMath_V -7201
scoreboard players operation #wl_00 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_00 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_00 swMath_V
scoreboard players set #wl_01 swMath_V -10000
scoreboard players operation #wl_01 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_01 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_01 swMath_V
scoreboard players set #wl_02 swMath_V -933
scoreboard players operation #wl_02 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_02 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_02 swMath_V
scoreboard players set #wl_03 swMath_V 10000
scoreboard players operation #wl_03 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_03 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_03 swMath_V
scoreboard players set #wl_04 swMath_V 1437
scoreboard players operation #wl_04 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_04 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_04 swMath_V
scoreboard players set #wl_05 swMath_V 4038
scoreboard players operation #wl_05 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_05 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_05 swMath_V
scoreboard players set #wl_06 swMath_V -10000
scoreboard players operation #wl_06 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_06 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_06 swMath_V
scoreboard players set #wl_07 swMath_V 10000
scoreboard players operation #wl_07 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_07 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_07 swMath_V
scoreboard players set #wl_08 swMath_V 7298
scoreboard players operation #wl_08 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_08 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_08 swMath_V
scoreboard players set #wl_09 swMath_V 4844
scoreboard players operation #wl_09 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_09 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_09 swMath_V
scoreboard players set #wl_010 swMath_V 485
scoreboard players operation #wl_010 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_010 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_010 swMath_V
scoreboard players set #wl_011 swMath_V -143
scoreboard players operation #wl_011 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_011 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_011 swMath_V
scoreboard players set #wl_012 swMath_V 5223
scoreboard players operation #wl_012 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_012 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_012 swMath_V
scoreboard players set #wl_013 swMath_V 10000
scoreboard players operation #wl_013 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_013 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_013 swMath_V
scoreboard players set #wl_014 swMath_V -4534
scoreboard players operation #wl_014 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_014 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_014 swMath_V
scoreboard players set #wl_015 swMath_V 1419
scoreboard players operation #wl_015 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_015 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_015 swMath_V
scoreboard players set #wl_016 swMath_V 4096
scoreboard players operation #wl_016 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_016 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_016 swMath_V
scoreboard players set #wl_017 swMath_V 2397
scoreboard players operation #wl_017 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_017 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_017 swMath_V
scoreboard players set #wl_018 swMath_V -10000
scoreboard players operation #wl_018 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_018 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_018 swMath_V
scoreboard players set #wl_019 swMath_V 7794
scoreboard players operation #wl_019 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_019 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_019 swMath_V
scoreboard players set #wl_020 swMath_V 5204
scoreboard players operation #wl_020 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_020 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_020 swMath_V
scoreboard players set #wl_021 swMath_V 1424
scoreboard players operation #wl_021 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_021 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_021 swMath_V
scoreboard players set #wl_022 swMath_V 405
scoreboard players operation #wl_022 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_022 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_022 swMath_V
scoreboard players set #wl_023 swMath_V -4176
scoreboard players operation #wl_023 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_023 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_0 swMath_V += #wl_023 swMath_V
scoreboard players operation #x3_0 swMath_V += #bl_0 swMath_V


scoreboard players set #x3_1 swMath_V 0
scoreboard players set #bl_1 swMath_V 3369
scoreboard players set #wl_10 swMath_V 2485
scoreboard players operation #wl_10 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_10 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_10 swMath_V
scoreboard players set #wl_11 swMath_V 7126
scoreboard players operation #wl_11 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_11 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_11 swMath_V
scoreboard players set #wl_12 swMath_V -1342
scoreboard players operation #wl_12 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_12 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_12 swMath_V
scoreboard players set #wl_13 swMath_V -10000
scoreboard players operation #wl_13 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_13 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_13 swMath_V
scoreboard players set #wl_14 swMath_V -1261
scoreboard players operation #wl_14 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_14 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_14 swMath_V
scoreboard players set #wl_15 swMath_V -7752
scoreboard players operation #wl_15 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_15 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_15 swMath_V
scoreboard players set #wl_16 swMath_V 712
scoreboard players operation #wl_16 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_16 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_16 swMath_V
scoreboard players set #wl_17 swMath_V 3588
scoreboard players operation #wl_17 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_17 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_17 swMath_V
scoreboard players set #wl_18 swMath_V -8243
scoreboard players operation #wl_18 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_18 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_18 swMath_V
scoreboard players set #wl_19 swMath_V 4295
scoreboard players operation #wl_19 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_19 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_19 swMath_V
scoreboard players set #wl_110 swMath_V 246
scoreboard players operation #wl_110 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_110 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_110 swMath_V
scoreboard players set #wl_111 swMath_V 951
scoreboard players operation #wl_111 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_111 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_111 swMath_V
scoreboard players set #wl_112 swMath_V -3877
scoreboard players operation #wl_112 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_112 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_112 swMath_V
scoreboard players set #wl_113 swMath_V -7551
scoreboard players operation #wl_113 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_113 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_113 swMath_V
scoreboard players set #wl_114 swMath_V -10000
scoreboard players operation #wl_114 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_114 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_114 swMath_V
scoreboard players set #wl_115 swMath_V -1095
scoreboard players operation #wl_115 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_115 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_115 swMath_V
scoreboard players set #wl_116 swMath_V -8380
scoreboard players operation #wl_116 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_116 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_116 swMath_V
scoreboard players set #wl_117 swMath_V -549
scoreboard players operation #wl_117 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_117 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_117 swMath_V
scoreboard players set #wl_118 swMath_V -9998
scoreboard players operation #wl_118 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_118 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_118 swMath_V
scoreboard players set #wl_119 swMath_V 7428
scoreboard players operation #wl_119 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_119 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_119 swMath_V
scoreboard players set #wl_120 swMath_V -90
scoreboard players operation #wl_120 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_120 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_120 swMath_V
scoreboard players set #wl_121 swMath_V -86
scoreboard players operation #wl_121 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_121 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_121 swMath_V
scoreboard players set #wl_122 swMath_V -870
scoreboard players operation #wl_122 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_122 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_122 swMath_V
scoreboard players set #wl_123 swMath_V 10000
scoreboard players operation #wl_123 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_123 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_1 swMath_V += #wl_123 swMath_V
scoreboard players operation #x3_1 swMath_V += #bl_1 swMath_V


scoreboard players set #x3_2 swMath_V 0
scoreboard players set #bl_2 swMath_V -420
scoreboard players set #wl_20 swMath_V 518
scoreboard players operation #wl_20 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_20 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_20 swMath_V
scoreboard players set #wl_21 swMath_V 1879
scoreboard players operation #wl_21 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_21 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_21 swMath_V
scoreboard players set #wl_22 swMath_V 841
scoreboard players operation #wl_22 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_22 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_22 swMath_V
scoreboard players set #wl_23 swMath_V -6405
scoreboard players operation #wl_23 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_23 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_23 swMath_V
scoreboard players set #wl_24 swMath_V 813
scoreboard players operation #wl_24 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_24 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_24 swMath_V
scoreboard players set #wl_25 swMath_V 1617
scoreboard players operation #wl_25 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_25 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_25 swMath_V
scoreboard players set #wl_26 swMath_V -2297
scoreboard players operation #wl_26 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_26 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_26 swMath_V
scoreboard players set #wl_27 swMath_V -6991
scoreboard players operation #wl_27 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_27 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_27 swMath_V
scoreboard players set #wl_28 swMath_V 1536
scoreboard players operation #wl_28 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_28 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_28 swMath_V
scoreboard players set #wl_29 swMath_V -2157
scoreboard players operation #wl_29 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_29 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_29 swMath_V
scoreboard players set #wl_210 swMath_V 1582
scoreboard players operation #wl_210 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_210 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_210 swMath_V
scoreboard players set #wl_211 swMath_V -146
scoreboard players operation #wl_211 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_211 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_211 swMath_V
scoreboard players set #wl_212 swMath_V -2157
scoreboard players operation #wl_212 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_212 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_212 swMath_V
scoreboard players set #wl_213 swMath_V 4537
scoreboard players operation #wl_213 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_213 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_213 swMath_V
scoreboard players set #wl_214 swMath_V 1380
scoreboard players operation #wl_214 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_214 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_214 swMath_V
scoreboard players set #wl_215 swMath_V 843
scoreboard players operation #wl_215 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_215 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_215 swMath_V
scoreboard players set #wl_216 swMath_V 600
scoreboard players operation #wl_216 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_216 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_216 swMath_V
scoreboard players set #wl_217 swMath_V 660
scoreboard players operation #wl_217 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_217 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_217 swMath_V
scoreboard players set #wl_218 swMath_V 3355
scoreboard players operation #wl_218 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_218 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_218 swMath_V
scoreboard players set #wl_219 swMath_V -2948
scoreboard players operation #wl_219 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_219 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_219 swMath_V
scoreboard players set #wl_220 swMath_V 782
scoreboard players operation #wl_220 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_220 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_220 swMath_V
scoreboard players set #wl_221 swMath_V 1621
scoreboard players operation #wl_221 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_221 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_221 swMath_V
scoreboard players set #wl_222 swMath_V 1895
scoreboard players operation #wl_222 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_222 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_222 swMath_V
scoreboard players set #wl_223 swMath_V 1515
scoreboard players operation #wl_223 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_223 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_2 swMath_V += #wl_223 swMath_V
scoreboard players operation #x3_2 swMath_V += #bl_2 swMath_V


scoreboard players set #x3_3 swMath_V 0
scoreboard players set #bl_3 swMath_V 240
scoreboard players set #wl_30 swMath_V -3377
scoreboard players operation #wl_30 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_30 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_30 swMath_V
scoreboard players set #wl_31 swMath_V 481
scoreboard players operation #wl_31 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_31 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_31 swMath_V
scoreboard players set #wl_32 swMath_V 1445
scoreboard players operation #wl_32 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_32 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_32 swMath_V
scoreboard players set #wl_33 swMath_V -6260
scoreboard players operation #wl_33 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_33 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_33 swMath_V
scoreboard players set #wl_34 swMath_V 1385
scoreboard players operation #wl_34 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_34 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_34 swMath_V
scoreboard players set #wl_35 swMath_V 218
scoreboard players operation #wl_35 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_35 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_35 swMath_V
scoreboard players set #wl_36 swMath_V 1211
scoreboard players operation #wl_36 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_36 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_36 swMath_V
scoreboard players set #wl_37 swMath_V -8782
scoreboard players operation #wl_37 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_37 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_37 swMath_V
scoreboard players set #wl_38 swMath_V 3565
scoreboard players operation #wl_38 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_38 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_38 swMath_V
scoreboard players set #wl_39 swMath_V 1638
scoreboard players operation #wl_39 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_39 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_39 swMath_V
scoreboard players set #wl_310 swMath_V 728
scoreboard players operation #wl_310 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_310 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_310 swMath_V
scoreboard players set #wl_311 swMath_V 139
scoreboard players operation #wl_311 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_311 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_311 swMath_V
scoreboard players set #wl_312 swMath_V 154
scoreboard players operation #wl_312 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_312 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_312 swMath_V
scoreboard players set #wl_313 swMath_V -651
scoreboard players operation #wl_313 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_313 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_313 swMath_V
scoreboard players set #wl_314 swMath_V 277
scoreboard players operation #wl_314 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_314 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_314 swMath_V
scoreboard players set #wl_315 swMath_V 810
scoreboard players operation #wl_315 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_315 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_315 swMath_V
scoreboard players set #wl_316 swMath_V -872
scoreboard players operation #wl_316 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_316 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_316 swMath_V
scoreboard players set #wl_317 swMath_V -25
scoreboard players operation #wl_317 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_317 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_317 swMath_V
scoreboard players set #wl_318 swMath_V 3957
scoreboard players operation #wl_318 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_318 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_318 swMath_V
scoreboard players set #wl_319 swMath_V -3115
scoreboard players operation #wl_319 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_319 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_319 swMath_V
scoreboard players set #wl_320 swMath_V -273
scoreboard players operation #wl_320 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_320 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_320 swMath_V
scoreboard players set #wl_321 swMath_V 1244
scoreboard players operation #wl_321 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_321 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_321 swMath_V
scoreboard players set #wl_322 swMath_V 1617
scoreboard players operation #wl_322 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_322 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_322 swMath_V
scoreboard players set #wl_323 swMath_V 2054
scoreboard players operation #wl_323 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_323 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_3 swMath_V += #wl_323 swMath_V
scoreboard players operation #x3_3 swMath_V += #bl_3 swMath_V


scoreboard players set #x3_4 swMath_V 0
scoreboard players set #bl_4 swMath_V 1410
scoreboard players set #wl_40 swMath_V -226
scoreboard players operation #wl_40 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_40 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_40 swMath_V
scoreboard players set #wl_41 swMath_V 2220
scoreboard players operation #wl_41 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_41 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_41 swMath_V
scoreboard players set #wl_42 swMath_V 614
scoreboard players operation #wl_42 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_42 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_42 swMath_V
scoreboard players set #wl_43 swMath_V 3905
scoreboard players operation #wl_43 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_43 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_43 swMath_V
scoreboard players set #wl_44 swMath_V 888
scoreboard players operation #wl_44 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_44 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_44 swMath_V
scoreboard players set #wl_45 swMath_V 987
scoreboard players operation #wl_45 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_45 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_45 swMath_V
scoreboard players set #wl_46 swMath_V -2093
scoreboard players operation #wl_46 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_46 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_46 swMath_V
scoreboard players set #wl_47 swMath_V 545
scoreboard players operation #wl_47 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_47 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_47 swMath_V
scoreboard players set #wl_48 swMath_V 246
scoreboard players operation #wl_48 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_48 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_48 swMath_V
scoreboard players set #wl_49 swMath_V -340
scoreboard players operation #wl_49 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_49 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_49 swMath_V
scoreboard players set #wl_410 swMath_V -971
scoreboard players operation #wl_410 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_410 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_410 swMath_V
scoreboard players set #wl_411 swMath_V 1573
scoreboard players operation #wl_411 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_411 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_411 swMath_V
scoreboard players set #wl_412 swMath_V -1867
scoreboard players operation #wl_412 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_412 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_412 swMath_V
scoreboard players set #wl_413 swMath_V -3496
scoreboard players operation #wl_413 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_413 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_413 swMath_V
scoreboard players set #wl_414 swMath_V 2606
scoreboard players operation #wl_414 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_414 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_414 swMath_V
scoreboard players set #wl_415 swMath_V -1530
scoreboard players operation #wl_415 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_415 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_415 swMath_V
scoreboard players set #wl_416 swMath_V 470
scoreboard players operation #wl_416 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_416 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_416 swMath_V
scoreboard players set #wl_417 swMath_V -707
scoreboard players operation #wl_417 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_417 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_417 swMath_V
scoreboard players set #wl_418 swMath_V 861
scoreboard players operation #wl_418 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_418 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_418 swMath_V
scoreboard players set #wl_419 swMath_V -3609
scoreboard players operation #wl_419 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_419 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_419 swMath_V
scoreboard players set #wl_420 swMath_V -1186
scoreboard players operation #wl_420 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_420 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_420 swMath_V
scoreboard players set #wl_421 swMath_V 897
scoreboard players operation #wl_421 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_421 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_421 swMath_V
scoreboard players set #wl_422 swMath_V -1530
scoreboard players operation #wl_422 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_422 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_422 swMath_V
scoreboard players set #wl_423 swMath_V -1053
scoreboard players operation #wl_423 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_423 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_4 swMath_V += #wl_423 swMath_V
scoreboard players operation #x3_4 swMath_V += #bl_4 swMath_V


scoreboard players set #x3_5 swMath_V 0
scoreboard players set #bl_5 swMath_V 1563
scoreboard players set #wl_50 swMath_V -525
scoreboard players operation #wl_50 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_50 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_50 swMath_V
scoreboard players set #wl_51 swMath_V 8073
scoreboard players operation #wl_51 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_51 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_51 swMath_V
scoreboard players set #wl_52 swMath_V -526
scoreboard players operation #wl_52 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_52 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_52 swMath_V
scoreboard players set #wl_53 swMath_V 3098
scoreboard players operation #wl_53 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_53 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_53 swMath_V
scoreboard players set #wl_54 swMath_V -1750
scoreboard players operation #wl_54 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_54 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_54 swMath_V
scoreboard players set #wl_55 swMath_V 3430
scoreboard players operation #wl_55 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_55 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_55 swMath_V
scoreboard players set #wl_56 swMath_V -3259
scoreboard players operation #wl_56 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_56 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_56 swMath_V
scoreboard players set #wl_57 swMath_V 3739
scoreboard players operation #wl_57 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_57 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_57 swMath_V
scoreboard players set #wl_58 swMath_V 1209
scoreboard players operation #wl_58 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_58 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_58 swMath_V
scoreboard players set #wl_59 swMath_V -58
scoreboard players operation #wl_59 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_59 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_59 swMath_V
scoreboard players set #wl_510 swMath_V -771
scoreboard players operation #wl_510 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_510 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_510 swMath_V
scoreboard players set #wl_511 swMath_V 65
scoreboard players operation #wl_511 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_511 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_511 swMath_V
scoreboard players set #wl_512 swMath_V -2336
scoreboard players operation #wl_512 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_512 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_512 swMath_V
scoreboard players set #wl_513 swMath_V -4343
scoreboard players operation #wl_513 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_513 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_513 swMath_V
scoreboard players set #wl_514 swMath_V 6072
scoreboard players operation #wl_514 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_514 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_514 swMath_V
scoreboard players set #wl_515 swMath_V -1828
scoreboard players operation #wl_515 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_515 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_515 swMath_V
scoreboard players set #wl_516 swMath_V -352
scoreboard players operation #wl_516 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_516 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_516 swMath_V
scoreboard players set #wl_517 swMath_V -358
scoreboard players operation #wl_517 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_517 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_517 swMath_V
scoreboard players set #wl_518 swMath_V -351
scoreboard players operation #wl_518 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_518 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_518 swMath_V
scoreboard players set #wl_519 swMath_V -8224
scoreboard players operation #wl_519 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_519 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_519 swMath_V
scoreboard players set #wl_520 swMath_V -2823
scoreboard players operation #wl_520 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_520 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_520 swMath_V
scoreboard players set #wl_521 swMath_V 1589
scoreboard players operation #wl_521 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_521 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_521 swMath_V
scoreboard players set #wl_522 swMath_V -632
scoreboard players operation #wl_522 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_522 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_522 swMath_V
scoreboard players set #wl_523 swMath_V -723
scoreboard players operation #wl_523 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_523 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_5 swMath_V += #wl_523 swMath_V
scoreboard players operation #x3_5 swMath_V += #bl_5 swMath_V


scoreboard players set #x3_6 swMath_V 0
scoreboard players set #bl_6 swMath_V 964
scoreboard players set #wl_60 swMath_V -365
scoreboard players operation #wl_60 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_60 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_60 swMath_V
scoreboard players set #wl_61 swMath_V 332
scoreboard players operation #wl_61 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_61 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_61 swMath_V
scoreboard players set #wl_62 swMath_V -1111
scoreboard players operation #wl_62 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_62 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_62 swMath_V
scoreboard players set #wl_63 swMath_V 31
scoreboard players operation #wl_63 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_63 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_63 swMath_V
scoreboard players set #wl_64 swMath_V 1760
scoreboard players operation #wl_64 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_64 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_64 swMath_V
scoreboard players set #wl_65 swMath_V 627
scoreboard players operation #wl_65 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_65 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_65 swMath_V
scoreboard players set #wl_66 swMath_V -879
scoreboard players operation #wl_66 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_66 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_66 swMath_V
scoreboard players set #wl_67 swMath_V 4221
scoreboard players operation #wl_67 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_67 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_67 swMath_V
scoreboard players set #wl_68 swMath_V -290
scoreboard players operation #wl_68 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_68 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_68 swMath_V
scoreboard players set #wl_69 swMath_V -409
scoreboard players operation #wl_69 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_69 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_69 swMath_V
scoreboard players set #wl_610 swMath_V -204
scoreboard players operation #wl_610 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_610 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_610 swMath_V
scoreboard players set #wl_611 swMath_V -435
scoreboard players operation #wl_611 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_611 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_611 swMath_V
scoreboard players set #wl_612 swMath_V -635
scoreboard players operation #wl_612 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_612 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_612 swMath_V
scoreboard players set #wl_613 swMath_V 112
scoreboard players operation #wl_613 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_613 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_613 swMath_V
scoreboard players set #wl_614 swMath_V -414
scoreboard players operation #wl_614 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_614 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_614 swMath_V
scoreboard players set #wl_615 swMath_V 1446
scoreboard players operation #wl_615 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_615 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_615 swMath_V
scoreboard players set #wl_616 swMath_V 206
scoreboard players operation #wl_616 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_616 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_616 swMath_V
scoreboard players set #wl_617 swMath_V -1645
scoreboard players operation #wl_617 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_617 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_617 swMath_V
scoreboard players set #wl_618 swMath_V 1640
scoreboard players operation #wl_618 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_618 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_618 swMath_V
scoreboard players set #wl_619 swMath_V 1115
scoreboard players operation #wl_619 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_619 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_619 swMath_V
scoreboard players set #wl_620 swMath_V -2216
scoreboard players operation #wl_620 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_620 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_620 swMath_V
scoreboard players set #wl_621 swMath_V -1937
scoreboard players operation #wl_621 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_621 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_621 swMath_V
scoreboard players set #wl_622 swMath_V -574
scoreboard players operation #wl_622 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_622 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_622 swMath_V
scoreboard players set #wl_623 swMath_V -586
scoreboard players operation #wl_623 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_623 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_6 swMath_V += #wl_623 swMath_V
scoreboard players operation #x3_6 swMath_V += #bl_6 swMath_V


scoreboard players set #x3_7 swMath_V 0
scoreboard players set #bl_7 swMath_V -2332
scoreboard players set #wl_70 swMath_V 654
scoreboard players operation #wl_70 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_70 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_70 swMath_V
scoreboard players set #wl_71 swMath_V -1010
scoreboard players operation #wl_71 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_71 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_71 swMath_V
scoreboard players set #wl_72 swMath_V 1488
scoreboard players operation #wl_72 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_72 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_72 swMath_V
scoreboard players set #wl_73 swMath_V -885
scoreboard players operation #wl_73 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_73 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_73 swMath_V
scoreboard players set #wl_74 swMath_V -638
scoreboard players operation #wl_74 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_74 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_74 swMath_V
scoreboard players set #wl_75 swMath_V -440
scoreboard players operation #wl_75 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_75 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_75 swMath_V
scoreboard players set #wl_76 swMath_V 3453
scoreboard players operation #wl_76 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_76 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_76 swMath_V
scoreboard players set #wl_77 swMath_V -2754
scoreboard players operation #wl_77 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_77 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_77 swMath_V
scoreboard players set #wl_78 swMath_V -41
scoreboard players operation #wl_78 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_78 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_78 swMath_V
scoreboard players set #wl_79 swMath_V 1383
scoreboard players operation #wl_79 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_79 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_79 swMath_V
scoreboard players set #wl_710 swMath_V 1951
scoreboard players operation #wl_710 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_710 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_710 swMath_V
scoreboard players set #wl_711 swMath_V -1537
scoreboard players operation #wl_711 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_711 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_711 swMath_V
scoreboard players set #wl_712 swMath_V 511
scoreboard players operation #wl_712 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_712 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_712 swMath_V
scoreboard players set #wl_713 swMath_V 3304
scoreboard players operation #wl_713 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_713 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_713 swMath_V
scoreboard players set #wl_714 swMath_V -1841
scoreboard players operation #wl_714 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_714 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_714 swMath_V
scoreboard players set #wl_715 swMath_V 820
scoreboard players operation #wl_715 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_715 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_715 swMath_V
scoreboard players set #wl_716 swMath_V 1413
scoreboard players operation #wl_716 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_716 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_716 swMath_V
scoreboard players set #wl_717 swMath_V 1338
scoreboard players operation #wl_717 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_717 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_717 swMath_V
scoreboard players set #wl_718 swMath_V -997
scoreboard players operation #wl_718 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_718 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_718 swMath_V
scoreboard players set #wl_719 swMath_V 2796
scoreboard players operation #wl_719 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_719 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_719 swMath_V
scoreboard players set #wl_720 swMath_V 2167
scoreboard players operation #wl_720 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_720 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_720 swMath_V
scoreboard players set #wl_721 swMath_V -763
scoreboard players operation #wl_721 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_721 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_721 swMath_V
scoreboard players set #wl_722 swMath_V 1889
scoreboard players operation #wl_722 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_722 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_722 swMath_V
scoreboard players set #wl_723 swMath_V -222
scoreboard players operation #wl_723 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_723 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_7 swMath_V += #wl_723 swMath_V
scoreboard players operation #x3_7 swMath_V += #bl_7 swMath_V


scoreboard players set #x3_8 swMath_V 0
scoreboard players set #bl_8 swMath_V -1619
scoreboard players set #wl_80 swMath_V 683
scoreboard players operation #wl_80 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_80 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_80 swMath_V
scoreboard players set #wl_81 swMath_V -3488
scoreboard players operation #wl_81 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_81 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_81 swMath_V
scoreboard players set #wl_82 swMath_V 1422
scoreboard players operation #wl_82 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_82 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_82 swMath_V
scoreboard players set #wl_83 swMath_V -446
scoreboard players operation #wl_83 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_83 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_83 swMath_V
scoreboard players set #wl_84 swMath_V 1177
scoreboard players operation #wl_84 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_84 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_84 swMath_V
scoreboard players set #wl_85 swMath_V -708
scoreboard players operation #wl_85 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_85 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_85 swMath_V
scoreboard players set #wl_86 swMath_V 1337
scoreboard players operation #wl_86 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_86 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_86 swMath_V
scoreboard players set #wl_87 swMath_V 2236
scoreboard players operation #wl_87 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_87 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_87 swMath_V
scoreboard players set #wl_88 swMath_V -3584
scoreboard players operation #wl_88 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_88 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_88 swMath_V
scoreboard players set #wl_89 swMath_V 858
scoreboard players operation #wl_89 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_89 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_89 swMath_V
scoreboard players set #wl_810 swMath_V 796
scoreboard players operation #wl_810 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_810 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_810 swMath_V
scoreboard players set #wl_811 swMath_V -1780
scoreboard players operation #wl_811 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_811 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_811 swMath_V
scoreboard players set #wl_812 swMath_V -587
scoreboard players operation #wl_812 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_812 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_812 swMath_V
scoreboard players set #wl_813 swMath_V 5117
scoreboard players operation #wl_813 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_813 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_813 swMath_V
scoreboard players set #wl_814 swMath_V -1842
scoreboard players operation #wl_814 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_814 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_814 swMath_V
scoreboard players set #wl_815 swMath_V 1673
scoreboard players operation #wl_815 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_815 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_815 swMath_V
scoreboard players set #wl_816 swMath_V 2663
scoreboard players operation #wl_816 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_816 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_816 swMath_V
scoreboard players set #wl_817 swMath_V -843
scoreboard players operation #wl_817 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_817 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_817 swMath_V
scoreboard players set #wl_818 swMath_V 3258
scoreboard players operation #wl_818 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_818 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_818 swMath_V
scoreboard players set #wl_819 swMath_V 8722
scoreboard players operation #wl_819 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_819 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_819 swMath_V
scoreboard players set #wl_820 swMath_V 923
scoreboard players operation #wl_820 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_820 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_820 swMath_V
scoreboard players set #wl_821 swMath_V -1395
scoreboard players operation #wl_821 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_821 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_821 swMath_V
scoreboard players set #wl_822 swMath_V 767
scoreboard players operation #wl_822 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_822 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_822 swMath_V
scoreboard players set #wl_823 swMath_V -1992
scoreboard players operation #wl_823 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_823 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_8 swMath_V += #wl_823 swMath_V
scoreboard players operation #x3_8 swMath_V += #bl_8 swMath_V


scoreboard players set #x3_9 swMath_V 0
scoreboard players set #bl_9 swMath_V 2248
scoreboard players set #wl_90 swMath_V 1272
scoreboard players operation #wl_90 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_90 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_90 swMath_V
scoreboard players set #wl_91 swMath_V -3147
scoreboard players operation #wl_91 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_91 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_91 swMath_V
scoreboard players set #wl_92 swMath_V 1399
scoreboard players operation #wl_92 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_92 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_92 swMath_V
scoreboard players set #wl_93 swMath_V 2637
scoreboard players operation #wl_93 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_93 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_93 swMath_V
scoreboard players set #wl_94 swMath_V -227
scoreboard players operation #wl_94 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_94 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_94 swMath_V
scoreboard players set #wl_95 swMath_V 1442
scoreboard players operation #wl_95 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_95 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_95 swMath_V
scoreboard players set #wl_96 swMath_V -776
scoreboard players operation #wl_96 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_96 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_96 swMath_V
scoreboard players set #wl_97 swMath_V -154
scoreboard players operation #wl_97 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_97 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_97 swMath_V
scoreboard players set #wl_98 swMath_V 5335
scoreboard players operation #wl_98 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_98 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_98 swMath_V
scoreboard players set #wl_99 swMath_V -1943
scoreboard players operation #wl_99 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_99 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_99 swMath_V
scoreboard players set #wl_910 swMath_V 278
scoreboard players operation #wl_910 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_910 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_910 swMath_V
scoreboard players set #wl_911 swMath_V 1055
scoreboard players operation #wl_911 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_911 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_911 swMath_V
scoreboard players set #wl_912 swMath_V -2130
scoreboard players operation #wl_912 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_912 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_912 swMath_V
scoreboard players set #wl_913 swMath_V 3751
scoreboard players operation #wl_913 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_913 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_913 swMath_V
scoreboard players set #wl_914 swMath_V -2281
scoreboard players operation #wl_914 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_914 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_914 swMath_V
scoreboard players set #wl_915 swMath_V -502
scoreboard players operation #wl_915 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_915 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_915 swMath_V
scoreboard players set #wl_916 swMath_V 3020
scoreboard players operation #wl_916 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_916 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_916 swMath_V
scoreboard players set #wl_917 swMath_V -522
scoreboard players operation #wl_917 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_917 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_917 swMath_V
scoreboard players set #wl_918 swMath_V 995
scoreboard players operation #wl_918 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_918 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_918 swMath_V
scoreboard players set #wl_919 swMath_V -5455
scoreboard players operation #wl_919 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_919 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_919 swMath_V
scoreboard players set #wl_920 swMath_V -3391
scoreboard players operation #wl_920 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_920 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_920 swMath_V
scoreboard players set #wl_921 swMath_V 76
scoreboard players operation #wl_921 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_921 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_921 swMath_V
scoreboard players set #wl_922 swMath_V 523
scoreboard players operation #wl_922 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_922 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_922 swMath_V
scoreboard players set #wl_923 swMath_V -2754
scoreboard players operation #wl_923 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_923 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_9 swMath_V += #wl_923 swMath_V
scoreboard players operation #x3_9 swMath_V += #bl_9 swMath_V


scoreboard players set #x3_10 swMath_V 0
scoreboard players set #bl_10 swMath_V -90
scoreboard players set #wl_100 swMath_V -2416
scoreboard players operation #wl_100 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_100 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_100 swMath_V
scoreboard players set #wl_101 swMath_V -1942
scoreboard players operation #wl_101 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_101 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_101 swMath_V
scoreboard players set #wl_102 swMath_V 1060
scoreboard players operation #wl_102 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_102 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_102 swMath_V
scoreboard players set #wl_103 swMath_V -1586
scoreboard players operation #wl_103 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_103 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_103 swMath_V
scoreboard players set #wl_104 swMath_V 1188
scoreboard players operation #wl_104 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_104 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_104 swMath_V
scoreboard players set #wl_105 swMath_V 168
scoreboard players operation #wl_105 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_105 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_105 swMath_V
scoreboard players set #wl_106 swMath_V 981
scoreboard players operation #wl_106 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_106 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_106 swMath_V
scoreboard players set #wl_107 swMath_V 5842
scoreboard players operation #wl_107 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_107 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_107 swMath_V
scoreboard players set #wl_108 swMath_V 256
scoreboard players operation #wl_108 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_108 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_108 swMath_V
scoreboard players set #wl_109 swMath_V 685
scoreboard players operation #wl_109 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_109 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_109 swMath_V
scoreboard players set #wl_1010 swMath_V 281
scoreboard players operation #wl_1010 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1010 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1010 swMath_V
scoreboard players set #wl_1011 swMath_V -633
scoreboard players operation #wl_1011 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1011 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1011 swMath_V
scoreboard players set #wl_1012 swMath_V 952
scoreboard players operation #wl_1012 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1012 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1012 swMath_V
scoreboard players set #wl_1013 swMath_V -4489
scoreboard players operation #wl_1013 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1013 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1013 swMath_V
scoreboard players set #wl_1014 swMath_V -1098
scoreboard players operation #wl_1014 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1014 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1014 swMath_V
scoreboard players set #wl_1015 swMath_V -561
scoreboard players operation #wl_1015 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1015 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1015 swMath_V
scoreboard players set #wl_1016 swMath_V -1032
scoreboard players operation #wl_1016 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1016 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1016 swMath_V
scoreboard players set #wl_1017 swMath_V 88
scoreboard players operation #wl_1017 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1017 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1017 swMath_V
scoreboard players set #wl_1018 swMath_V 313
scoreboard players operation #wl_1018 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1018 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1018 swMath_V
scoreboard players set #wl_1019 swMath_V -4710
scoreboard players operation #wl_1019 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1019 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1019 swMath_V
scoreboard players set #wl_1020 swMath_V -1134
scoreboard players operation #wl_1020 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1020 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1020 swMath_V
scoreboard players set #wl_1021 swMath_V -845
scoreboard players operation #wl_1021 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1021 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1021 swMath_V
scoreboard players set #wl_1022 swMath_V 1485
scoreboard players operation #wl_1022 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1022 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1022 swMath_V
scoreboard players set #wl_1023 swMath_V 2721
scoreboard players operation #wl_1023 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1023 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_10 swMath_V += #wl_1023 swMath_V
scoreboard players operation #x3_10 swMath_V += #bl_10 swMath_V


scoreboard players set #x3_11 swMath_V 0
scoreboard players set #bl_11 swMath_V -612
scoreboard players set #wl_110 swMath_V -4443
scoreboard players operation #wl_110 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_110 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_110 swMath_V
scoreboard players set #wl_111 swMath_V -4678
scoreboard players operation #wl_111 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_111 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_111 swMath_V
scoreboard players set #wl_112 swMath_V 1261
scoreboard players operation #wl_112 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_112 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_112 swMath_V
scoreboard players set #wl_113 swMath_V 5341
scoreboard players operation #wl_113 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_113 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_113 swMath_V
scoreboard players set #wl_114 swMath_V 406
scoreboard players operation #wl_114 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_114 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_114 swMath_V
scoreboard players set #wl_115 swMath_V -1198
scoreboard players operation #wl_115 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_115 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_115 swMath_V
scoreboard players set #wl_116 swMath_V -593
scoreboard players operation #wl_116 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_116 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_116 swMath_V
scoreboard players set #wl_117 swMath_V -7167
scoreboard players operation #wl_117 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_117 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_117 swMath_V
scoreboard players set #wl_118 swMath_V -206
scoreboard players operation #wl_118 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_118 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_118 swMath_V
scoreboard players set #wl_119 swMath_V 1427
scoreboard players operation #wl_119 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_119 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_119 swMath_V
scoreboard players set #wl_1110 swMath_V 2074
scoreboard players operation #wl_1110 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1110 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1110 swMath_V
scoreboard players set #wl_1111 swMath_V 2370
scoreboard players operation #wl_1111 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1111 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1111 swMath_V
scoreboard players set #wl_1112 swMath_V -85
scoreboard players operation #wl_1112 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1112 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1112 swMath_V
scoreboard players set #wl_1113 swMath_V -6415
scoreboard players operation #wl_1113 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1113 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1113 swMath_V
scoreboard players set #wl_1114 swMath_V 3981
scoreboard players operation #wl_1114 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1114 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1114 swMath_V
scoreboard players set #wl_1115 swMath_V 1495
scoreboard players operation #wl_1115 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1115 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1115 swMath_V
scoreboard players set #wl_1116 swMath_V -166
scoreboard players operation #wl_1116 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1116 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1116 swMath_V
scoreboard players set #wl_1117 swMath_V 1301
scoreboard players operation #wl_1117 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1117 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1117 swMath_V
scoreboard players set #wl_1118 swMath_V -837
scoreboard players operation #wl_1118 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1118 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1118 swMath_V
scoreboard players set #wl_1119 swMath_V -2401
scoreboard players operation #wl_1119 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1119 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1119 swMath_V
scoreboard players set #wl_1120 swMath_V 2192
scoreboard players operation #wl_1120 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1120 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1120 swMath_V
scoreboard players set #wl_1121 swMath_V 1248
scoreboard players operation #wl_1121 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1121 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1121 swMath_V
scoreboard players set #wl_1122 swMath_V 1382
scoreboard players operation #wl_1122 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1122 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1122 swMath_V
scoreboard players set #wl_1123 swMath_V 2198
scoreboard players operation #wl_1123 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1123 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_11 swMath_V += #wl_1123 swMath_V
scoreboard players operation #x3_11 swMath_V += #bl_11 swMath_V


scoreboard players set #x3_12 swMath_V 0
scoreboard players set #bl_12 swMath_V -1420
scoreboard players set #wl_120 swMath_V 2370
scoreboard players operation #wl_120 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_120 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_120 swMath_V
scoreboard players set #wl_121 swMath_V 2270
scoreboard players operation #wl_121 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_121 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_121 swMath_V
scoreboard players set #wl_122 swMath_V -1393
scoreboard players operation #wl_122 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_122 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_122 swMath_V
scoreboard players set #wl_123 swMath_V 1319
scoreboard players operation #wl_123 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_123 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_123 swMath_V
scoreboard players set #wl_124 swMath_V -874
scoreboard players operation #wl_124 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_124 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_124 swMath_V
scoreboard players set #wl_125 swMath_V -531
scoreboard players operation #wl_125 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_125 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_125 swMath_V
scoreboard players set #wl_126 swMath_V 1179
scoreboard players operation #wl_126 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_126 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_126 swMath_V
scoreboard players set #wl_127 swMath_V -5459
scoreboard players operation #wl_127 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_127 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_127 swMath_V
scoreboard players set #wl_128 swMath_V -304
scoreboard players operation #wl_128 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_128 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_128 swMath_V
scoreboard players set #wl_129 swMath_V 2325
scoreboard players operation #wl_129 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_129 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_129 swMath_V
scoreboard players set #wl_1210 swMath_V 298
scoreboard players operation #wl_1210 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1210 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1210 swMath_V
scoreboard players set #wl_1211 swMath_V 2234
scoreboard players operation #wl_1211 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1211 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1211 swMath_V
scoreboard players set #wl_1212 swMath_V -1690
scoreboard players operation #wl_1212 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1212 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1212 swMath_V
scoreboard players set #wl_1213 swMath_V -3629
scoreboard players operation #wl_1213 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1213 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1213 swMath_V
scoreboard players set #wl_1214 swMath_V 332
scoreboard players operation #wl_1214 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1214 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1214 swMath_V
scoreboard players set #wl_1215 swMath_V -1150
scoreboard players operation #wl_1215 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1215 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1215 swMath_V
scoreboard players set #wl_1216 swMath_V 1113
scoreboard players operation #wl_1216 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1216 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1216 swMath_V
scoreboard players set #wl_1217 swMath_V -1035
scoreboard players operation #wl_1217 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1217 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1217 swMath_V
scoreboard players set #wl_1218 swMath_V 1111
scoreboard players operation #wl_1218 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1218 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1218 swMath_V
scoreboard players set #wl_1219 swMath_V -224
scoreboard players operation #wl_1219 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1219 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1219 swMath_V
scoreboard players set #wl_1220 swMath_V 1997
scoreboard players operation #wl_1220 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1220 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1220 swMath_V
scoreboard players set #wl_1221 swMath_V -569
scoreboard players operation #wl_1221 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1221 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1221 swMath_V
scoreboard players set #wl_1222 swMath_V 1632
scoreboard players operation #wl_1222 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1222 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1222 swMath_V
scoreboard players set #wl_1223 swMath_V -734
scoreboard players operation #wl_1223 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1223 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_12 swMath_V += #wl_1223 swMath_V
scoreboard players operation #x3_12 swMath_V += #bl_12 swMath_V


scoreboard players set #x3_13 swMath_V 0
scoreboard players set #bl_13 swMath_V 1024
scoreboard players set #wl_130 swMath_V 2463
scoreboard players operation #wl_130 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_130 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_130 swMath_V
scoreboard players set #wl_131 swMath_V 864
scoreboard players operation #wl_131 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_131 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_131 swMath_V
scoreboard players set #wl_132 swMath_V 1696
scoreboard players operation #wl_132 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_132 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_132 swMath_V
scoreboard players set #wl_133 swMath_V 1389
scoreboard players operation #wl_133 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_133 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_133 swMath_V
scoreboard players set #wl_134 swMath_V 1492
scoreboard players operation #wl_134 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_134 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_134 swMath_V
scoreboard players set #wl_135 swMath_V 491
scoreboard players operation #wl_135 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_135 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_135 swMath_V
scoreboard players set #wl_136 swMath_V 1628
scoreboard players operation #wl_136 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_136 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_136 swMath_V
scoreboard players set #wl_137 swMath_V 148
scoreboard players operation #wl_137 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_137 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_137 swMath_V
scoreboard players set #wl_138 swMath_V -60
scoreboard players operation #wl_138 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_138 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_138 swMath_V
scoreboard players set #wl_139 swMath_V 3569
scoreboard players operation #wl_139 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_139 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_139 swMath_V
scoreboard players set #wl_1310 swMath_V 521
scoreboard players operation #wl_1310 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1310 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1310 swMath_V
scoreboard players set #wl_1311 swMath_V 1414
scoreboard players operation #wl_1311 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1311 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1311 swMath_V
scoreboard players set #wl_1312 swMath_V -683
scoreboard players operation #wl_1312 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1312 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1312 swMath_V
scoreboard players set #wl_1313 swMath_V -8013
scoreboard players operation #wl_1313 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1313 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1313 swMath_V
scoreboard players set #wl_1314 swMath_V 184
scoreboard players operation #wl_1314 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1314 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1314 swMath_V
scoreboard players set #wl_1315 swMath_V 2036
scoreboard players operation #wl_1315 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1315 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1315 swMath_V
scoreboard players set #wl_1316 swMath_V 111
scoreboard players operation #wl_1316 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1316 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1316 swMath_V
scoreboard players set #wl_1317 swMath_V 1609
scoreboard players operation #wl_1317 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1317 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1317 swMath_V
scoreboard players set #wl_1318 swMath_V 1708
scoreboard players operation #wl_1318 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1318 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1318 swMath_V
scoreboard players set #wl_1319 swMath_V -2751
scoreboard players operation #wl_1319 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1319 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1319 swMath_V
scoreboard players set #wl_1320 swMath_V -948
scoreboard players operation #wl_1320 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1320 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1320 swMath_V
scoreboard players set #wl_1321 swMath_V -332
scoreboard players operation #wl_1321 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1321 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1321 swMath_V
scoreboard players set #wl_1322 swMath_V -1698
scoreboard players operation #wl_1322 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1322 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1322 swMath_V
scoreboard players set #wl_1323 swMath_V -1765
scoreboard players operation #wl_1323 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1323 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_13 swMath_V += #wl_1323 swMath_V
scoreboard players operation #x3_13 swMath_V += #bl_13 swMath_V


scoreboard players set #x3_14 swMath_V 0
scoreboard players set #bl_14 swMath_V -675
scoreboard players set #wl_140 swMath_V 3941
scoreboard players operation #wl_140 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_140 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_140 swMath_V
scoreboard players set #wl_141 swMath_V -808
scoreboard players operation #wl_141 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_141 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_141 swMath_V
scoreboard players set #wl_142 swMath_V -179
scoreboard players operation #wl_142 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_142 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_142 swMath_V
scoreboard players set #wl_143 swMath_V -5964
scoreboard players operation #wl_143 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_143 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_143 swMath_V
scoreboard players set #wl_144 swMath_V 672
scoreboard players operation #wl_144 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_144 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_144 swMath_V
scoreboard players set #wl_145 swMath_V -143
scoreboard players operation #wl_145 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_145 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_145 swMath_V
scoreboard players set #wl_146 swMath_V 521
scoreboard players operation #wl_146 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_146 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_146 swMath_V
scoreboard players set #wl_147 swMath_V -4541
scoreboard players operation #wl_147 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_147 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_147 swMath_V
scoreboard players set #wl_148 swMath_V 362
scoreboard players operation #wl_148 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_148 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_148 swMath_V
scoreboard players set #wl_149 swMath_V -218
scoreboard players operation #wl_149 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_149 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_149 swMath_V
scoreboard players set #wl_1410 swMath_V -1460
scoreboard players operation #wl_1410 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1410 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1410 swMath_V
scoreboard players set #wl_1411 swMath_V -320
scoreboard players operation #wl_1411 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1411 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1411 swMath_V
scoreboard players set #wl_1412 swMath_V 238
scoreboard players operation #wl_1412 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1412 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1412 swMath_V
scoreboard players set #wl_1413 swMath_V 3387
scoreboard players operation #wl_1413 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1413 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1413 swMath_V
scoreboard players set #wl_1414 swMath_V -689
scoreboard players operation #wl_1414 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1414 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1414 swMath_V
scoreboard players set #wl_1415 swMath_V -688
scoreboard players operation #wl_1415 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1415 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1415 swMath_V
scoreboard players set #wl_1416 swMath_V -785
scoreboard players operation #wl_1416 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1416 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1416 swMath_V
scoreboard players set #wl_1417 swMath_V -1375
scoreboard players operation #wl_1417 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1417 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1417 swMath_V
scoreboard players set #wl_1418 swMath_V -726
scoreboard players operation #wl_1418 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1418 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1418 swMath_V
scoreboard players set #wl_1419 swMath_V 1809
scoreboard players operation #wl_1419 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1419 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1419 swMath_V
scoreboard players set #wl_1420 swMath_V 2083
scoreboard players operation #wl_1420 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1420 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1420 swMath_V
scoreboard players set #wl_1421 swMath_V 909
scoreboard players operation #wl_1421 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1421 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1421 swMath_V
scoreboard players set #wl_1422 swMath_V -407
scoreboard players operation #wl_1422 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1422 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1422 swMath_V
scoreboard players set #wl_1423 swMath_V 308
scoreboard players operation #wl_1423 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1423 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_14 swMath_V += #wl_1423 swMath_V
scoreboard players operation #x3_14 swMath_V += #bl_14 swMath_V


scoreboard players set #x3_15 swMath_V 0
scoreboard players set #bl_15 swMath_V -588
scoreboard players set #wl_150 swMath_V -3028
scoreboard players operation #wl_150 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_150 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_150 swMath_V
scoreboard players set #wl_151 swMath_V 3299
scoreboard players operation #wl_151 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_151 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_151 swMath_V
scoreboard players set #wl_152 swMath_V -1130
scoreboard players operation #wl_152 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_152 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_152 swMath_V
scoreboard players set #wl_153 swMath_V 6447
scoreboard players operation #wl_153 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_153 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_153 swMath_V
scoreboard players set #wl_154 swMath_V -104
scoreboard players operation #wl_154 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_154 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_154 swMath_V
scoreboard players set #wl_155 swMath_V 1008
scoreboard players operation #wl_155 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_155 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_155 swMath_V
scoreboard players set #wl_156 swMath_V -1281
scoreboard players operation #wl_156 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_156 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_156 swMath_V
scoreboard players set #wl_157 swMath_V 10000
scoreboard players operation #wl_157 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_157 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_157 swMath_V
scoreboard players set #wl_158 swMath_V -1057
scoreboard players operation #wl_158 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_158 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_158 swMath_V
scoreboard players set #wl_159 swMath_V 1434
scoreboard players operation #wl_159 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_159 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_159 swMath_V
scoreboard players set #wl_1510 swMath_V 744
scoreboard players operation #wl_1510 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1510 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1510 swMath_V
scoreboard players set #wl_1511 swMath_V -508
scoreboard players operation #wl_1511 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1511 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1511 swMath_V
scoreboard players set #wl_1512 swMath_V -800
scoreboard players operation #wl_1512 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1512 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1512 swMath_V
scoreboard players set #wl_1513 swMath_V 2688
scoreboard players operation #wl_1513 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1513 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1513 swMath_V
scoreboard players set #wl_1514 swMath_V 3094
scoreboard players operation #wl_1514 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1514 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1514 swMath_V
scoreboard players set #wl_1515 swMath_V -449
scoreboard players operation #wl_1515 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1515 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1515 swMath_V
scoreboard players set #wl_1516 swMath_V 2232
scoreboard players operation #wl_1516 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1516 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1516 swMath_V
scoreboard players set #wl_1517 swMath_V 329
scoreboard players operation #wl_1517 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1517 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1517 swMath_V
scoreboard players set #wl_1518 swMath_V 5
scoreboard players operation #wl_1518 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1518 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1518 swMath_V
scoreboard players set #wl_1519 swMath_V 1287
scoreboard players operation #wl_1519 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1519 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1519 swMath_V
scoreboard players set #wl_1520 swMath_V -2917
scoreboard players operation #wl_1520 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1520 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1520 swMath_V
scoreboard players set #wl_1521 swMath_V 1041
scoreboard players operation #wl_1521 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1521 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1521 swMath_V
scoreboard players set #wl_1522 swMath_V -1734
scoreboard players operation #wl_1522 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1522 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1522 swMath_V
scoreboard players set #wl_1523 swMath_V -2277
scoreboard players operation #wl_1523 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1523 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_15 swMath_V += #wl_1523 swMath_V
scoreboard players operation #x3_15 swMath_V += #bl_15 swMath_V


scoreboard players set #x3_16 swMath_V 0
scoreboard players set #bl_16 swMath_V 725
scoreboard players set #wl_160 swMath_V 200
scoreboard players operation #wl_160 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_160 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_160 swMath_V
scoreboard players set #wl_161 swMath_V -2109
scoreboard players operation #wl_161 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_161 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_161 swMath_V
scoreboard players set #wl_162 swMath_V -1439
scoreboard players operation #wl_162 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_162 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_162 swMath_V
scoreboard players set #wl_163 swMath_V -1565
scoreboard players operation #wl_163 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_163 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_163 swMath_V
scoreboard players set #wl_164 swMath_V 743
scoreboard players operation #wl_164 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_164 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_164 swMath_V
scoreboard players set #wl_165 swMath_V -525
scoreboard players operation #wl_165 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_165 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_165 swMath_V
scoreboard players set #wl_166 swMath_V 926
scoreboard players operation #wl_166 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_166 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_166 swMath_V
scoreboard players set #wl_167 swMath_V -1822
scoreboard players operation #wl_167 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_167 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_167 swMath_V
scoreboard players set #wl_168 swMath_V -1812
scoreboard players operation #wl_168 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_168 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_168 swMath_V
scoreboard players set #wl_169 swMath_V 57
scoreboard players operation #wl_169 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_169 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_169 swMath_V
scoreboard players set #wl_1610 swMath_V -471
scoreboard players operation #wl_1610 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1610 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1610 swMath_V
scoreboard players set #wl_1611 swMath_V 2206
scoreboard players operation #wl_1611 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1611 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1611 swMath_V
scoreboard players set #wl_1612 swMath_V -390
scoreboard players operation #wl_1612 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1612 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1612 swMath_V
scoreboard players set #wl_1613 swMath_V -713
scoreboard players operation #wl_1613 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1613 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1613 swMath_V
scoreboard players set #wl_1614 swMath_V -574
scoreboard players operation #wl_1614 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1614 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1614 swMath_V
scoreboard players set #wl_1615 swMath_V -727
scoreboard players operation #wl_1615 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1615 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1615 swMath_V
scoreboard players set #wl_1616 swMath_V 248
scoreboard players operation #wl_1616 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1616 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1616 swMath_V
scoreboard players set #wl_1617 swMath_V 935
scoreboard players operation #wl_1617 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1617 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1617 swMath_V
scoreboard players set #wl_1618 swMath_V 2174
scoreboard players operation #wl_1618 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1618 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1618 swMath_V
scoreboard players set #wl_1619 swMath_V 2670
scoreboard players operation #wl_1619 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1619 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1619 swMath_V
scoreboard players set #wl_1620 swMath_V 492
scoreboard players operation #wl_1620 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1620 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1620 swMath_V
scoreboard players set #wl_1621 swMath_V -1297
scoreboard players operation #wl_1621 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1621 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1621 swMath_V
scoreboard players set #wl_1622 swMath_V -1088
scoreboard players operation #wl_1622 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1622 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1622 swMath_V
scoreboard players set #wl_1623 swMath_V -288
scoreboard players operation #wl_1623 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1623 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_16 swMath_V += #wl_1623 swMath_V
scoreboard players operation #x3_16 swMath_V += #bl_16 swMath_V


scoreboard players set #x3_17 swMath_V 0
scoreboard players set #bl_17 swMath_V 983
scoreboard players set #wl_170 swMath_V 915
scoreboard players operation #wl_170 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_170 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_170 swMath_V
scoreboard players set #wl_171 swMath_V -799
scoreboard players operation #wl_171 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_171 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_171 swMath_V
scoreboard players set #wl_172 swMath_V -1918
scoreboard players operation #wl_172 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_172 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_172 swMath_V
scoreboard players set #wl_173 swMath_V -5637
scoreboard players operation #wl_173 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_173 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_173 swMath_V
scoreboard players set #wl_174 swMath_V 1212
scoreboard players operation #wl_174 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_174 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_174 swMath_V
scoreboard players set #wl_175 swMath_V 1199
scoreboard players operation #wl_175 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_175 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_175 swMath_V
scoreboard players set #wl_176 swMath_V 332
scoreboard players operation #wl_176 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_176 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_176 swMath_V
scoreboard players set #wl_177 swMath_V -1409
scoreboard players operation #wl_177 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_177 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_177 swMath_V
scoreboard players set #wl_178 swMath_V -1898
scoreboard players operation #wl_178 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_178 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_178 swMath_V
scoreboard players set #wl_179 swMath_V -1876
scoreboard players operation #wl_179 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_179 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_179 swMath_V
scoreboard players set #wl_1710 swMath_V 1291
scoreboard players operation #wl_1710 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1710 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1710 swMath_V
scoreboard players set #wl_1711 swMath_V -1492
scoreboard players operation #wl_1711 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1711 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1711 swMath_V
scoreboard players set #wl_1712 swMath_V -631
scoreboard players operation #wl_1712 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1712 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1712 swMath_V
scoreboard players set #wl_1713 swMath_V 1916
scoreboard players operation #wl_1713 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1713 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1713 swMath_V
scoreboard players set #wl_1714 swMath_V -767
scoreboard players operation #wl_1714 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1714 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1714 swMath_V
scoreboard players set #wl_1715 swMath_V -1248
scoreboard players operation #wl_1715 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1715 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1715 swMath_V
scoreboard players set #wl_1716 swMath_V -392
scoreboard players operation #wl_1716 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1716 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1716 swMath_V
scoreboard players set #wl_1717 swMath_V -1013
scoreboard players operation #wl_1717 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1717 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1717 swMath_V
scoreboard players set #wl_1718 swMath_V 2723
scoreboard players operation #wl_1718 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1718 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1718 swMath_V
scoreboard players set #wl_1719 swMath_V 1581
scoreboard players operation #wl_1719 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1719 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1719 swMath_V
scoreboard players set #wl_1720 swMath_V 158
scoreboard players operation #wl_1720 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1720 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1720 swMath_V
scoreboard players set #wl_1721 swMath_V -63
scoreboard players operation #wl_1721 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1721 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1721 swMath_V
scoreboard players set #wl_1722 swMath_V -859
scoreboard players operation #wl_1722 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1722 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1722 swMath_V
scoreboard players set #wl_1723 swMath_V 596
scoreboard players operation #wl_1723 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1723 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_17 swMath_V += #wl_1723 swMath_V
scoreboard players operation #x3_17 swMath_V += #bl_17 swMath_V


scoreboard players set #x3_18 swMath_V 0
scoreboard players set #bl_18 swMath_V 2165
scoreboard players set #wl_180 swMath_V 750
scoreboard players operation #wl_180 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_180 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_180 swMath_V
scoreboard players set #wl_181 swMath_V 6403
scoreboard players operation #wl_181 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_181 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_181 swMath_V
scoreboard players set #wl_182 swMath_V -1683
scoreboard players operation #wl_182 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_182 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_182 swMath_V
scoreboard players set #wl_183 swMath_V -2748
scoreboard players operation #wl_183 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_183 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_183 swMath_V
scoreboard players set #wl_184 swMath_V -628
scoreboard players operation #wl_184 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_184 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_184 swMath_V
scoreboard players set #wl_185 swMath_V 1975
scoreboard players operation #wl_185 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_185 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_185 swMath_V
scoreboard players set #wl_186 swMath_V 194
scoreboard players operation #wl_186 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_186 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_186 swMath_V
scoreboard players set #wl_187 swMath_V -1722
scoreboard players operation #wl_187 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_187 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_187 swMath_V
scoreboard players set #wl_188 swMath_V -3041
scoreboard players operation #wl_188 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_188 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_188 swMath_V
scoreboard players set #wl_189 swMath_V 849
scoreboard players operation #wl_189 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_189 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_189 swMath_V
scoreboard players set #wl_1810 swMath_V 1128
scoreboard players operation #wl_1810 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1810 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1810 swMath_V
scoreboard players set #wl_1811 swMath_V 1785
scoreboard players operation #wl_1811 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1811 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1811 swMath_V
scoreboard players set #wl_1812 swMath_V -1409
scoreboard players operation #wl_1812 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1812 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1812 swMath_V
scoreboard players set #wl_1813 swMath_V -10000
scoreboard players operation #wl_1813 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1813 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1813 swMath_V
scoreboard players set #wl_1814 swMath_V -1464
scoreboard players operation #wl_1814 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1814 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1814 swMath_V
scoreboard players set #wl_1815 swMath_V -1179
scoreboard players operation #wl_1815 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1815 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1815 swMath_V
scoreboard players set #wl_1816 swMath_V -2150
scoreboard players operation #wl_1816 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1816 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1816 swMath_V
scoreboard players set #wl_1817 swMath_V -1868
scoreboard players operation #wl_1817 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1817 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1817 swMath_V
scoreboard players set #wl_1818 swMath_V 6643
scoreboard players operation #wl_1818 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1818 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1818 swMath_V
scoreboard players set #wl_1819 swMath_V 695
scoreboard players operation #wl_1819 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1819 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1819 swMath_V
scoreboard players set #wl_1820 swMath_V -573
scoreboard players operation #wl_1820 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1820 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1820 swMath_V
scoreboard players set #wl_1821 swMath_V 702
scoreboard players operation #wl_1821 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1821 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1821 swMath_V
scoreboard players set #wl_1822 swMath_V 803
scoreboard players operation #wl_1822 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1822 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1822 swMath_V
scoreboard players set #wl_1823 swMath_V 975
scoreboard players operation #wl_1823 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1823 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_18 swMath_V += #wl_1823 swMath_V
scoreboard players operation #x3_18 swMath_V += #bl_18 swMath_V


scoreboard players set #x3_19 swMath_V 0
scoreboard players set #bl_19 swMath_V -3032
scoreboard players set #wl_190 swMath_V 802
scoreboard players operation #wl_190 swMath_V *= #x2_0 swMath_V
scoreboard players operation #wl_190 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_190 swMath_V
scoreboard players set #wl_191 swMath_V -10000
scoreboard players operation #wl_191 swMath_V *= #x2_1 swMath_V
scoreboard players operation #wl_191 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_191 swMath_V
scoreboard players set #wl_192 swMath_V -665
scoreboard players operation #wl_192 swMath_V *= #x2_2 swMath_V
scoreboard players operation #wl_192 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_192 swMath_V
scoreboard players set #wl_193 swMath_V 2681
scoreboard players operation #wl_193 swMath_V *= #x2_3 swMath_V
scoreboard players operation #wl_193 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_193 swMath_V
scoreboard players set #wl_194 swMath_V -1882
scoreboard players operation #wl_194 swMath_V *= #x2_4 swMath_V
scoreboard players operation #wl_194 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_194 swMath_V
scoreboard players set #wl_195 swMath_V -1682
scoreboard players operation #wl_195 swMath_V *= #x2_5 swMath_V
scoreboard players operation #wl_195 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_195 swMath_V
scoreboard players set #wl_196 swMath_V 497
scoreboard players operation #wl_196 swMath_V *= #x2_6 swMath_V
scoreboard players operation #wl_196 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_196 swMath_V
scoreboard players set #wl_197 swMath_V -870
scoreboard players operation #wl_197 swMath_V *= #x2_7 swMath_V
scoreboard players operation #wl_197 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_197 swMath_V
scoreboard players set #wl_198 swMath_V -2578
scoreboard players operation #wl_198 swMath_V *= #x2_8 swMath_V
scoreboard players operation #wl_198 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_198 swMath_V
scoreboard players set #wl_199 swMath_V -1536
scoreboard players operation #wl_199 swMath_V *= #x2_9 swMath_V
scoreboard players operation #wl_199 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_199 swMath_V
scoreboard players set #wl_1910 swMath_V 288
scoreboard players operation #wl_1910 swMath_V *= #x2_10 swMath_V
scoreboard players operation #wl_1910 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1910 swMath_V
scoreboard players set #wl_1911 swMath_V 1572
scoreboard players operation #wl_1911 swMath_V *= #x2_11 swMath_V
scoreboard players operation #wl_1911 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1911 swMath_V
scoreboard players set #wl_1912 swMath_V 12
scoreboard players operation #wl_1912 swMath_V *= #x2_12 swMath_V
scoreboard players operation #wl_1912 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1912 swMath_V
scoreboard players set #wl_1913 swMath_V 7261
scoreboard players operation #wl_1913 swMath_V *= #x2_13 swMath_V
scoreboard players operation #wl_1913 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1913 swMath_V
scoreboard players set #wl_1914 swMath_V 442
scoreboard players operation #wl_1914 swMath_V *= #x2_14 swMath_V
scoreboard players operation #wl_1914 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1914 swMath_V
scoreboard players set #wl_1915 swMath_V 1580
scoreboard players operation #wl_1915 swMath_V *= #x2_15 swMath_V
scoreboard players operation #wl_1915 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1915 swMath_V
scoreboard players set #wl_1916 swMath_V 2360
scoreboard players operation #wl_1916 swMath_V *= #x2_16 swMath_V
scoreboard players operation #wl_1916 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1916 swMath_V
scoreboard players set #wl_1917 swMath_V -910
scoreboard players operation #wl_1917 swMath_V *= #x2_17 swMath_V
scoreboard players operation #wl_1917 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1917 swMath_V
scoreboard players set #wl_1918 swMath_V -3528
scoreboard players operation #wl_1918 swMath_V *= #x2_18 swMath_V
scoreboard players operation #wl_1918 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1918 swMath_V
scoreboard players set #wl_1919 swMath_V 2811
scoreboard players operation #wl_1919 swMath_V *= #x2_19 swMath_V
scoreboard players operation #wl_1919 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1919 swMath_V
scoreboard players set #wl_1920 swMath_V 4311
scoreboard players operation #wl_1920 swMath_V *= #x2_20 swMath_V
scoreboard players operation #wl_1920 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1920 swMath_V
scoreboard players set #wl_1921 swMath_V 982
scoreboard players operation #wl_1921 swMath_V *= #x2_21 swMath_V
scoreboard players operation #wl_1921 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1921 swMath_V
scoreboard players set #wl_1922 swMath_V 1062
scoreboard players operation #wl_1922 swMath_V *= #x2_22 swMath_V
scoreboard players operation #wl_1922 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1922 swMath_V
scoreboard players set #wl_1923 swMath_V -636
scoreboard players operation #wl_1923 swMath_V *= #x2_23 swMath_V
scoreboard players operation #wl_1923 swMath_V /= #div1 swMath_V
scoreboard players operation #x3_19 swMath_V += #wl_1923 swMath_V
scoreboard players operation #x3_19 swMath_V += #bl_19 swMath_V




scoreboard players operation #x_out swMath_V = #x3_19 swMath_V 
