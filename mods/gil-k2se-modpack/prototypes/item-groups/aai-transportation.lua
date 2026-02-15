data:extend({
    {
        type = "item-group",
        name = "aai-transportation",
        order = "a-b",
        icon = "__base__/graphics/technology/automobilism.png",
        icon_size = 256
    }
})

local subgroups_to_move = {
    "ai-vehicles",
    "ai-vehicles-reverse",
    "transport",
    "cars",
    "programmable-structures",
    "textplates"
}

for _, subgroup_name in pairs(subgroups_to_move) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "aai-transportation"
    end
end