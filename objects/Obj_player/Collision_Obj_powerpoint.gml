/// @description obtener poder
alarm[0] = room_speed*5;
global.Puntos += 50;
global.Power = true;

audio_play_sound (Snd_intermision,10,false);

with (Obj_enemy)
	{ 
		sprite_index = Spr_enemy_scared;
		image_speed = 0;
		image_index = 0;
		
		v = 2;
		speed = 2;
	};

with (other)
	{
		instance_destroy();
	}