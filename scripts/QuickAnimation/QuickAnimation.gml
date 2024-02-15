// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function QuickAnimation(repeats, regrets, count, spriteToChange, originalSprite){
	if repeats {
		sprite_index = spriteToChange
		image_index = count
		count += 1
	}
	else if regrets {
		count += 1
		sprite_index = spriteToChange
		if sprite_get_number(spriteToChange) >= count {
			image_index = count
		} else {
			sprite_index = originalSprite
		}
	}
}