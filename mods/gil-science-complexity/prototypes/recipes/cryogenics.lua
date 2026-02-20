data:extend(
    {
        {
            type = "recipe",
            name = "hot-cryogenic-science-pack-cooling",
            energy_required = 8,
            enabled = false,
            category = "cryogenics",
            icon = "__gil-science-complexity__/graphics/icons/hot-cryogenic-science-pack-cooling.png",
            subgroup = "science-pack",
            order = "l",
            ingredients = {
                {type ="item", name = "hot-cryogenic-science-pack", amount = 5},
                {type ="fluid", name = "fluoroketone-cold", amount = 20},
                {type ="item", name = "ice", amount = 5}
            },
            results = {
                {type = "item", name = "cryogenic-science-pack", amount = 5},
                {type = "fluid", name = "fluoroketone-hot", amount = 10, temperature = 180.0}
            },
            allow_productivity = false,
            maximum_productivity = 0,
            allow_quality = false,
            always_show_made_in = true,
            hide_from_stats = true,
            reset_freshness_on_craft = true,
            crafting_machine_tint = {
                primary = {r = 0.455, g = 0.837, b = 0.563, a = 1.000}, -- #73d58fff
                secondary = {r = 0.398, g = 0.732, b = 0.681, a = 1.000}, -- #65baadff
                tertiary = {r = 0.337, g = 0.306, b = 0.306, a = 1.000}, -- #554e4eff
                quaternary = {r = 0.436, g = 0.743, b = 0.711, a = 1.000} -- #6fbdb5ff
            }
        },
        {
            type = "recipe",
            name = "cryogenic-science-pack-cooling",
            energy_required = 1,
            enabled = false,
            category = "cryogenics",
            icon = "__gil-science-complexity__/graphics/icons/cryogenic-science-pack-cooling.png",
            subgroup = "science-pack",
            order = "l",
            ingredients = {
                {type ="item", name = "cryogenic-science-pack", amount = 10},
                {type ="fluid", name = "fluoroketone-cold", amount = 5},
                {type ="item", name = "ice", amount = 1}
            },
            results = {
                {type = "item", name = "cryogenic-science-pack", amount = 10},
                {type = "fluid", name = "fluoroketone-hot", amount = 5, temperature = 180.0}
            },
            allow_productivity = false,
            maximum_productivity = 0,
            allow_quality = false,
            always_show_made_in = true,
            hide_from_stats = true,
            reset_freshness_on_craft = true,
            crafting_machine_tint = {
                primary = {r = 0.455, g = 0.837, b = 0.563, a = 1.000}, -- #73d58fff
                secondary = {r = 0.398, g = 0.732, b = 0.681, a = 1.000}, -- #65baadff
                tertiary = {r = 0.337, g = 0.306, b = 0.306, a = 1.000}, -- #554e4eff
                quaternary = {r = 0.436, g = 0.743, b = 0.711, a = 1.000} -- #6fbdb5ff
            }
        }
    }
)