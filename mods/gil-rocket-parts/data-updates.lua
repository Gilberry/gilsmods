data.raw.recipe["rocket-part"].ingredients = {
    {type="item", name="rocket-part", amount=1}
}
data.raw.recipe["rocket-part"].icon = "__gil-rocket-parts__/graphics/icons/rocket-part-silo.png"
data.raw.recipe["rocket-part"].hide_from_stats = true

table.insert(data.raw.technology["rocket-silo"].effects,
    {type = "unlock-recipe", recipe="rocket-part-assembly"}
)