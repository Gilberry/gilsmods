data:extend({
    {
        type = "item-group",
        name = "modules",
        order = "b-c",
        icon = "__base__/graphics/technology/module.png",
        icon_size = 256
    }
})

local module_subgroups = {
    "module-speed",
    "module-efficiency",
    "module-productivity"
}

for _, subgroup_name in pairs(module_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "modules"
    end
end