/// @description Decelerates an object
/// @param Object Which object should be decelerated

var ObjectToMove = argument0;

//// If the suit we should accelerate is not in a vechicle, use the suit's stats
//if (ObjectToMove.Vehicle == noone) {
	// Check if the speed is already zero
	if ObjectToMove.speed > 0 {
		// If not decrease the speed with the ship's acceleration rating
		ObjectToMove.speed = ObjectToMove.speed - ObjectToMove.Acceleration;
	}
//}
// Otherwise use the ship's stats
//else {
//	// Check if the speed is already zero
//	if ObjectToMove.speed > 0 {
//		// If not decrease the speed with the ship's acceleration rating
//		ObjectToMove.speed = ObjectToMove.speed - ObjectToMove.ShipAcceleration;
//	}
//}