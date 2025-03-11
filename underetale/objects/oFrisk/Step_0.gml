down_key = keyboard_check(vk_down);
left_key = keyboard_check(vk_left);
right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);

xspd = (right_key - left_key) * spd;
yspd = (down_key - up_key) * spd;

if place_meeting(x+xspd, y, Wall){
	xspd = 0;
}
if place_meeting(x, y+yspd, Wall){
	yspd = 0;
}

if xspd > 0 {
	sprite_index = FriskRight;
} else if xspd < 0 {
	sprite_index = FriskLeft;
} else if yspd > 0 {
	sprite_index = FriskDown;
} else if yspd < 0 {
	sprite_index = FriskUp;
}

if(xspd != 0 or yspd != 0){
	image_speed = 2;
} else {
	image_speed = 0;
	image_index = 0;
}

x += xspd;
y += yspd;