/// @description Rotates an object gradually
/// @param Object Which object should be rotated
/// @param IntendedFacing What is the final intended angle?

var ObjectToMove = argument0;
var IntendedFacing = argument1;

// Find the difference and direction of the angle between the inteded facing and the actual one
AngleToTurn = angle_difference(ObjectToMove.direction, IntendedFacing);

// Turn in the intended direction as fast as is possible with this suit or ship
if (ObjectToMove.Vehicle == noone) {
	// If the suit has no vehicle, use the suit turn rate
	ObjectToMove.direction = ObjectToMove.direction - (AngleToTurn * ObjectToMove.TurnRate);
}
else {
	// If the suit has a vehicle, use its turn rate
	ObjectToMove.direction = ObjectToMove.direction - (AngleToTurn * ObjectToMove.TurnRate);
}