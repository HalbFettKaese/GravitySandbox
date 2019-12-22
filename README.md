# GravitySandbox
This data pack makes different entities with a specific tag attracted to each other.

## Functionalities
It is adjustable which entities are affected by this data pack.
Every entity affected by the data pack has a mass and a radius assigned to them.
The mass is proportional to the acceleration applied to other entities and the radius determines at which distance the acceleration stops increasing.

## Usable properties

### Functions
* `hfk_gravity_sandbox:manual` - prints out an interactive manual explaining most of this page.

### Tags
* `hfk.gravityAffected` - determines whether an entity is affected by this data pack.
* `hfk.custom` - if this tag is true, the mass and radius of entities with this tag won't be changed by the data pack.

### Scoreboard values
* `$gravitational_constant hfk.gsb.const` - is directly proportional to the acceleration applied to entities. Has a default value of 100.
* `hfk.gsb.mass` - is directly proportional to the acceleration an entity induces on other entities.
* `hfk.gsb.radius` - If two entities are closer together than the sum of their radiuses, the distance is assumed to be the sum of their radiuses. Uses a scaling factor of 50.
