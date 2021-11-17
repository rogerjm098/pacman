/// @description crear el bono
if global.Vidas == 0 exit;

instance_create_layer(Obj_player.xstart,Obj_player.ystart,"lt_top", Obj_bono);
alarm[0] = room_speed*30;