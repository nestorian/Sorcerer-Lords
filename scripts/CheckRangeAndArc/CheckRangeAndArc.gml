/// @description Checks if an object is within a certain range and a certain arc
/// @param Target Which target should be checked?
/// @param Range What is the minumum range?
/// @param Arc How big should the arc be?

Target = argument0;
MinRangeToTarget = argument1;
DesiredArc = argument2;

if (instance_exists(Target)) {
    // Find the distance to target
    RangeToTarget = point_distance(x, y, Target.x, Target.y);
    
    // Find the relative direction difference between me and the target
    DirectionToTarget = point_direction(x, y, Target.x, Target.y);
    RelativeDirectionToTarget = abs(DirectionToTarget - direction);
    
    // Check if the target is within the desired arc and the minium range
    if (RelativeDirectionToTarget < (DesiredArc / 2) || RelativeDirectionToTarget > (360 - (DesiredArc / 2))) {
        if (RangeToTarget <= MinRangeToTarget) {
            // In that case return true
            return true;
        }
    }
    else { return false }
}
else { return false }