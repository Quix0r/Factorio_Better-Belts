---@type table<string,string> Mod information
local BB = require("libs/bb")

if deadlock then
	deadlock.add_tier({
		transport_belt      = BB.modName .. "_" .. BB.type .. "-transport-belt",
		colour              = {r=0,g=211,b=37},
		technology          = "logistics-3",
		order               = "d",
		loader              = BB.modName .. "_" .. BB.type .. "-deadlock-loader",
		loader_ingredients  = {
			{"express-transport-belt-loader",1},
			{"iron-gear-wheel",40},
		},
		beltbox             = BB.modName .. "_" .. BB.type .. "-deadlock-beltbox",
		beltbox_ingredients = {
			{"express-transport-belt-beltbox",1},
			{"steel-plate",40},
			{"iron-gear-wheel",40},
			{"processing-unit",5},
		},
		beltbox_technology  = "deadlock-stacking-3",
	})

	if data.raw.furnace[BB.modName .. "_" .. BB.type .. "-transport-belt-beltbox"] then
		data.raw.furnace["express-transport-belt-beltbox"].next_upgrade = BB.modName .. "_" .. BB.type .. "-transport-belt-beltbox"
	end
end
