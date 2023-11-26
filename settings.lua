-- settings for Exotic Industries
data:extend({{
    name = "ei_tech-scaling:maxCost",
    type = "string-setting",
    setting_type = "startup",
    default_value = "Default",
    allowed_values = {"Default", "Very Cheap", "Cheap", "Expensive", "Very Expensive"},
    order = "a1"
}, {
    name = "ei_tech-scaling:startPrice",
    type = "int-setting",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    maximum_value = 100000,
    order = "a2"
}, {
    name = "ei_tech-scaling:additionalMultiplier",
    type = "int-setting",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 100,
    order = "a2-1"
}, {
    name = "ei_tech-scaling:curveForm",
    type = "string-setting",
    setting_type = "startup",
    default_value = "linear",
    allowed_values = {"linear", "quadratic", "exponential"},
    order = "a3"
}, {
    name = "ei_age-enabler:neededPercentage",
    type = "int-setting",
    setting_type = "startup",
    default_value = "65",
    minimum_value = 1,
    maximum_value = 90,
    order = "a4"
}, {
    name = "ei_pipe-to-ground:length",
    type = "int-setting",
    setting_type = "startup",
    default_value = "16",
    minimum_value = 10,
    maximum_value = 40,
    order = "a5"
}, {
    name = "ei_nuclear-reactor:energy-output",
    type = "string-setting",
    setting_type = "startup",
    default_value = "200MW",
    allowed_values = {"75MW", "150MW", "200MW", "225MW", "300MW"},
    order = "a6"
}, {
    name = "ei_nuclear-reactor:remove-bonus",
    type = "bool-setting",
    setting_type = "startup",
    default_value = true,
    order = "a7"
}, {
    name = "ei_barrel:multiplier",
    type = "int-setting",
    setting_type = "startup",
    default_value = 2,
    minimum_value = 1,
    maximum_value = 10,
    order = "a8"
}, {
    name = "ei_max_updates_per_tick",
    type = "int-setting",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    maximum_value = 100,
    order = "b3"
}, {
    name = "ei_ticks_per_spaced_update",
    type = "int-setting",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    maximum_value = 100,
    order = "b2"
}, {
    name = "ei_beacon-overload",
    type = "bool-setting",
    setting_type = "startup",
    default_value = true,
    order = "b1"
}})
