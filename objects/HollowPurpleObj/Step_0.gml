// En el evento Step de HollowPurpleObj
duration -= 1;

// Ajustar la rotación y la escala en función de la dirección
if (Status == "RIGHT") {
    image_angle = 270;
	/*
    image_xscale = 1;
    image_yscale = 1;
	*/
} else if (Status == "LEFT") {
    image_angle = 90;
	/*
    image_xscale = 1; // No hay espejo horizontal
    image_yscale = 1;
	*/
} else if (Status == "DOWN") {
    image_angle = 180;
	/*
    image_xscale = 1;
    image_yscale = 1;
	*/
} else if (Status == "UP") {
    image_angle = 0;
	/*
    image_xscale = 1;
    image_yscale = 1;
	*/
}

// Mover en la dirección de la rotación
if (Status == "RIGHT") {
    x += Spd;
} else if (Status == "LEFT") {
    x -= Spd;
} else if (Status == "DOWN") {
    y += Spd;
} else if (Status == "UP") {
    y -= Spd;
}

if duration < 1 {
    instance_destroy(id);
	Player.inSkill = false
}

if image_index > 12 {
    sprite_index = HollowPurpleSpr;
}

if sprite_index == HollowPurpleSpr {
    Spd = 4;
}
