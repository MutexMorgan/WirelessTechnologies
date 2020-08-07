local WT = {}

WT["ModName"] = "WirelessTechnologies"
WT["SettPref"] = string.lower(WT["ModName"]) .. "-"

local Nodes = {}
Nodes[1] = "power"
Nodes[2] = "items"
Nodes[3] = "liquids"
Nodes[4] = "pollution"

WT["Nodes"] = Nodes

return WT