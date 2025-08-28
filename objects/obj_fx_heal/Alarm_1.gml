if(alpha >= 1) {
    alarm[2] = 1;
} else {
    alpha += 1 / (room_speed / 4);
    alarm[1] = 1;
}

