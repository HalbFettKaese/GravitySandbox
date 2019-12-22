# store own position and radius in fakeplayers for it to be read from function where '@s' is redefined
scoreboard players operation $t_pos_x hfk.gsb.temp = @s hfk.gsb.pos_x
scoreboard players operation $t_pos_y hfk.gsb.temp = @s hfk.gsb.pos_y
scoreboard players operation $t_pos_z hfk.gsb.temp = @s hfk.gsb.pos_z

scoreboard players operation $t_radius hfk.gsb.temp = @s hfk.gsb.radius

# store own motion as position of dummy entity
data modify entity ea-5d3-eca3-0-1 Pos set from entity @s Motion

# modify position of dummy entity from attractors
tag @s add attracted_entity
execute at @s as @e[tag=hfk.gravityAffected,tag=!attracted_entity] run function hfk_gravity_sandbox:internal/change_other_motion
tag @s remove attracted_entity

# store position of dummy entity back into own motion
data modify entity @s Motion set from entity ea-5d3-eca3-0-1 Pos