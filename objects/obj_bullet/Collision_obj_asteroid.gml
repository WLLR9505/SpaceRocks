/// @description Insert description here
// You can write your code in this editor
with(other){
	instance_destroy();
	if (sprite_index == spr_asteroid_huge) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_medium;
		}
	} else if (sprite_index == spr_asteroid_medium) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(9) {
		instance_create_layer(x,y,"Instances", obj_debris)
	}
}