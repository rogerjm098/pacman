/// @description inteligencia artifical

//reiniciar al enemigo cuando el jugador pierda una vida
if global.golpe
	{
		speed = 0;
		vspeed = 0;
		hspeed = 0;
		visible = false;
	
	x = xstart;
	y = ystart;
	exit;
	}

else
	{
		visible = true;
	}

//actuar de manera aleatoria
if place_snapped(64,64)
	{
		if hspeed == 0
		{
			if random (3) <1 && place_free (x-1,y) // hace q se mueva a la izquierda
				{
					hspeed = -v;
					vspeed = 0;
				}
			if random (3) <1 && place_free (x+1,y) // hace q se mueva a la derecha
				{
					hspeed = v;
					vspeed = 0;
				}
		}
		
		else 
		{
			if random (3) <1 && place_free (x,y-1) // hace q se mueva arriba
			{
					hspeed = 0;
					vspeed = -v;
			}
			if random (3) <1 && place_free (x,y+1) // hace q se mueva abajo
			{
					hspeed = 0;
					vspeed = v;
			}
	}
	}