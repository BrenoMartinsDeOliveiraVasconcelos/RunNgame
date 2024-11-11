/// @description Platform collision detection
// Get all instances of player within range

// Check if the player is on top of any platform
var on_any_platform = false;

// Loop through all instances of platforms
with (oPlataforma) {
    // Verifica coisão em relação ao objeto da plataforma
    if ((player.y >= y - sprite_height and player.y <= y + sprite_height and player.x >= x - sprite_width/2 and player.x <= x + sprite_width/2)){ //or (player.x >= x - sprite_width/2 and player.x <= x + sprite_width/2)) {
        player.y_inicial = y
        on_any_platform = true;  // Player is on a platform
	}	
}

// If the player is not on any platform, reset the ground level
if (!on_any_platform) {
    player.y_inicial = player_inicial_y;
}
