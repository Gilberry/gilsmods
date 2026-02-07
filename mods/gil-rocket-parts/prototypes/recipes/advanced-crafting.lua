data:extend(
    {
        {
            type = "recipe",
            name = "rocket-part-assembly",
            energy_required = 1.0,
            enabled = false,
            category = "advanced-crafting",
            icon = "__base__/graphics/icons/rocket-part.png",
            subgroup = "space-rocket",
            order = "a",
            ingredients = {
                {type="item", name="low-density-structure", amount=1},
                {type="item", name="processing-unit", amount=1},
                {type="item", name="rocket-fuel", amount=1}
            },
            results = {
                {type="item", name="rocket-part", amount=1}
            },
            allow_productivity = false,
            allow_quality = false
        }
    }
)