data:extend({
    {
        type = "item-group",
        name = "deep-science",
        order = "c-e",
        icon = "__space-exploration-graphics__/graphics/technology/teleportation.png",
        icon_size = 256
    }
})

local deep_science_subgroups = {
    "data-catalogue-matter",
    "data-matter",
    "matter-science-pack",
    "data-catalogue-advanced",
    "data-advanced",
    "advanced-science-pack",
    "data-catalogue-deep",
    "data-deep",
    "deep-science-pack"
}

for _, subgroup_name in pairs(deep_science_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "deep-science"
    end
end