ei_data = require("lib/data")

-- ====================================================================================================
-- ADVANCED DESTILL TOWER
-- ====================================================================================================

data:extend({{
    name = "ei_advanced-destill-tower",
    type = "item",
    icon = ei_graphics_item_path .. "advanced-destill-tower.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "d-b-b",
    place_result = "ei_advanced-destill-tower",
    stack_size = 50
}, {
    name = "ei_advanced-destill-tower",
    type = "recipe",
    category = "crafting",
    energy_required = 2,
    ingredients = {{"ei_steel-mechanical-parts", 6}, {"ei_electronic-parts", 4}, {"ei_destill-tower", 1}},
    result = "ei_advanced-destill-tower",
    result_count = 1,
    enabled = false,
    always_show_made_in = true,
    main_product = "ei_advanced-destill-tower"
}, {
    name = "ei_advanced-destill-tower",
    type = "assembling-machine",
    icon = ei_graphics_item_path .. "advanced-destill-tower.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {
        mining_time = 0.5,
        result = "ei_advanced-destill-tower"
    },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    map_color = ei_data.colors.assembler,
    crafting_categories = {"ei_destill-tower"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input"
    },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    module_specification = {
        module_slots = 4
    },
    fluid_boxes = {{
        base_area = 1,
        base_level = -1,
        height = 2,
        pipe_covers = pipecoverspictures(),
        pipe_picture = ei_pipe_fluid_heater,
        pipe_connections = {{
            type = "input",
            position = {2, 0}
        }},
        production_type = "input"
    }, {
        base_area = 1,
        base_level = 1,
        height = 2,
        pipe_covers = pipecoverspictures(),
        pipe_picture = ei_pipe_fluid_heater,
        pipe_connections = {{
            type = "output",
            position = {-2, 0}
        }},
        production_type = "output"
    }, {
        base_area = 1,
        base_level = 1,
        height = 2,
        pipe_covers = pipecoverspictures(),
        pipe_picture = ei_pipe_fluid_heater,
        pipe_connections = {{
            type = "output",
            position = {0, 2}
        }},
        production_type = "output"
    }},
    energy_usage = "200kW",
    animation = {
        filename = ei_graphics_entity_path .. "advanced-destill-tower.png",
        size = {512 * 2, 512 * 2},
        shift = {0, -0.2},
        scale = 0.3,
        line_length = 1,
        -- lines_per_file = 2,
        frame_count = 1
        -- animation_speed = 0.2,
    },
    working_sound = {
        sound = {
            filename = "__base__/sound/chemical-plant.ogg",
            volume = 0.4
        },
        apparent_volume = 0.3
    }
}})
