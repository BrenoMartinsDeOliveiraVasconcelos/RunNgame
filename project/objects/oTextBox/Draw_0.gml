if keyboard_check_pressed(vk_f11){
	window_set_fullscreen(!window_get_fullscreen());
};


var accept_key = keyboard_check_pressed(ord("L"))

var textbox_x = camera_get_view_x(view_camera[0])
var textbox_y = camera_get_view_y(view_camera[0]) + 200

if room  == Intro{
		textbox_y = camera_get_view_y(view_camera[0]) + 50
}else{
	textbox_y =  room_height - (0.25 * room_height )
}

//setup
if setup == false{
	setup = true
	draw_set_font(global.font_main)
	draw_set_valign(fa_top)
	draw_set_valign(fa_left)
	
	//loop através das paginas
	page_number = array_length(text)
	for(var p = 0; p < page_number; p++){
		
		//Encotra quantos caracteres tem em cada pagina e armazena o numero no array 'text_length'
		text_lenght[p] = string_length(text[p])
		
		text_x_offset[p] = room_width/2 - textbox_width/2
		
	}
	
}


//digitando o texto
// Ajuste a velocidade de digitação
var time_increment = text_speed * delta_time;  // Ajuste com delta_time para um comportamento mais suave

if draw_char < text_lenght[page] {
    draw_char += time_increment;
    draw_char = clamp(draw_char, 0, text_lenght[page]);
}


//vira através das paginas
if accept_key{
	//se a digitação do texto acabou, podemos ir para a proxima pagina
	if draw_char == text_lenght[page]{
		//proxima pagina
		if page < page_number - 1 {
			page++
			draw_char = 0
		}
		//destroi o text box
		else{
			instance_destroy()
			
			if room == postboss{
				room_goto(endgame)
			}
			if room == Intro{
				room_goto_next()
			}
		}
	}
	//se nao terminou de digitar
	else{
		draw_char = text_lenght[page]
	}
}


	
//desenha o text box
txtb_img += txtb_img_spd
var txtb_spr_w = sprite_get_width(txtb_spr)
var txtb_spr_h = sprite_get_height(txtb_spr)

//back of the text box
draw_sprite_ext(txtb_spr, txtb_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1)


//desenha texto
var _drawtext = string_copy(text[page], 1, round(draw_char))
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width)