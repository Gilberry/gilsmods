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

data.raw.ammo["plutonium-atomic-artillery-shell"].order = "d[explosive-cannon-shell]-d[artillery]-a3[plutonium-artillery]"
data.raw.ammo["plutonium-atomic-artillery-shell"].stack_size = 25
data.raw.ammo["plutonium-atomic-artillery-shell"].icon = "__essential-k2se__/graphics/icons/ammo/plutonium-atomic-artillery-shell.png"
data.raw.ammo["plutonium-atomic-artillery-shell"].pictures = {
      layers = {
        {
          filename = "__essential-k2se__/graphics/icons/ammo/plutonium-atomic-artillery-shell.png",
          size = 64,
          scale = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-artillery-shell-light.png",
          size = 64,
          scale = 0.5,
          draw_as_light = true,
        },
      },
    }

    data.raw.ammo["plutonium-rounds-magazine"].pictures = {
      layers = {
        {
          filename = "__PlutoniumEnergy__/graphics/icons/plutonium-rounds-magazine.png",
          size = 64,
          scale = 0.5,
        },
        {
          filename = "__base__/graphics/icons/uranium-rounds-magazine-light.png",
          size = 64,
          scale = 0.5,
          draw_as_light = true,
        },
      },
    }