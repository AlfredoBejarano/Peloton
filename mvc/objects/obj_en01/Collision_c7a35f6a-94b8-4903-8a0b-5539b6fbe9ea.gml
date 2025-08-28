if(can_get_stab == 1) {
    create_blood_splat(x, other.y, other, true, depth + 5);
    hp -= other.damage;
    alarm[0] = 30;
    can_get_stab = 0;
}

