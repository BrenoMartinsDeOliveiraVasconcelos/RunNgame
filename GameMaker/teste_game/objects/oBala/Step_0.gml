/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Destroi o projétil após um certo tempo ou ao sair da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}