/// @description salida cuadro
if (x < 0 && hspeed < 0) x = room_width + sprite_xoffset;
if (x > room_width && hspeed > 0) x = -sprite_width + sprite_xoffset;
if (y < 0 && vspeed < 0) x = room_height + sprite_yoffset;
if (y > room_height && vspeed > 0) x = -sprite_height + sprite_yoffset;