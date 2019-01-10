local ob = require 'map_gen.presets.crash_site.outpost_builder'

return ob.make_walls{
    ob.make_4_way {
        turret = {callback = ob.refill_liquid_turret_callback, data = ob.light_oil_ammo},
        [1] = {entity = {name = 'stone-wall'}},
        [2] = {entity = {name = 'stone-wall'}},
        [3] = {entity = {name = 'stone-wall'}},
        [4] = {entity = {name = 'stone-wall'}},
        [5] = {entity = {name = 'stone-wall'}},
        [6] = {entity = {name = 'stone-wall'}},
        [7] = {entity = {name = 'stone-wall'}},
        [8] = {entity = {name = 'stone-wall'}},
        [9] = {entity = {name = 'stone-wall'}},
        [10] = {entity = {name = 'stone-wall'}},
        [11] = {entity = {name = 'stone-wall'}},
        [12] = {entity = {name = 'stone-wall'}},
        [13] = {tile = 'hazard-concrete-left'},
        [14] = {tile = 'hazard-concrete-left'},
        [15] = {tile = 'hazard-concrete-left'},
        [16] = {tile = 'hazard-concrete-left'},
        [17] = {tile = 'hazard-concrete-left'},
        [18] = {tile = 'hazard-concrete-left'},
        [19] = {tile = 'concrete'},
        [20] = {tile = 'concrete'},
        [21] = {tile = 'concrete'},
        [22] = {tile = 'concrete'},
        [23] = {tile = 'concrete'},
        [24] = {tile = 'concrete'},
        [25] = {tile = 'concrete'},
        [26] = {tile = 'concrete'},
        [27] = {entity = {name = 'flamethrower-turret', callback = 'turret', offset = 1}, tile = 'concrete'},
        [28] = {tile = 'concrete'},
        [29] = {tile = 'concrete'},
        [30] = {tile = 'concrete'},
        [31] = {tile = 'concrete'},
        [32] = {tile = 'concrete'},
        [33] = {tile = 'concrete'},
        [34] = {tile = 'concrete'},
        [35] = {tile = 'concrete'},
        [36] = {tile = 'concrete'}
    },
    ob.make_4_way {
        turret = {callback = ob.refill_liquid_turret_callback, data = ob.light_oil_ammo},
        [1] = {entity = {name = 'stone-wall'}},
        [2] = {entity = {name = 'stone-wall'}},
        [3] = {entity = {name = 'stone-wall'}},
        [4] = {entity = {name = 'stone-wall'}},
        [5] = {entity = {name = 'stone-wall'}},
        [6] = {entity = {name = 'stone-wall'}},
        [7] = {entity = {name = 'stone-wall'}},
        [8] = {entity = {name = 'stone-wall'}},
        [9] = {entity = {name = 'stone-wall'}},
        [10] = {entity = {name = 'stone-wall'}},
        [11] = {entity = {name = 'stone-wall'}},
        [12] = {entity = {name = 'stone-wall'}},
        [13] = {entity = {name = 'stone-wall'}},
        [14] = {entity = {name = 'stone-wall'}},
        [15] = {tile = 'hazard-concrete-left'},
        [16] = {tile = 'hazard-concrete-left'},
        [17] = {tile = 'hazard-concrete-left'},
        [18] = {tile = 'hazard-concrete-left'},
        [19] = {entity = {name = 'stone-wall'}},
        [20] = {entity = {name = 'stone-wall'}},
        [21] = {tile = 'hazard-concrete-left'},
        [22] = {tile = 'concrete'},
        [23] = {tile = 'concrete'},
        [24] = {tile = 'concrete'},
        [25] = {entity = {name = 'stone-wall'}},
        [26] = {entity = {name = 'stone-wall'}},
        [27] = {tile = 'hazard-concrete-left'},
        [28] = {entity = {name = 'flamethrower-turret', callback = 'turret', offset = 1}, tile = 'concrete'},
        [29] = {tile = 'concrete'},
        [30] = {tile = 'concrete'},
        [31] = {entity = {name = 'stone-wall'}},
        [32] = {entity = {name = 'stone-wall'}},
        [33] = {tile = 'hazard-concrete-left'},
        [34] = {tile = 'concrete'},
        [35] = {tile = 'concrete'},
        [36] = {tile = 'concrete'}
    },
    ob.make_4_way {
        turret = {callback = ob.refill_liquid_turret_callback, data = ob.light_oil_ammo},
        [1] = {entity = {name = 'stone-wall'}},
        [2] = {entity = {name = 'stone-wall'}},
        [3] = {tile = 'hazard-concrete-left'},
        [4] = {tile = 'concrete'},
        [5] = {tile = 'concrete'},
        [6] = {tile = 'concrete'},
        [7] = {entity = {name = 'stone-wall'}},
        [8] = {entity = {name = 'stone-wall'}},
        [9] = {tile = 'hazard-concrete-left'},
        [10] = {tile = 'concrete'},
        [11] = {tile = 'concrete'},
        [12] = {tile = 'concrete'},
        [13] = {tile = 'hazard-concrete-left'},
        [14] = {tile = 'hazard-concrete-left'},
        [15] = {tile = 'hazard-concrete-left'},
        [16] = {tile = 'concrete'},
        [17] = {tile = 'concrete'},
        [18] = {tile = 'concrete'},
        [19] = {tile = 'concrete'},
        [20] = {tile = 'concrete'},
        [21] = {tile = 'concrete'},
        [22] = {tile = 'concrete'},
        [23] = {tile = 'concrete'},
        [24] = {tile = 'concrete'},
        [25] = {tile = 'concrete'},
        [26] = {tile = 'concrete'},
        [27] = {tile = 'concrete'},
        [28] = {entity = {name = 'flamethrower-turret', callback = 'turret', offset = 1}, tile = 'concrete'},
        [29] = {tile = 'concrete'},
        [30] = {tile = 'concrete'},
        [31] = {tile = 'concrete'},
        [32] = {tile = 'concrete'},
        [33] = {tile = 'concrete'},
        [34] = {tile = 'concrete'},
        [35] = {tile = 'concrete'},
        [36] = {tile = 'concrete'}
    }
}
