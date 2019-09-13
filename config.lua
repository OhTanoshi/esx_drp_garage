Config = {
	Locale = "en",
	DrawDistance = 100,
	Price = 3000,

	-- This is the multiplier of price to pay when the car is damaged
	-- 100% damaged means 1000 * Multiplier
	-- 50% damaged means 500 * Multiplier
	-- Etc.
	RepairMultiplier = 1, 
	
	BlipInfos = {
		Sprite = 290,
		Color = 38
	},
	
	BlipPound = {
		Sprite = 67,
		Color = 64
	}
}

Config.Garages = {

	Garage_Centre = {	
		Pos = {x = 215.800, y = -810.057, z = 29.727},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = 229.700, y = -800.1149, z = 29.5722},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading = 157.84
		},
		DeletePoint = {
			Pos = {x = 215.124, y = -791.377, z = 29.646},
			Color = {r = 255, g = 0, b = 0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			
		},
		MunicipalPoundPoint = {
			Pos = {x = 482.896, y =- 1316.557, z = 28.301},
			Color = {r = 25, g = 25, b = 112},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		SpawnMunicipalPoundPoint = {
			Pos = {x = 490.942, y = -1313.067, z = 27.964},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading = 299.42
		},
	},
	
	Garage_Paleto = {	
		Pos = {x=  105.359, y = 6613.586, z = 31.3973},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = 128.7822, y = 6622.9965, z = 30.7828},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x = 126.3572, y = 6608.4150, z = 30.8565},
			Color = {r = 255, g = 0, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x = -185.187, y = 6272.027, z = 30.580},
			Color = {r = 25, g = 25, b = 112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x = -199.160, y = 6274.180, z = 30.580},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
	},
	
	Garage_Poissoniers = {	
		Pos = {x = -1511.6556396484, y = 5009.875, z = 61.800533294678},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = -1511.6556396484,y = 5009.875,z = 61.800533294678},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x = -1524.1857910156,y = 4997.2885742188,z = 61.598690032959},
			Color = {r = 255, g = 0, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x = -2211.8347167969,y = 4241.1069335938,z = 46.61901473999},
			Color = {r = 25, g = 25, b = 112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x = -2205.4594726563, y = 4247.3603515625, z = 46.639003753662},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
	},
	
	Garage_SandyShore = {	
		Pos = {x = 1501.2, y = 3762.19, z = 33.0},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = 1497.15, y = 3761.37, z = 32.8},
			Color = {r = 0, g = 255,b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x = 1504.1, y = 3765.55, z = 32.8},
			Color = {r = 255, g = 0, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x = 1561.6000976563, y = 3522.8583984375, z = 34.789356231689},
			Color = {r = 25, g = 25, b = 112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x = 1551.8347167969, y = 3518.1003417969, z = 34.988235473633},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
	},
	
	Garage_Aeroport = {	
		Pos = {x = -977.21661376953, y = -2710.3798828125, z = 12.853487014771},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = -977.21661376953, y = -2710.3798828125, z = 12.853487014771},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x = -966.88208007813, y = -2709.9028320313, z = 12.83367729187},
			Color = {r = 255,g = 0,b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x = -1041.4571533203, y = -2676.3471679688, z = 12.830760002136},
			Color = {r = 25,g = 25, b = 112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x = -1048.3468017578, y = -2669.771484375, z = 12.830758094788},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
	},

}
