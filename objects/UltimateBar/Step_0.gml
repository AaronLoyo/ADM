x = camera_get_view_x(view_camera[0]) + 50;
y = camera_get_view_y(view_camera[0]) + 50;

if global.Ultimate >= 15 {
	sprite_index = UltimateBarMaxSpr
} else {
	image_index = global.Ultimate
	sprite_index = UltimateBarSpr
}