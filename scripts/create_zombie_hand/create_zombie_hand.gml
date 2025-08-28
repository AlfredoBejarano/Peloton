function create_zombie_hand(argument0, argument1, argument2, argument3, argument4) {
	//create_zombie_hand(zombie object, x, y, position, hand object);
	hand = instance_create(argument1, argument2, argument4);

	with(hand) {
	    image_speed = 0;
	    zombie = argument0;
	    position = argument3;
	    image_index = zombie.image_index;
	}

	return hand;



}
