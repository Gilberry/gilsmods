data:extend({
    {
        type = "item-group",
        name = "item-storage",
        order = "b-b",
        icon = "__Krastorio2Assets__/technologies/shelter.png",
        icon_size = 256
    }
})

local storage_subgroups = {
    "container-1",
    "container-2",
    "container-4",
    "container-6",
    "storage"
}

for _, subgroup_name in pairs(storage_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "item-storage"
    end
end
