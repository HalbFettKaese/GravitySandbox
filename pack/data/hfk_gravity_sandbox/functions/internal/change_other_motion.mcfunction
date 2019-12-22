# acceleration proportional to in this case arbitrarily chosen gravitational constant
scoreboard players operation $motion_change_vector_length hfk.gsb.temp = $gravitational_constant hfk.gsb.const

# acceleration proportional to mass of attracting body
scoreboard players operation $motion_change_vector_length hfk.gsb.temp *= @s hfk.gsb.mass

## calculate squared distance
scoreboard players operation $dx hfk.gsb.temp = @s hfk.gsb.pos_x
scoreboard players operation $dy hfk.gsb.temp = @s hfk.gsb.pos_y
scoreboard players operation $dz hfk.gsb.temp = @s hfk.gsb.pos_z

scoreboard players operation $dx hfk.gsb.temp -= $t_pos_x hfk.gsb.temp
scoreboard players operation $dy hfk.gsb.temp -= $t_pos_y hfk.gsb.temp
scoreboard players operation $dz hfk.gsb.temp -= $t_pos_z hfk.gsb.temp

scoreboard players operation $dx hfk.gsb.temp *= $dx hfk.gsb.temp
scoreboard players operation $dy hfk.gsb.temp *= $dy hfk.gsb.temp
scoreboard players operation $dz hfk.gsb.temp *= $dz hfk.gsb.temp

scoreboard players set $squared_entity_distance hfk.gsb.temp 0

scoreboard players operation $squared_entity_distance hfk.gsb.temp += $dx hfk.gsb.temp
scoreboard players operation $squared_entity_distance hfk.gsb.temp += $dy hfk.gsb.temp
scoreboard players operation $squared_entity_distance hfk.gsb.temp += $dz hfk.gsb.temp

# distance can't go lower than own radius and other body's radius combined
scoreboard players operation $squared_min_distance hfk.gsb.temp = @s hfk.gsb.radius
scoreboard players operation $squared_min_distance hfk.gsb.temp += $t_radius hfk.gsb.temp
scoreboard players operation $squared_min_distance hfk.gsb.temp *= $squared_min_distance hfk.gsb.temp
scoreboard players operation $squared_entity_distance hfk.gsb.temp > $squared_min_distance hfk.gsb.temp

# acceleration inversely proportional to squared distance between masses
scoreboard players operation $motion_change_vector_length hfk.gsb.temp /= $squared_entity_distance hfk.gsb.temp

# move marker entity by '$motion_change_vector_length hfk.gsb.temp' in the direction that is facing at '@s'  from contextual position
execute facing entity @s feet positioned as ea-5d3-eca3-0-1 run function hfk_gravity_sandbox:internal/move_marker_by_vector