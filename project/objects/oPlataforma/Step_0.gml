var colisoes = [OMarco, oSoldado, oBala, oBalaInimigo, oArma, oBoss, oArma];
var colisoes_destrutivas = [oBala, oBalaInimigo, oMissel];
var players = [OMarco];

for (var c = 0; c < array_length(colisoes); c += 1) {
    var objeto = colisoes[c];

    if instance_number(objeto) >= 1 {
        var player_proximo = instance_nearest(x, y, objeto);

        // Calcula as distâncias em X e Y
        var distanciaX = player_proximo.x - x;
        var distanciaY = player_proximo.y - y;

        // Calcula os valores absolutos das distâncias
        var modulo_dx = abs(distanciaX);
        var modulo_dy = abs(distanciaY);

        // Verifica se o player está dentro do alcance de afetação em X e Y
        if (modulo_dx <= distancia_afetarX and modulo_dy <= distancia_afetarY) {
            player_proximo.id_plataforma = id; // Define a plataforma atual

            // Se o objeto não for destrutivo, aplica lógica
            if not array_contains(colisoes_destrutivas, objeto) {
                // Ajusta o y_inicial apenas se o jogador estiver descendo
                if player_proximo.y >= 0 {
                    player_proximo.y_inicial = y;
                }

                // Lógica de ajuste com base em `distanciaX` e `distanciaY`
                if (distanciaX > 0 and modulo_dx <= pedra_distanciax_origem) {
                    player_proximo.y_inicial = y;
                }

                if (distanciaX < 0 and modulo_dx <= pedra_distanciax_origem) {
                    player_proximo.y_inicial = y;
                }

                if (distanciaY >= 0 and modulo_dy <= pedra_distanciay_origem) {
                    player_proximo.y_inicial = y;
                }

                if (distanciaY < 0 and modulo_dy <= pedra_distanciay_origem) {
                    player_proximo.y_inicial = y;
                }
            } else {
                // Ignora lógica de destruição (desativada no momento)
                // Você pode implementar aqui se necessário
                // instance_destroy(objeto);
            }
        } else {
            // Se o player estiver fora do alcance, verifica se deve restaurar valores
            if player_proximo.id_plataforma == id {
                if not array_contains(colisoes_destrutivas, objeto) {
                    // Apenas reseta y_inicial se o jogador estiver fora do alcance em X
                    if modulo_dx > sprite_width / 2 {
                        player_proximo.y_inicial = player_proximo.y_inicial_o; // Reseta ao valor original
                    }
                }
            }
        }
    }
}
