/// @description Funções da aeronave
// You can write your code in this editor

if (keyboard_check(vk_left)) {
	image_angle = image_angle + 5;	
}

if (keyboard_check(vk_right)) {
	image_angle = image_angle - 5;
}

if (keyboard_check(vk_up)) {
	motion_add(image_angle, 0.05); //move a aeronave na direção (angulo ZERO) que ela está virada
}

if (keyboard_check_pressed(vk_space)) {
	var inst = instance_create_layer(x,y,"Instances", obj_bullet); //cria uma bala na posição da aeronave no layer instances
	inst.direction = image_angle;
}


move_wrap(true, true, sprite_width/2);