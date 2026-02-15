data:extend({
    {
        type = "item-group",
        name = "equipment",
        order = "e",
        icon = "__base__/graphics/technology/power-armor-mk2.png",
        icon_size = 256
    }
})

local equipment_subgroups = {
    "armor",
    "equipment",
    "kr-vehicle-motor",
    "se-kr-passive-energy",
    "se-kr-active-energy",
    "se-kr-passive-defense",
    "se-kr-storage-energy",
    "se-kr-active-defense",
    "se-kr-movement-equipment",
    "utility-equipment"
}

for _, subgroup_name in pairs(equipment_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "equipment"
    end
end