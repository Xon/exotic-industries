ei_data = require("lib/data")

-- ====================================================================================================
-- BIO REACTOR
-- ====================================================================================================

data:extend({{
    name = "ei_bio-reactor",
    type = "recipe-category"
}, {
    name = "ei_bio-reactor",
    type = "item",
    icon = ei_graphics_item_2_path .. "bio-reactor.png",
    icon_size = 64,
    subgroup = "ei_alien-structures",
    order = "a-b",
    place_result = "ei_bio-reactor",
    stack_size = 50
}, {
    name = "ei_bio-reactor",
    type = "recipe",
    category = "crafting",
    energy_required = 2,
    ingredients = {{"chemical-plant", 2}, {"ei_bio-chamber", 2}, {"ei_steel-mechanical-parts", 16}},
    result = "ei_bio-reactor",
    result_count = 1,
    enabled = false,
    always_show_made_in = true,
    main_product = "ei_bio-reactor"
}, {
    name = "ei_bio-reactor",
    type = "technology",
    icon = ei_graphics_tech_2_path .. "bio-reactor.png",
    icon_size = 256,
    prerequisites = {"ei_knowledge-computer-age-tech"},
    effects = {{
        type = "unlock-recipe",
        recipe = "ei_bio-reactor"
    }},
    unit = {
        count = 100,
        ingredients = ei_data.science["knowledge-computer-age"],
        time = 20
    },
    age = "knowledge-computer-age"
}, {
    name = "ei_bio-reactor",
    type = "assembling-machine",
    crafting_categories = {"chemistry", "ei_bio-reactor"},
    icon = ei_graphics_item_2_path .. "bio-reactor.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {
        mining_time = 0.5,
        result = "ei_bio-reactor"
    },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    map_color = ei_data.colors.assembler,
    crafting_speed = 3,
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input'
    },
    allowed_effects = {"speed", "consumption", "pollution", "productivity"},
    module_specification = {
        module_slots = 4
    },
    energy_usage = "500kW",
    fluid_boxes = {{
        base_area = 1,
        base_level = -1,
        height = 2,
        pipe_covers = pipecoverspictures(),
        pipe_picture = ei_pipe_big,
        pipe_connections = {{
            type = "input",
            position = {3, 1}
        }},
        production_type = "input"
    }, {
        base_area = 1,
        base_level = -1,
        height = 2,
        pipe_covers = pipecoverspictures(),
        pipe_picture = ei_pipe_big,
        pipe_connections = {{
            type = "input",
            position = {3, -1}
        }},
        production_type = "input"
    }, {
        base_area = 1,
        base_level = 1,
        height = 2,
        pipe_covers = pipecoverspictures(),
        pipe_picture = ei_pipe_big,
        pipe_connections = {{
            type = "output",
            position = {-3, 1}
        }},
        production_type = "output"
    }, {
        base_area = 1,
        base_level = 1,
        height = 2,
        pipe_covers = pipecoverspictures(),
        pipe_picture = ei_pipe_big,
        pipe_connections = {{
            type = "output",
            position = {-3, -1}
        }},
        production_type = "output"
    }},
    animation = {
        filename = ei_graphics_entity_2_path .. "bio-reactor.png",
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
            filename = ei_graphics_entity_2_path .. "bio-reactor_animation.png",
            size = {512, 512},
            shift = {0, 0},
            scale = 0.35,
            line_length = 4,
            lines_per_file = 4,
            frame_count = 16,
            animation_speed = 0.5,
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
            filename = "__base__/sound/chemical-plant-3.ogg",
            volume = 0.2
        },
        apparent_volume = 0.1
    }
}})
