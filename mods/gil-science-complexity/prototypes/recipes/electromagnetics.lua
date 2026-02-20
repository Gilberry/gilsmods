data:extend(
    {
        {
            type = "recipe",
            name = "precursor-electromagnetic-science-pack",
            energy_required = 10,
            enabled = false,
            category = "electromagnetics",
            icon = "__gil-science-complexity__/graphics/icons/precursor-electromagnetic-science-pack.png",
            subgroup = "science-pack",
            order = "j-a",
            ingredients = {
                {type ="item", name = "accumulator", amount = 1},
                {type ="fluid", name = "electrolyte", amount = 25},
                {type ="fluid", name = "holmium-solution", amount = 25},
                {type ="item", name = "supercapacitor", amount = 1}
            },
            results = {
                {type = "item", name = "precursor-electromagnetic-science-pack",amount = 1}
            },
            surface_conditions = {
                {property = "magnetic-field", min = 95, max = 100}
            },
            allow_productivity = true,
            always_show_made_in = true
        }
    }
)