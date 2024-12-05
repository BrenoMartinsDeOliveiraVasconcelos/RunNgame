/// @description Insert description here
// You can write your code in this editor
id_plataforma = 0 // O id da possivel plataforma que o objeto ta tocando


centro_gravitacional = instance_nearest(x, y, oCentroGravitacional)
y_inicial = centro_gravitacional.y
y_inicial_o = centro_gravitacional.y

//Velocidade do soldado

// Define o Y como o mesmo do player NA CRIAÇÃO
player_perto = instance_nearest(x, y, OMarco) // O player mais próximo do soldado
y = player_perto.y

hsp = 0;
vsp = 0;
grv = 0.75;
walkspd = 2;
espera = 0;
pause_timer = 0; // Novo temporizador para pausar
pause_duration = room_speed * 2; // Duração da pausa em frames (2 segundos)


armas = [sBalaInimigo, sFogo]
arma_atual = sFogo
max_vida  = 1000  // Vida maxima
vida = max_vida // Inicializa a saúde do inimigo
shot_timer = 0; // Timer inicial
wait_time = 20; // 0.75 segundos (a 60 FPS)
can_shoot = true; // Permite disparar inicialmente
shoot_wait_time = 0; // Inicializa o tempo de espera para disparo
dano_player = 15 // Dano do chefe
fire_rate = 25; // 25 frames entre cada tiro / 60 = 1 segundo

// Variáveis para controle de parada
move_timer = 0; // Timer para controle de movimento
move_duration = room_speed * 2; // Duração do movimento (2 segundos)
stop_duration = room_speed * 2; // Duração da parada (2 segundos)
is_moving = true; // Flag para indicar se está se movendo


// Variaveis de movimento
min_x = 200
max_x = 400

morte = 0
tempo_espera = 3000

troca_arma_timer = 0;  // Timer para controle da troca de arma
