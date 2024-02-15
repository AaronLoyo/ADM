ReceiveDamage(isUnderDamageEffect, 3, c_red)

if distance_to_object(Player) < 120  and !repeled {
    Spd = 2;
    move_towards_point(Player.x, Player.y, Spd);
} else if repeled {
	Spd = -2
    hspeed = -2; 
    vspeed = -2;
} else {
	Spd = 0
	hspeed = 0
	vspeed = 0
}
if hp < 1 {
	instance_destroy(id)
}