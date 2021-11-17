/// @description configurar enemigo
randomize();
sprite_index = Spr_enemy;
image_speed = 0;
image_index = 0;

//iniciar el movimiento aleatorio
v=4;
direction = choose (0,90,180,270);
motion_set(direction, v);