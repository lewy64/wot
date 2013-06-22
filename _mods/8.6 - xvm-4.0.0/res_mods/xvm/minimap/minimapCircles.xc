﻿/**
 * Minimap circles. Only real map meters. Only for own unit. Works only with xvm-stat.exe for uncommon locales.
 * xvm-stat.exe is not necessary for RU, EN, DE and partially CH locale.
 */
{
	// Artillery gun fire range circle
	"ArtyRangeCircle": {
		"enabled": true,
		"thickness": 1,
		"alpha": 60,
		"color": "0xEE4444"
	},
	"TankSpotCircle": {
		"enabled": true,
		"thickness": 0.3,
		"alpha": 65,
		"color": "0x00BBFF"
	},
	"circles": {
        "enabled": true,
        "major": [
            { "enabled": true, "distance": 445, "thickness": 0.3, "alpha": 100, "color": "0xF7921C" }, // 445 max disclosure distance
            { "enabled": true, "distance":  50, "thickness": 0.5, "alpha":  40, "color": "0xFFFFFF" },
			{ "enabled": true, "distance":  10, "thickness":  17, "alpha":  20, "color": "0xFFFFFF" }
        ],
		// Special circles dependent on vehicle type.
        // Many configuration lines for the same vehicle make many circles.
        // Only artillery top gun range by default.
        // See other vehicle types at:
        // http://code.google.com/p/wot-xvm/source/browse/trunk/src/xvm/src/wot/utils/VehicleInfoData2.as
        // Artillery gun fire range may differ depending on vehicle angle relative to ground
        // and vehicle height positioning relative to target. These factors are not considered.
        // See pics at http://goo.gl/ZqlPa
        "special": [
            // Copy lines in case many special circles wanted for one type.
            // Artillery range circle by type. Top gun range is used by default.
			{ "su_18":            			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  552 } },
            { "su_26":            			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  578 } },
            { "su_5":             			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  605 } },
            { "su_8":             			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  920 } },
            { "s_51":             			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1229 } },
            { "su_14":            			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1229 } },
            { "object_212":       			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1229 } },
            { "object_261":       			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1463 } },

            { "bison_i":          			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  605 } },
            { "sturmpanzer_ii":   			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  605 } },
            { "wespe":            			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1000 } },
            { "grille":           			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1210 } },
            { "hummel":           			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1264 } },
            { "g_panther":        			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1407 } },
            { "g_tiger":          			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1172 } },
            { "g_e":              			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1172 } },

            { "t57":              			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  552 } },
            { "m37":              			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  969 } },
            { "m7_priest":        			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1047 } },
            { "m41":              			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1210 } },
            { "m12":              			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1316 } },
            { "m40m43":           			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1179 } },
            { "t92":              			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1248 } },

            { "renaultbs":        			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  450 } },
            { "lorraine39_l_am":  			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  844 } },
            { "amx_105am":        			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1000 } },
            { "_105_lefh18b2":    			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1000 } },
            { "amx_13f3am":       			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1250 } },
            { "lorraine155_50":   			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1202 } },
            { "lorraine155_51":   			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1296 } },
            { "bat_chatillon155": 			{ "$ref": { "path": "ArtyRangeCircle" }, "distance": 1296 } },
			
			{ "gb78_sexton_i":    			{ "$ref": { "path": "ArtyRangeCircle" }, "distance":  767 } },
        
			// Sichtweite
			// Arty
			{ "bison_i": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "renaultbs": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "su_18": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "t57": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "lorraine39_l_am": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "m37": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "sturmpanzer_ii": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "su_26": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "wespe": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "_105_lefh18b2": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "amx_105am": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "grille": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "m7_priest": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "su_5": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "amx_13f3am": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "hummel": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m41": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "su_8": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "g_panther": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "lorraine155_50": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m12": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "s_51": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "su_14": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "g_tiger": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "lorraine155_51": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "m40m43": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "object_212": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "bat_chatillon155": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "g_e": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "object_261": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t92": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			
			// Sichtweite Tanks:
			// 1
			{ "ch06_renault_nc31": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 250 } },
			{ "ch06_renault_nc31": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "gb01_medium_mark_i": 		{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "gb01_medium_mark_i": 		{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "ltraktor": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "ltraktor": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "ms_1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 240 } },
			{ "ms_1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "observer": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 240 } },
			{ "renaultft": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 250 } },
			{ "renaultft": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "t1_cunningham": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 240 } },
			{ "t1_cunningham": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			// 2
			{ "at_1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 250 } },
			{ "bt_2": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 240 } },
			{ "bt_2": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "ch07_vickers_mke_type_bt26":	{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "ch07_vickers_mke_type_bt26":	{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "d1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "d1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "gb03_cruiser_mk_i": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "gb03_cruiser_mk_i": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "gb05_vickers_medium_mk_ii":	{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "gb05_vickers_medium_mk_ii":	{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "gb58_cruiser_mk_iii":		{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "h39_captured": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "hotchkiss_h35": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "m2_lt": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "m2_lt": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "panzerjager_i": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "pz35t": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 290 } },
			{ "pz35t": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "pzii": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 290 } },
			{ "pzii": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "renaultft_ac": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "t1_e6": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "t18": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 240 } },
			{ "t2_lt": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "t2_med": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "t2_med": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "t_26": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "t_26": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "t_60": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "t_60": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "tetrarch_ll": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			// 3
			{ "amx38": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "bt_7": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "bt_7": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "bt_sv": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "ch08_type97_chi_ha":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "ch08_type97_chi_ha":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "d2": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "d2": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "fcm_36pak40": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "g20_marder_ii": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "gb06_vickers_medium_mk_iii":	{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "gb06_vickers_medium_mk_iii":	{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "gb42_valentine_at":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "gb59_cruiser_mk_iv": 		{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "gb59_cruiser_mk_iv": 		{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "gb69_cruiser_mk_ii": 		{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "gb69_cruiser_mk_ii": 		{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "m2_med": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "m2_med": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m22_locust": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "m3_stuart": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "m3_stuart": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "m3_stuart_ll": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "mtls_1g14": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "pz_ii_ausfg": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "pz_ii_ausfg": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "pz38t": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "pz38t": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "pzi_ausf_c":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "pzi_ausf_c":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "pzii_j": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "pzii_luchs": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "pzii_luchs": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "pziii_a": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "renaultue57": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "s35_captured": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "su_76": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "t_127": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "t_15": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "t_46": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "t_46": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "t_70": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "t_70": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "t82": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			// 4
			{ "a_20": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "a_20": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "a_32": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "amx40": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "amx40": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "b1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "b1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "b_1bis_captured": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "ch09_m5": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "ch09_m5": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "gaz_74b": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "gb04_valentine": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "gb04_valentine": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "gb07_matilda": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "gb07_matilda": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "gb57_alecto":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "gb60_covenanter": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "gb60_covenanter": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "hetzer": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 260 } },
			{ "m3_grant": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "m5_stuart": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "m5_stuart": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m8a1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "pz38_na": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "pz38_na": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "pziii": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "somua_sau_40": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "t_28": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "t_28": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "t40": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "t_50": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "t80":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "valentine_ll": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "vk1602": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "vk2001db": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			// 5
			{ "bdr_g1b": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 300 } },
			{ "bdr_g1b": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "ch21_t34":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "ch21_t34": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "churchill_ll": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "elc_amx": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "gb08_churchill_i": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "gb08_churchill_i": 			{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "gb20_crusader": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "gb20_crusader": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "gb73_at2":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "gb68_matilda_black_prince":	{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "kv": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "kv1": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "kv_220": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "kv_220_action": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "m10_wolverine": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m24_chaffee": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m24_chaffee": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "m4_sherman": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "m4_sherman": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m4a2e4": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m7_med": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m7_med": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "matilda_ii_ll": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "pziii_iv": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "pziv": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "pziv": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "pziv_hydro": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "ram_ii": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "s_35ca": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "stugiii": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 310 } },
			{ "su_85i": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "su_85": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 280 } },
			{ "t_50_2": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "t_50_2": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "t1_hvy": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "t1_hvy": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "t14": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "t_25": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "t_34": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 240 } },
			{ "t_34": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "t49": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "t49": 						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "vk2801": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "vk2801": 					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			// 6
			{ "amx_12t":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "arl_44":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "arl_44":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "arl_v39":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "ch15_59_16": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "ch15_59_16": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch20_type58": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "ch20_type58": 				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "dickermax":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "gb09_churchill_vii":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "gb09_churchill_vii": 		{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "gb21_cromwell":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "gb40_gun_carrier_churchill":	{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "gb63_tog_ii":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "jagdpziv":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "kv_1s":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "kv_1s":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "kv2":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "kv2":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "m18_hellcat":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m36_slagger":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m4a3e8_sherman":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "m4a3e8_sherman":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m6":							{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "m6":							{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "pziv_schmalturm":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "pzv_pziv":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "pzv_pziv_ausf_alfa":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "sherman_jumbo":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "sherman_jumbo":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "su_100":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "su100y":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "t150":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 320 } },
			{ "t150":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "t21":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "t_34_85":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "t_34_85":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "vk3001h":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "vk3001h":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "vk3001p":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "vk3001p":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "vk3601h":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			// 7
			{ "amx_13_75":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "amx_ac_mle1946":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "amx_m4_1945":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "amx_m4_1945":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "Auf_Panther":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "Auf_Panther":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "ch02_type62":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "ch04_t34_1":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "ch04_t34_1":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "ch10_is2":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "ch16_wz_131":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch16_wz_131":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "gb10_black_prince":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "gb22_comet":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "gb22_comet":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "gb71_at_15a":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "gb75_at7":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "is":							{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "is":							{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "jagdpanther":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "kv_13":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "kv_13":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "kv_3":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "kv_3":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 340 } },
			{ "panther_m10":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "pzv":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "pzv":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "pzvi":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "pzvi":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "pzvi_tiger_p":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "su100m1":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "su122_44":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "su_152":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "t20":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "t20":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "t25_2":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t25_at":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "t29":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "t29":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t_43":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "t_43":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "t71":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "vk3002db":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "vk3002db":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			// 8
			{ "amx_13_90":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "amx_50_100":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "amx_ac_mle1948":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "ch01_type59":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch01_type59_gold":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch03_wz_111":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch05_t34_2":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "ch05_t34_2":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch11_110":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "ch11_110":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch17_wz131_1_wz132":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "ch17_wz131_1_wz132":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "fcm_50t":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "ferdinand":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "gb11_caernarvon":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "gb11_caernarvon":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "gb23_centurion":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "gb23_centurion":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "gb72_at15":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "indien_panzer":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "is_3":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "is_3":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "isu_152":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "jagdpantherii":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "jagdtiger_sdkfz_185":		{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "kv4":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 330 } },
			{ "kv4":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "kv_5":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "lowe":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "m6a2e1":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "object252":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 350 } },
			{ "panther_ii":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "panther_ii":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "pershing":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "pershing":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "pzvib_tiger_ii":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "su_101":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t23":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t26_e4_superpershing":		{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t28":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "t28_prototype":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t32":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t32":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "t34_hvy":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "t_44":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "t_44":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t69":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "vk4502a":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			// 9
			{ "amx_50_120":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "amx50_foch":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "ch12_111_1_2_3":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch12_111_1_2_3":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "ch18_wz_120":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "ch18_wz_120":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "e_50":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "e_50":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "e_75":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "gb12_conqueror":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "gb24_centurion_mk3":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "gb24_centurion_mk3":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 410 } },
			{ "gb32_tortoise":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "is8":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "is8":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "jagdtiger":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "lorraine40t":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "m103":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 370 } },
			{ "m103":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "m46_patton":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "m46_patton":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 410 } },
			{ "object_704":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "pro_ag_a":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "pro_ag_a":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "st_i":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 360 } },
			{ "st_i":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "su122_54":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "t30":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "t_54":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 390 } },
			{ "t54e1":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "t95":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 380 } },
			{ "vk4502p":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			// 10
			{ "amx_50fosh_155":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "bat_chatillon25t":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "ch19_121":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "ch22_113":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "e_100":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "e50_ausf_m":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "f10_amx_50b":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "gb13_fv215b":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 410 } },
			{ "gb48_fv215b_183":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "gb70_fv4202_105":			{ "$ref": { "path": "TankSpotCircle" }, "distance": 410 } },
			{ "is_4":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "is_7":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "jagdpz_e100":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "leopard1":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 410 } },
			{ "m48a1":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 420 } },
			{ "maus":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "object263":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 410 } },
			{ "object268":					{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "t110":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "t110e3":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "t110e4":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "t57_58":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "t62a":						{ "$ref": { "path": "TankSpotCircle" }, "distance": 400 } },
			{ "white_tiger":				{ "$ref": { "path": "TankSpotCircle" }, "distance": 460 } }
		]
    }
}