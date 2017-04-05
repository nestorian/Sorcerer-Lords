/// @description Makes sure that the object stays within the room
/// @param Object Which object should be checked?
 
Object = argument0;

// Use a 64 pixel margin to avoid flunky behaviour near the room edges
if (Object.x < 64) Object.x = 64;
if (Object.y < 64) Object.y = 64;
if (Object.x > room_width - 64) Object.x = room_width - 64;
if (Object.y > room_height - 64) Object.y = room_height - 64;