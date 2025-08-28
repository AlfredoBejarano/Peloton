if(position == 6) {
    position = 0;
    shooter.is_switching = 0;
} else {
    position ++;
    alarm[5] = 1;
}

