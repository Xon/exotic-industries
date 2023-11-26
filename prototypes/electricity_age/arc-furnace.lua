ei_data = require("lib/data")

-- ====================================================================================================
-- ARC FURNACE
-- ====================================================================================================

data:extend({{
    name = "ei_arc-furnace",
    type = "recipe-category"
}, {
    name = "ei_arc-furnace",
    type = "item",
    icon = ei_graphics_item_path .. "arc-furnace.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "d-a-c-3",
    place_result = "ei_arc-furnace",
    stack_size = 50
}, {
    name = "ei_arc-furnace",
    type = "recipe",
    category = "crafting",
    energy_required = 1,
    ingredients = {{"electric-furnace", 1}, {"electric-engine-unit", 4}, {"storage-tank", 2},
                   {"ei_steel-mechanical-parts", 8}},
    result = "ei_arc-furnace",
    result_count = 1,
    enabled = false,
    always_show_made_in = true,
    main_product = "ei_arc-furnace"
}, {
    name = "ei_arc-furnace",
    type = "technology",
    icon = ei_graphics_tech_path .. "arc-furnace.png",
    icon_size = 256,
    prerequisites = {"ei_purifier", "advanced-material-processing-2"},
    effects = {{
        type = "unlock-recipe",
        recipe = "ei_arc-furnace"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-iron:pure-ore"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-iron:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-iron:plate"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-iron:beam"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-iron:mechanical-parts"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-copper:pure-ore"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-copper:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-copper:plate"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-copper:beam"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-copper:mechanical-parts"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-steel:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-steel:beam"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-steel:mechanical-parts"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-gold:pure-ore"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-gold:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-gold:plate"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-lead:pure-ore"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-lead:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_molten-lead:plate"
    }, {
        type = "unlock-recipe",
        recipe = "ei_caster"
    }, {
        type = "unlock-recipe",
        recipe = "ei_cast-gold:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_cast-iron:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_cast-copper:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_cast-steel:ingot"
    }, {
        type = "unlock-recipe",
        recipe = "ei_cast-lead:ingot"
    }},
    unit = {
        count = 100,
        ingredients = ei_data.science["electricity-age"],
        time = 20
    },
    age = "electricity-age"
}, {
    name = "ei_arc-furnace",
    type = "furnace",
    icon = ei_graphics_item_path .. "arc-furnace.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {
        mining_time = 1,
        result = "ei_arc-furnace"
    },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    map_color = ei_data.colors.assembler,
    crafting_categories = {"ei_arc-furnace"},
    crafting_speed = 1,
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input'
    },
    energy_usage = "2MW",
    result_inventory_size = 1,
    source_inventory_size = 1,
    allowed_effects = {"speed", "consumption", "pollution"},
    module_specification = {
        module_slots = 2
    },
    fluid_boxes = {
        --[[
            {   
                base_area = 1,
                base_level = -1,
                height = 2,
                pipe_covers = pipecoverspictures(),
                pipe_picture = ei_pipe_big,
                pipe_connections = {
                    {type = "input", position = {3, 0}},
                },
                production_type = "input",
            },
            ]]
        {
            base_area = 1,
            base_level = 1,
            height = 2,
            pipe_covers = pipecoverspictures(),
            pipe_picture = ei_pipe_big,
            pipe_connections = {{
                type = "output",
                position = {-3, 0}
            }},
            production_type = "output"
        },
        off_when_no_fluid_recipe = true
    },
    animation = {
        filename = ei_graphics_entity_path .. "arc-furnace.png",
        size = {512, 512},
        shift = {0, 0},
        scale = 0.35,
        line_length = 1,
        -- lines_per_file = 2,
        frame_count = 1
        -- animation_speed = 0.2,
    },
    working_visualisations = {{
        animation = {
            filename = ei_graphics_entity_path .. "arc-furnace_animation.png",
            size = {512, 512},
            shift = {0, 0},
            scale = 0.35,
            line_length = 4,
            lines_per_file = 4,
            frame_count = 16,
            animation_speed = 0.4,
            run_mode = "backward"
        }
    }, {
        light = {
            type = "basic",
            intensity = 1,
            size = 15
        }
    }},
    working_sound = {
        sound = {
            filename = "__base__/sound/electric-furnace.ogg",
            volume = 0.6
        },
        apparent_volume = 0.3
    }
}, -- IRON
{
    name = "ei_molten-iron:pure-ore",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_pure-iron",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-iron",
        amount = 15
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-iron"
}, {
    name = "ei_molten-iron:ingot",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_iron-ingot",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-iron",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-iron"
}, {
    name = "ei_molten-iron:plate",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "iron-plate",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-iron",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-iron",
    hide_from_player_crafting = true
}, {
    name = "ei_molten-iron:beam",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_iron-beam",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-iron",
        amount = 20
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-iron",
    hide_from_player_crafting = true
}, {
    name = "ei_molten-iron:mechanical-parts",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_iron-mechanical-parts",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-iron",
        amount = 5
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-iron",
    hide_from_player_crafting = true
}, -- copper
{
    name = "ei_molten-copper:pure-ore",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_pure-copper",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-copper",
        amount = 15
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-copper"
}, {
    name = "ei_molten-copper:ingot",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_copper-ingot",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-copper",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-copper"
}, {
    name = "ei_molten-copper:plate",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "copper-plate",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-copper",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-copper",
    hide_from_player_crafting = true
}, {
    name = "ei_molten-copper:beam",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_copper-beam",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-copper",
        amount = 20
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-copper",
    hide_from_player_crafting = true
}, {
    name = "ei_molten-copper:mechanical-parts",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_copper-mechanical-parts",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-copper",
        amount = 5
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-copper",
    hide_from_player_crafting = true
}, -- steel
{
    name = "ei_molten-steel:ingot",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_steel-ingot",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-steel",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-steel"
}, {
    name = "ei_molten-steel:beam",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "steel-plate",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-steel",
        amount = 20
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-steel",
    hide_from_player_crafting = true
}, {
    name = "ei_molten-steel:mechanical-parts",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_steel-mechanical-parts",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-steel",
        amount = 5
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-steel",
    hide_from_player_crafting = true
}, -- gold
{
    name = "ei_molten-gold:pure-ore",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_pure-gold",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-gold",
        amount = 15
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-gold"
}, {
    name = "ei_molten-gold:ingot",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_gold-ingot",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-gold",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-gold"
}, {
    name = "ei_molten-gold:plate",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_gold-plate",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-gold",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-gold",
    hide_from_player_crafting = true
}, -- lead
{
    name = "ei_molten-lead:pure-ore",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_pure-lead",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-lead",
        amount = 15
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-lead"
}, {
    name = "ei_molten-lead:ingot",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_lead-ingot",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-lead",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-lead"
}, {
    name = "ei_molten-lead:plate",
    type = "recipe",
    category = "ei_arc-furnace",
    energy_required = 0.25,
    ingredients = {{
        type = "item",
        name = "ei_lead-plate",
        amount = 1
    }},
    results = {{
        type = "fluid",
        name = "ei_molten-lead",
        amount = 10
    }},
    always_show_made_in = true,
    enabled = false,
    main_product = "ei_molten-lead",
    hide_from_player_crafting = true
}})
