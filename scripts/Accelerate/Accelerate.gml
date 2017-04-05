/// @description Accelerates an object
/// @param Object Which object should be accelerated

var ObjectToMove = argument0;

// Check if the object is not already traveling at its max speed
if (ObjectToMove.speed < ObjectToMove.MaxSpeed) {
	// If not, increase the speed with the object's acceleration rating
	ObjectToMove.speed = ObjectToMove.speed + ObjectToMove.Acceleration;
}
else {
	// Otherwise maintain max speed
	ObjectToMove.speed = ObjectToMove.MaxSpeed;
}
