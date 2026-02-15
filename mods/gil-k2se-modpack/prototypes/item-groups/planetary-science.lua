data:extend({
    {
        type = "item-group",
        name = "planetary-science",
        order = "c-c-b",
        icon = "__gil-k2se-modpack__/graphics/technologies/research-productivity.png",
        icon_size = 256
    }
})

local planetary_science_subgroups = {
    "science-pack"
}

for _, subgroup_name in pairs(planetary_science_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "planetary-science"
    end
end