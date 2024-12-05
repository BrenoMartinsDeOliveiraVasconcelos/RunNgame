// Para não ser os mesmos numeros aleatórios a cada abertura
randomize()
id_plataforma = 0 // O id da possivel plataforma que o objeto ta tocando

// Valores padrões
global.originais = [500,
0,
0,
0.75,
4,
13,
0,
0.4,
0,
0,
80,
0,
17]

// Calcular tamnanho da tela

fatorW = 2
fatorH = 2

w = room_width / fatorW
h = room_height / fatorH

// Redimensionar
window_set_size(w, h)


// Define a variável global para as variáveis do player
// para não resetar caso mude de sala

global.inimigos = [oSoldado, oBoss, oHelicoptero] // lista de inimigos
global.num_inimigos = 0 // Numero de inimigos na sala

global.armas = [pistola, ak47, shotgun] // Array com as armas que existem no jogo
global.dano_armas = [5, 4, [4, 8, 16, 32]]
global.invencibilidade_player = false //Se o player é invencivel
global.tempo_invencibilidade_player = 1000
global.tecla_pressionada = false // SE alguma tecla está pressionada
global.hp_tempo = 5 // A cada quantos fps recupera 1 hp
global.player_danificado = false // Se o player tomou dano
global.tempo_recover = 30 // Isso seria 0.5 segundos sem tomar dano até começar recuperar hp a 60 fps
global.player_andar = true // se o player pode andar
global.altura_pulo = 200 // A altura que o player chega
global.ativar_tecla_pulo = true // Se a tecla de pulo está ativada

global.salas_gameplay = [game, game2, game3] // Salas do meio do jogo
global.salas_navio = [navio1, navio2]
global.salas_fim = [bossfight, postboss] // Salas do chefão

// Pegar os valores no arquivo de configurações (para manter os valores)
var lines = [];

// Open the file in read mode
var file = file_text_open_read("player_settings.txt");

if (file != -1) {  // Checa se o arquivo abriu com sucesso
	var line_index = 0;

	// Anda sobre o arquivo
	while (!file_text_eof(file)) {
	    array_insert(lines, array_length(lines), file_text_readln(file));
	    line_index += 1;
	}

	// Close the file
	file_text_close(file);
}else{
	show_message("Erro ao abrir o arquivo do player")
}

// Caso dê merda no arquivo, reseta para o original
if array_length(lines) < array_length(global.originais){
	show_debug_message("Erro no arquivo. Resetando para original."+string(array_length(lines))+" "+string(array_length(global.originais)))
	lines = global.originais
}

// Primeira sala

global.sala_1 = navio1

if room == navio2{
	global.sala_1 = navio2
}else if room == game{
	global.sala_1 = game
}

// Se o jogo acabou de começar, carrega o arquivo default
if room == global.sala_1{
	lines = global.originais
}


global.valores = lines // Valores do array de line para salvar depois

global.vida_player = real(lines[0])
global.hsp_player = real(lines[1])
global.vsp_player = real(lines[2])
global.grv_player = real(lines[3])
global.walkspd_player = real(lines[4])
global.pulo = false // Define se o player ta no evento de pulo
global.velocidade_pulo = real(lines[5]) // Velocidade do pulo

//global.shot_timer = 0

// Inicializa global.armas com arrays internos: {arma, tempo}
 // Array contendo cada velocidade de tiro respectivamente
//global.tempo_tiro_arma_player = []



// 'lines' array now contains each line from the file

// Armas do player
global.arma_player_atual = global.armas[real(lines[6])]

//pistola if lines[4] == "pistola" else ak47 if lines[4] == "ak47" else semtextura
global.tempo_arma_player_atual = real(lines[7])
global.ultima_bala = real(lines[8])
//global.arma_player_indx = 0

// Sobre atirar
global.velocidade_tiro = real(lines[9])
global.velcoidade_tiro_o = real(lines[10])
global.ultima_bala = real(lines[11])

// Gravidade
global.gravidade = real(lines[12])
global.num_balas_player = 100000000000000

//dialogo
global.is_dialog_active = false;