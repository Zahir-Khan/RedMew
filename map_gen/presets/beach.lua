local b = require 'map_gen.shared.builders'
local perlin = require 'map_gen.shared.perlin_noise'
local Event = require 'utils.event'

local sand_width = 512
local sand_width_inv = tau / sand_width
local water_width = 233
local water_width_inv = tau / water_width

--perlin options
local noise_variance = 0.025 --The lower this number the smoother the curve is gonna be
local noise_level = 15 --Factor for the magnitude of the curve

local sand_nosie_level = noise_level * 0.9
local water_noise_level = noise_level * 1.35

local perlin_seed_1 = 123456
local perlin_seed_2 = 654321

local function sand_shape(x, y)
    local p = perlin.noise(x * noise_variance, y * noise_variance, perlin_seed_1) * sand_nosie_level
    p = p + math.sin(x * sand_width_inv) * 15
    return p > y
end

local function water_shape(x, y)
    local p = perlin.noise(x * noise_variance, y * noise_variance, perlin_seed_2) * water_noise_level
    p = p + math.sin(x * water_width_inv + 179) * 15
    return p > y
end

sand_shape = b.change_tile(sand_shape, true, 'sand-1')

local value = b.manhattan_value

local ores = {
    {b.resource(b.full_shape, 'iron-ore', value(125, 0.5)), 6},
    {b.resource(b.full_shape, 'copper-ore', value(125, 0.5)), 4},
    {b.resource(b.full_shape, 'stone', value(125, 0.25)), 1},
    {b.resource(b.full_shape, 'coal', value(250, 0.25)), 1}
}

uranium_ore = b.resource(b.full_shape, 'uranium-ore', value(50, 0.25))

local total_weights = {}
local t = 0
for _, v in ipairs(ores) do
    t = t + v[2]
    table.insert(total_weights, t)
end

local function do_ores(x, y, world)
    if x > -4 and x < 5 then
        return ores[4][1](x, y, world)
    end

    if (x > 512 or x < -512) and (math.floor(x / 32) % 16 == 0) then
        return uranium_ore(x, y, world)
    else
        local i = math.random(t)

        local index = table.binary_search(total_weights, i)
        if (index < 0) then
            index = bit32.bnot(index)
        end

        local ore = ores[index][1]

        return ore(x, y, world)
    end
end

sand_shape = b.apply_entity(sand_shape, do_ores)

water_shape = b.change_tile(water_shape, true, 'water')

local oil = b.resource(b.full_shape, 'crude-oil', value(500000, 2500))
local function do_oil(x, y, world)
    if math.random(16384) == 1 then
        local e = oil(x, y, world)
        e.always_place = true
        return e
    end
end

water_shape = b.apply_entity(water_shape, do_oil)

grass = b.tile('grass-1')

local bounds = b.line_x(384)

local map = b.any {b.translate(water_shape, 64, -48), sand_shape, grass}

map = b.fish(map, 0.0025)

map = b.choose(bounds, map, b.empty_shape)

map = b.translate(map, 0, -64)

return map