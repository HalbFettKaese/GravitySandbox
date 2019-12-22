scoreboard objectives add hfk.gsb.temp dummy
scoreboard objectives add hfk.gsb.const dummy
scoreboard objectives add hfk.gsb.pos_x dummy
scoreboard objectives add hfk.gsb.pos_y dummy
scoreboard objectives add hfk.gsb.pos_z dummy
scoreboard objectives add hfk.gsb.mass dummy
scoreboard objectives add hfk.gsb.radius dummy
execute unless score $version hfk.gsb.const matches 1 run function hfk_gravity_sandbox:internal/setup/main