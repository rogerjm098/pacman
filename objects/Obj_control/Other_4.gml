/// @description el nivel empieze de nuevo

if room == Rm_level_1 exit;

audio_play_sound(Snd_intro,10,false);
instance_deactivate_object(Obj_enemy);

global.golpe = false;
global.Power = false;
global.Bonos = false;

alarm[0] = room_speed*10; //crear bono
alarm[1] = room_speed*15; //aumentar velocidad de nivel