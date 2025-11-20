local tech_name = "logistic-system"
local tech = data.raw["technology"][tech_name]

if tech then
    tech.unit.ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
        { "chemical-science-pack",   1 },
        { "military-science-pack",   1 },
        { "se-rocket-science-pack",  1 }
    }
    tech.unit.count = 10000
    tech.prerequisites = {
        "logistic-robotics"
    }
    log("Tech " .. tech_name .. " adjusted")
else
    log("Error: Recipe " .. tech_name .. " not found. Cannot modify.")
end
