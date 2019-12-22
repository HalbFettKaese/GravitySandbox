scoreboard players remove $motion_change_vector_length hfk.gsb.temp 1
execute if score $motion_change_vector_length hfk.gsb.temp matches 0 run tp ea-5d3-eca3-0-1 ~ ~ ~
execute if score $motion_change_vector_length hfk.gsb.temp matches 1.. positioned ^ ^ ^0.001 run function hfk_gravity_sandbox:internal/move_marker_by_vector