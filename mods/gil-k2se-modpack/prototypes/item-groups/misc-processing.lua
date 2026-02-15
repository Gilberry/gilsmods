data:extend({
    {
        type = "item-group",
        name = "misc-processing",
        order = "c-b-d",
        icon = "__Krastorio2Assets__/technologies/advanced-chemistry.png",
        icon_size = 256
    }
})

local misc_processing_subgroups = {
    "basic-matter-conversion",
    "fuel",
    "gel",
    "sludge",
    "stream",
    "materialisation",
    "advanced-particle-stream"
}

for _, subgroup_name in pairs(misc_processing_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "misc-processing"
    end
end