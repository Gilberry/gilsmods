local scrap = data.raw.resource["scrap"]
if scrap and scrap.minable then
    scrap.minable.required_fluid = "lubricant"
    scrap.minable.fluid_amount = settings.startup["scrap-lube-amount"].value
end