/// @description Handles a suit entering a ship
/// @param EnteringSuit The suit that enters the ship

EnteringSuit = argument0;

// Store the suit as our new owner
Owner = EnteringSuit.id;

// Store our id as the vehicle that our owner now controls
EnteringSuit.Vehicle = id;

// Transfer all stats from us to the suit
EnteringSuit.MaxSpeed = MaxSpeed;
EnteringSuit.Acceleration = Acceleration;
EnteringSuit.TurnRate = TurnRate;

EnteringSuit.Armour = Armour;
EnteringSuit.MaxHitPoints = MaxHitPoints;
EnteringSuit.HitPoints = HitPoints;
EnteringSuit.Damage = Damage;