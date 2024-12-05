if room == Intro{
	audio_play_sound(introduction, 1, true)
}

count_test = 0

global.is_dialog_active = true

//parametros textbox

textbox_width = 600
textbox_height = 150
border = 10
line_sep = 30
line_width = 600
txtb_spr = chat
txtb_img = 0
txtb_img_spd = 0

//text

page = 0
page_number = 0
draw_char = 0
text_speed = 1

setup = false

switch room{
	
	case navio2:
	
	text[0] = "OLA"
	text[1] = "HEY"
	text[2] = "aopjsaopçdlf"
	text[3] = "test"
	
	break
	
	case Intro:
	textbox_width = room_width-400
	textbox_height = room_height-100
	line_width = 1250
	
	text[0] = "A historia tem inicio no ano de 2030, o mundo esta uma bagunca, a maio parte dos paises passam por uma falta gigantesca de recursos naturais e outros problemas surgem, como a fome generalizada e a violencia extrema. Dois anos depois do inicio da crise, as maiores potencias mundiais comecam pequenos confrontos pela soberania do petroleo e outros recursos naturais, que ate esse ponto, se tornaram escassos. Mais 2 anos se passam e tem se inicio a terceira guerra mundial, o confronto e tremendo, causando aproximadamente, mais de 1 bilhao de mortos no confronto, mas, milagrosamente, armas nucleares nao foram usadas, poupando o planeta de uma extincao geral da raca humana. Com o fim da guerra em 2045, as potencias mundiais estavam arrasadas, tudo estava perdido, todos os paises do globo viviam a mais pura miseria, ate que algo inesperado ocorreu! Os poucos lideres que sobraram de cada potencia mundial, entao decidiram um ano apos a guerra, unificar todos os governos em uma coisa so, este foi o dia entao, que o mundo seria unificado em uma so bandeira, em prol da sobrevivencia da raca humana, sendo assim criado, O GOVERNO MUNDIAL DA TERRA. Agora o ano e 2065, 20 anos se passaram apos a guerra, o mundo vive uma utopia. Com os milagrosos e repentinos avancos tecnologicos, o governo mundial conseguiu sanar os problemas, tais como a fome, a falta de recursos naturais e ate mesmo a violencia foi completamente extinguida (tudo isso em prol de sacrificar a liberdade individual das pessoas, que boa parte sofreram lavagem cerebral e os nascidos do pos guerra, totalmente doutrinados pelo governo mundial), e entao o que era um mundo em ruinas 20 anos atras, agora se via em uma utopia altamente tecnologica e controladora."
	text[1] = "Atualmente estaamos em 2069, 24 anos apos a guerra e agora estamos situados em uma nova guerra: Warmaggedon, a guerra que ira definir a soberania do governo mundial ou que trara uma revolucao mundial, pelas maos do EXERCITO REVOLUCIONARIO. Quem sao os revolucionarios? Eles sao um exercito de desertores do GOVERNO MUNDIAL, sendo liderados pelo entao ex general do GOVERNO MUNDIAL, O GENERAL ASMODEUS e vindo junto com ele, varios soldados, cientistas e seus 4 homens de confiancas. "
	
	break
	
	case bossfight:
	
	text[0] = "Caresmin: Filho..."
	text[1] = "Daniel:  Pai..."
	text[2] = "Caresmin: Nao deveria estar aqui… ESTA GUERRA NAO E SUA, GAROTO!"
	text[3] = "Daniel: Pai!!!!!!!?. Eu nao posso acreditar, achei que o estivesse desaparecido… Eu nao creio que o senhor teve a coragem de nos trair!"
	text[4] = "Caresmin: Eu nao me importo no que você acredita ou nao garoto, Eu tive meus motivos e você ira entender."
	text[5] = "Daniel: Do que esta falando? Pai… VOCE SO PODE ESTAR MALUCO! Esses desgracados devem ter feito lavagem cerebral, nao existe outra explicaçao….."
	text[6] = "Caresmin: … Voce ira enxergar a verdade garoto, mas nao antes de eu te dar uma surra."
	text[7] = "Daniel: ….. então se e assim, o senhor nao me deixa escolha"
	break
	
	case postboss:
	
	text[0] = "Daniel: Pai eu…eu…eu nao queria que fosse assim, voce pediu por isso."
	text[1] = "Caresmin: ... Filho, eu nao queria que voce chegasse nesse ponto. Aqueles malditos do Governo Mundial. "
	text[2] = "Daniel: A culpa nao e deles, o senhor que decidiu trilhar esse caminho, junto do Asmodeus, ele e o verdadeiro mau, ele que causou tudo isso."
	text[3] = "Caresmin: Pois e ao contrario, o Governo Mundial alienou todos e construiu um imperio atraves de mentiras, experimentos desumanos e opressao daqueles contrarios ao sistema. Asmodeus apenas me fez ver ao contrario, ele nao e o inimigo aqui."
	text[4] = "Daniel: (Comecando a lacrimejar)Eu……. Eu nao sei o que dizer, na... nada faz sentido, eu nao sei acreditar."
	text[5] = "Caresmin: (coloca as maos no rosto de seu filho) Garoto, não deixe ser controlado(suspira), eu sei que voce vai o certo no final…..Nao acredite nas mentiras deles (Morre com uma expressao amarga no rosto)."
	text[6] = "Daniel:  (olhando paro o ceu e com lagrimas no rosto)......Missao cumprida coronel, mais um inimigo morto"
	break

}

text_lenght[0] = string_length(text[0])