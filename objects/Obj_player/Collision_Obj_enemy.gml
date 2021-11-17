/// @description golpe o atacar

if (other.sprite_index == Spr_enemy_scared)
	{
		global.Puntos += 200;
		audio_play_sound (Snd_eatghost,10,false);
		with(other)
		{
			x = xstart;
			y = ystart;
			v = 4;
			speed = 4;
			sprite_index = Spr_enemy;
			image_index = col;
			image_speed = 0;
		}
	}

else
if !(global.golpe) && (x = other.x || y = other.y) //para que cuando este cerca no mate a pacman
	{
		audio_stop_all(); //detiene todos los sonidos que se esten reproduciendo
		audio_play_sound (Snd_dead,10,false);
		
		//reiniciar velocidad luego de morir
		room_speed = 50;
		Obj_control.alarm[1] = room_speed*15;
		
		speed = 0;
		global.Vidas -= 1;
		sprite_index = Spr_Player_dead;
		image_speed = 1;
		global.golpe = true;
		
		with(Obj_bono)
			{
				instance_destroy();
			}
		
	}