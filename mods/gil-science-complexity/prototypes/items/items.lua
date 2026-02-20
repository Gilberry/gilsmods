local item_sounds = require("__base__.prototypes.item_sounds")

data:extend(
    {
        {
            type = "item",
            name = "precursor-electromagnetic-science-pack",
            icon = "__gil-science-complexity__/graphics/icons/precursor-electromagnetic-science-pack.png",
            subgroup = "science-pack",
            order = "j-a",
            inventory_move_sound = item_sounds.science_inventory_move,
            pick_sound = item_sounds.science_inventory_pickup,
            drop_sound = item_sounds.science_inventory_move,
            stack_size = 200,
            weight = 1 * kg
        },
        {
            type = "item",
            name = "hot-cryogenic-science-pack",
            icon = "__gil-science-complexity__/graphics/icons/hot-cryogenic-science-pack.png",
            subgroup = "science-pack",
            order = "k",
            inventory_move_sound = item_sounds.science_inventory_move,
            pick_sound = item_sounds.science_inventory_pickup,
            drop_sound = item_sounds.science_inventory_move,
            stack_size = 200,
            weight = 1 * kg
        }
    }
)