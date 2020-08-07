local Consts = require("lua.consts")
local Funcs = require("__MutexLib__.lua.functions")
for i, node in pairs(Consts.Nodes) do
    data:extend({
        {
            type = "bool-setting",
            name = Consts["SettPref"] .. node .. "-isenabled",
            order = tostring(i),
            setting_type = "runtime-global",
            default_value = true
        },
        {
            type = "double-setting",
            name = Consts["SettPref"] .. node .. "-efficiency",
            order = tostring(i),
            setting_type = "runtime-global",
            minimum_value = 0,
            maximum_value = Funcs.IfThenElse(i == 1, 1.0, 100.0),
            default_value = 0.99
        }
    })
end