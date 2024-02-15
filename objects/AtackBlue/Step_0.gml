duration -= 1
if Status == "RIGHT" {
	MoveRight(Spd)
} else if Status == "LEFT" {
	MoveLeft(Spd)
} else if Status == "DOWN" {
	MoveDown(Spd)
} else if Status == "UP" {
	MoveUp(Spd)
}
if duration < 1 {
	instance_destroy(id)
}
if sprite_index = BlueExplotionSpr {
	Spd = 0
	if image_index > 9 {
		instance_destroy(id)
	}
}