/// @description dibujar puntos de vida

#region //dibuja los puntos
draw_set_color(c_white);
draw_set_halign(fa_left); //fa es alineacion de fuente
draw_set_halign(fa_top); //fa es alineacion de fuente
draw_set_font(fnt_fuente);
draw_text(32,16, "SCORE: "+string(global.Puntos));
#endregion

#region //dibujar vidas
draw_text(room_width/2, 16,"VIDAS: ");
for(var i = 0; i < global.Vidas; i += 1)
	{
		draw_sprite_stretched(Spr_Player_left, 2, room_width/2+string_width("VIDAS: ")+ (i*33), 16, 32, 32);
	}
#endregion

#region //dibujar ready

if (audio_is_playing(Snd_intro))
	{
		draw_set_color(c_yellow);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_font(fnt_ready);
		
		draw_text(room_width/2, room_height/2, "Ready!!!!");
	}
	
#endregion


#region //dibujar bono
if (global.Bonos)
	{
		draw_sprite(Spr_bonus,0, room_width-64, 0);
	}
	#endregion
	
#region //dibujar gameover

if (global.Vidas == 0)
	{
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_font(fnt_ready);
		draw_text(room_width/2,room_height/2,"GAME OVER");
	}
#endregion