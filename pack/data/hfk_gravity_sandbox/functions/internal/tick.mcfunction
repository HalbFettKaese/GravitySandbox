execute unless entity ea-5d3-eca3-0-1 run summon minecraft:area_effect_cloud ~ ~ ~ {UUIDLeast:1L, UUIDMost: 1005120122019L}
execute as @e[tag=hfk.gravityAffected] run function hfk_gravity_sandbox:internal/load_position
execute as @e[tag=hfk.gravityAffected,tag=!hfk.custom] run function #hfk_gravity_sandbox:internal/entity_load_scores
execute as @e[tag=hfk.gravityAffected,type=!player] run function hfk_gravity_sandbox:internal/change_own_motion