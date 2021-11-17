/// @description controlar el nivel

#region //Activar los enemgos nuevamente
if !(audio_is_playing(Snd_intro))//! significa negacion
	{
		instance_activate_object(Obj_enemy);
	}
	
#endregion 

#region //destruir todo cuando muera
if global.Vidas == 0
	{
		with(Obj_enemy)
		{
			instance_destroy();
		};
	with(Obj_player)
		{
			instance_destroy();
		};
	with(Obj_powerpoint)
		{
			instance_destroy();
		};
	with(Obj_bono)
		{
			instance_destroy();
		};
	}
#endregion

//verificar si nivel es completado ó si pacman a muerto
if instance_number(Obj_point) == 0 and instance_number(Obj_powerpoint) == 0 && global.Vidas != 0
	{ 
		if room_next(room) != -1
			{
				audio_stop_all();
				room_goto_next();
			}
		else
			{
				audio_stop_all();
				room_goto(rm_gameover);
				instance_destroy();
			}
	}