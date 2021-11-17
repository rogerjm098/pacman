/// @description casi termina el poder
global.Power = false;
with (Obj_enemy)
	{
		if sprite_index == Spr_enemy_scared
		image_speed = 1;
	}
	
alarm[1] = room_speed*3;
