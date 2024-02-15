if inmunityTime > 1 {
	inmunityTime -= 1
}

global.FirtsAtackCooldown += 1
global.SecondAtackCooldown += 1
if (!inSkill) {
	inmunity = false
	#region Movement
	if (keyboard_check(ord("W"))) {
		sprite_index = sprite_index
		image_speed = 1
		y -= Spd;
		State = "UP"
	} else if (keyboard_check(ord("S"))) {
		sprite_index = sprite_index
		image_speed = 1
		y += Spd;
		State = "DOWN"
	} else if (keyboard_check(ord("A"))) {
		sprite_index = sprite_index
		image_xscale = -1
		image_speed = 1
		x -= Spd;
		State = "LEFT"
	} else if (keyboard_check(ord("D"))) {
		sprite_index = sprite_index
		image_xscale = 1
		image_speed = 1
		x += Spd;
		State = "RIGHT"
	} else {
		image_speed = 0
	}
	#endregion

	if (keyboard_check(ord("X"))) and global.FirtsAtackCooldown > 139 {
		launchProjectile(State, AtackBlue)

		global.FirtsAtackCooldown = 0
		FirtsAttackBar.image_index = 0
	}
	if (keyboard_check(ord("C"))) and global.SecondAtackCooldown > 279 {
		launchProjectile("NONE", RedExplosion);
		global.SecondAtackCooldown = 0
		SecondAttacBar.image_index = 0
	}
	if keyboard_check(ord("V")) and global.Ultimate >= 15 {
		launchProjectile(State, HollowPurpleObj)
		global.Ultimate = 0
	}
} else {
	image_speed = 0
	inmunity = true
}
if (!place_meeting(x + hspeed, y + vspeed, Wall)) {
    Spd = 3;
}
if keyboard_check(ord("N")) {
	global.PlayerHp -= 1
}
