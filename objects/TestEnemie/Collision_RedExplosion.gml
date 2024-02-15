// Evento de colisión con el objeto RedExplosion


repulsionForce = 5
// Calcular la dirección desde el enemigo hacia el objeto RedExplosion
direction = point_direction(x, y, other.x, other.y);

// Aplicar la repulsión ajustando las velocidades
hspeed = lengthdir_x(repulsionForce, direction);
vspeed = lengthdir_y(repulsionForce, direction);

isUnderDamageEffect = true
if !RedExplosion.alreadyHit {
    hp -= 3;
    global.Ultimate += 1;
	RedExplosion.alreadyHit = true;
}