/// @description Follow your owner

if (instance_exists(Owner)) {
	if (Owner != noone) {
		x = Owner.x;
		y = Owner.y;
		direction = Owner.direction;
	}
}