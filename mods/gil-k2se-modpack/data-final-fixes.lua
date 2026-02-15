local data_util = require("__space-exploration__.data_util")

-- Mark essential technologies
local essential_techs = {
    "kr-matter-tech-card",
    "se-kr-matter-science-pack-2",
    "kr-advanced-tech-card",
    "kr-singularity-tech-card"
}

for _, tech_name in pairs(essential_techs) do
    local tech = data.raw.technology[tech_name]
    if tech then
        tech.essential = true
    else
        log("essential-k2se: Technology '" .. tech_name .. "' not found.")
    end
end

-- Ammo icon overrides (using pictures directly)
local ammo_pictures = {
    ["kr-imersite-rounds-magazine"] = {
        layers = {
            { filename = "__gil-k2se-modpack__/graphics/icons/ammo/imersite-rounds-magazine.png", size = 64, scale = 0.5 },
            { filename = "__Krastorio2Assets__/icons/ammo/antimatter-artillery-shell-light.png", size = 64, scale = 0.5, draw_as_light = true }
        }
    },
    ["plutonium-atomic-artillery-shell"] = {
        layers = {
            { filename = "__gil-k2se-modpack__/graphics/icons/ammo/plutonium-atomic-artillery-shell.png", size = 64, scale = 0.5 },
            { filename = "__Krastorio2Assets__/icons/ammo/antimatter-artillery-shell-light.png", size = 64, scale = 0.5, draw_as_light = true }
        }
    },
    ["plutonium-rounds-magazine"] = {
        layers = {
            { filename = "__PlutoniumEnergy__/graphics/icons/plutonium-rounds-magazine.png", size = 64, scale = 0.5 },
            { filename = "__base__/graphics/icons/uranium-rounds-magazine-light.png", size = 64, scale = 0.5, draw_as_light = true }
        }
    }
}

for ammo_name, pics in pairs(ammo_pictures) do
    local ammo = data.raw.ammo[ammo_name]
    if ammo then
        ammo.pictures = pics
        ammo.icon = pics.layers[1].filename
    end
end

-- Ammo order
local ammo_order = {
    ["plutonium-atomic-artillery-shell"] = "d[explosive-cannon-shell]-d[artillery]-a3[plutonium-artillery]",
    ["plutonium-rounds-magazine"] = "a[basic-clips]-e[plutonium-rounds-magazine]",
    ["kr-antimatter-rocket"] = "d[rocket-launcher]-e[antimatter-rocket]",
    ["se-plague-bomb"] = "d[rocket-launcher]-f[plague-bomb]",
    ["explosive-cannon-shell-precision"] = "d[cannon-shell]-c[explosive]-b",
    ["high-explosive-cannon-shell"] = "d[cannon-shell]-c[explosive]-c",
    ["explosive-uranium-cannon-shell"] = "d[cannon-shell]-c[uranium]-b",
    ["plutonium-cannon-shell"] = "d[cannon-shell]-d[plutonium]-a",
    ["explosive-plutonium-cannon-shell"] = "d[cannon-shell]-d[plutonium]-b",
    ["mortar-bomb"] = "d[explosive-cannon-shell]-a[mortar-bomb]-a",
    ["mortar-cluster-bomb"] = "d[explosive-cannon-shell]-a[mortar-bomb]-b"
}

for ammo_name, order in pairs(ammo_order) do
    local ammo = data.raw.ammo[ammo_name]
    if ammo then
        ammo.order = order
    end
end

-- Stack size overrides
local ammo_stack_sizes = {
    ["plutonium-atomic-artillery-shell"] = 25
}

for ammo_name, stack_size in pairs(ammo_stack_sizes) do
    local ammo = data.raw.ammo[ammo_name]
    if ammo then
        ammo.stack_size = stack_size
    end
end

-- Recipe icon overrides
local iridium_base = data_util.mod_prefix .. "iridium-piledriver"
local recipe_name = data_util.mod_prefix .. "delivery-cannon-weapon-pack-" .. iridium_base
local recipe = data.raw.recipe[recipe_name]
if recipe then
    recipe.icon = "__gil-k2se-modpack__/graphics/icons/ammo/iridium-piledriver.png"
    recipe.icon_size = 64
end

-- Organise
local space_subgroups = { "Asteroid-Miners", "ResourceChunks" }

for _, subgroup_name in pairs(space_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "space"
    end
end

local nuclear_subgroups = {
    "nuclear-uranium",
    "nuclear-plutonium",
    "nuclear-breeding"
}

for _, subgroup_name in pairs(nuclear_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "misc-processing"
    end
end

local misc_subgroups = {
    "fluid-recipes",
    "water",
    "kr-atmosphere-condensation"
}

for _, subgroup_name in pairs(misc_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "misc-processing"
    end
end

local science_subgroups = {
    "science-pack"
}

for _, subgroup_name in pairs(science_subgroups) do
    local subgroup = data.raw["item-subgroup"][subgroup_name]
    if subgroup then
        subgroup.group = "planetary-science"
    end
end

data.raw.item["kr-charged-matter-stabilizer"].subgroup = "advanced-assembling"
data.raw.item["kr-biofuel"].subgroup = "fuel"
data.raw.item["kr-advanced-fuel"].subgroup = "fuel"

data.raw.recipe["kr-charged-matter-stabilizer"].subgroup = "advanced-assembling"
data.raw.recipe["kr-biofuel"].subgroup = "fuel"
data.raw.recipe["kr-advanced-fuel"].subgroup = "fuel"