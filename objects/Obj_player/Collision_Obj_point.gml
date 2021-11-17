/// @description obtener el punto
global.Puntos += 10;

audio_play_sound (Snd_moviendo,10,false);

with (other)
	{
		instance_destroy();
	}