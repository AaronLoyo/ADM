/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

duration -= 1
if duration < 1 {
	Player.inSkill = false
	instance_destroy(id)
}