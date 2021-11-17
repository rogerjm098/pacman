/// @description Verificar la animacion de la muerte
if sprite_index = Spr_Player_dead
	{ 
		direction = 0;
		image_speed = 0;
		x = xstart;
		y = ystart;
		sprite_index = Spr_Player_right;
		image_index = 0;
		
		global.golpe = false;
	//iniciar nuevamente
	audio_play_sound(Snd_intro,10,false);
	instance_deactivate_object(Obj_enemy);

	}