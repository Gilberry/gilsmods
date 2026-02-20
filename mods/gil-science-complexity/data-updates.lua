-- Space Science tweaks
data.raw.recipe["space-science-pack"].ingredients = {
    {type = "item", name = "iron-plate", amount = 2},
    {type = "item", name = "carbon", amount = 1},
    {type = "item", name = "ice", amount = 1},
    {type = "item", name = "uranium-235", amount = 1}
}
data.raw.recipe["space-science-pack"].results = {
    {type = "item", name = "space-science-pack", amount = 5},
    {type = "item", name = "uranium-235", amount = 1, probability = 0.995, ignored_by_productivty = 1, ignored_by_stats = 1}
}
data.raw.technology["rocket-silo"].prerequisites = {
    "logistic-robotics",
    "rocket-fuel",
    "processing-unit",
    "advanced-material-processing-2",
    "low-density-structure",
    "uranium-processing"
}

-- Electromagnetic Science tweaks
data.raw.recipe["electromagnetic-science-pack"].ingredients = {
    {type = "item", name = "precursor-electromagnetic-science-pack", amount = 1}
}
data.raw.recipe["electromagnetic-science-pack"].order = "j-b"
data.raw.tool["electromagnetic-science-pack"].order = "j-b"
data.raw.recipe["electromagnetic-science-pack"].maximum_productivity = 0
data.raw.recipe["electromagnetic-science-pack"].surface_conditions = {
    {property = "pressure", min = 0, max = 10}
}
data.raw.recipe["electromagnetic-science-pack"].allowed_module_categories = {
    "speed",
    "efficiency"
}

-- Agricultural Science tweaks
data.raw.recipe["agricultural-science-pack"].ingredients = {
    {type = "item", name = "bioflux", amount = 1},
    {type = "item", name = "pentapod-egg", amount = 1},
    {type = "item", name = "nutrients", amount = 20}
}

-- Cryogenic Science tweaks
data.raw.recipe["cryogenic-science-pack"].results = {
    {type = "item", name = "cryogenic-science-pack", amount = 1}, 
    {type = "fluid", name = "fluoroketone-hot", amount = 3, temperature = 180.0}
}