/// @description destruir si es el intro
if (audio_is_playing(Snd_intro))
	{
		instance_destroy();
	}