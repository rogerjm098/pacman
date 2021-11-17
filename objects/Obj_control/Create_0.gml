/// @description crear variables del juego

audio_play_sound(Snd_intro,10,false);
instance_deactivate_object(Obj_enemy); //desactiva todos los obj e instancias
global.Puntos = 0; //score 
global.Vidas = 3; //vidas
global.Power = false; //
global.Bonos = false; 
global.golpe = false;

alarm[0] = room_speed*10;//crear bono
alarm[1] = room_speed*15; //poner el nivel mas rapido