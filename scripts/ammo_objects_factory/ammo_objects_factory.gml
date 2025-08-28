/// @description  ammo_objects_factory(ammo type id)
/// @param ammo type id
/// returns a droppable object depending on the ammo type
function ammo_objects_factory(argument0) {
	switch(argument0) {
	   case 1: return obj_dp_handgun;
	   case 2: return obj_dp_machinegun;
	   case 3: return obj_dp_shotgun;
	   case 4: return obj_dp_rifle;
	   default: return obj_dp_heal;
	}



}
