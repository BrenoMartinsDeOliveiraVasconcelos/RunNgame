if room == game{
	image_alpha = clamp(image_alpha - 0.01, 0, 1)
}

if room == navio2{
	tempo -= 1
	
	if tempo == 0{
		room_goto(game)
	}
}
