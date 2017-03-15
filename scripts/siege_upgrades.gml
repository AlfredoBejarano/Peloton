///siege_upgrades()
kills = global.kills;
upgrades = global.upgrade;

if(kills % 2 != 0) { 
   exit; 
} else {
   if(upgrades == 0) {
      siege_weapon_upgrade(obj_wep01, 0.10, up_firespeed); 
   } else if(upgrades == 1) {
      siege_weapon_upgrade(obj_wep01, 0.30, up_damage);
   } else if(upgrades == 2) {    
      siege_weapon_upgrade(obj_wep01, 0.25, up_maxammo);
   } else if(upgrades == 3) {
      siege_weapon_upgrade(obj_wep01, 0.30, up_reloadspeed);
   } else if(upgrades == 4) {
      siege_weapon_add(obj_wep02);
   } else if(upgrades == 5) {
      siege_weapon_upgrade(obj_wep02, 0.12, up_firespeed); 
   } else if(upgrades == 6) {
      siege_weapon_upgrade(obj_wep02, 0.50, up_damage);
   } else if(upgrades == 7) {
      siege_weapon_upgrade(obj_wep02, 0.10, up_maxammo);
   } else if(upgrades == 8) {
      siege_weapon_upgrade(obj_wep02, 0.25, up_reloadspeed);
   } else if(upgrades == 9) {
      siege_weapon_add(obj_wep03);
   } else if(upgrades == 10) {
      siege_weapon_upgrade(obj_wep03, 0.12, up_firespeed);
   } else if(upgrades == 11) {      
   siege_weapon_upgrade(obj_wep03, 0.12, up_damage);
   } else if(upgrades == 12) {   
      siege_weapon_upgrade(obj_wep03, 0.20, up_maxammo);
   } else if(upgrades == 13) { 
      siege_weapon_upgrade(obj_wep03, 0.12, up_reloadspeed);
   } else if(upgrades == 14) {                                                             
      siege_weapon_add(obj_wep04);
   } else if(upgrades == 15) {
      siege_weapon_upgrade(obj_wep04, 0.12, up_firespeed);
   } else if(upgrades == 16) {
      siege_weapon_upgrade(obj_wep04, 0.12, up_damage);
   } else if(upgrades == 17) {
      siege_weapon_upgrade(obj_wep04, 0.25, up_maxammo);
   } else if(upgrades == 18) {
      siege_weapon_upgrade(obj_wep04, 0.25, up_reloadspeed);
   } else if(upgrades == 19) {
      siege_weapon_upgrade(obj_wep01, 0.10, up_firespeed);
   } else if(upgrades == 20) {
      siege_weapon_upgrade(obj_wep01, 0.10, up_damage);
   } else if(upgrades == 21) {
      siege_weapon_upgrade(obj_wep01, 0.12, up_maxammo);
   } else if(upgrades == 22) {
      siege_weapon_upgrade(obj_wep01, 0.15, up_reloadspeed);
   } else if(upgrades == 23) {
      siege_weapon_upgrade(obj_wep02, 0.12, up_firespeed);
   } else if(upgrades == 24) {
      siege_weapon_upgrade(obj_wep02, 0.50, up_damage);
   } else if(upgrades == 25) {
      siege_weapon_upgrade(obj_wep02, 0.10, up_maxammo);
   } else if(upgrades == 26) {
      siege_weapon_upgrade(obj_wep02, 0.12, up_reloadspeed);
   } else if(upgrades == 27) {
      siege_weapon_upgrade(obj_wep03, 0.12, up_firespeed);
   } else if(upgrades == 28) {
      siege_weapon_upgrade(obj_wep03, 0.12, up_damage);
   } else if(upgrades == 29) {
      siege_weapon_upgrade(obj_wep03, 0.20, up_maxammo);
   } else if(upgrades == 30) {
      siege_weapon_upgrade(obj_wep03, 0.12, up_reloadspeed);
   } else if(upgrades == 31) {
      siege_weapon_upgrade(obj_wep04, 0.12, up_firespeed);
   } else if(upgrades == 32) {
      siege_weapon_upgrade(obj_wep04, 0.12, up_damage);
   } else if(upgrades == 33) {
      siege_weapon_upgrade(obj_wep04, 0.25, up_maxammo);
   } else if(upgrades == 34) {
      siege_weapon_upgrade(obj_wep04, 0.25, up_reloadspeed);
   } else if(upgrades == 35) {
      siege_weapon_add(obj_wep05);
   } else if(upgrades == 36) {
      siege_weapon_upgrade(obj_wep05, 0.10, up_firespeed);
   } else if(upgrades == 37) {
      siege_weapon_upgrade(obj_wep05, 0.10, up_damage);
   } else if(upgrades == 38) {
      siege_weapon_upgrade(obj_wep05, 0.12, up_maxammo);
   } else if(upgrades == 39) {
      siege_weapon_upgrade(obj_wep05, 0.15, up_reloadspeed);
   } else if(upgrades == 40) {
      siege_weapon_add(obj_wep06);
   } else if(upgrades == 41) {
      siege_weapon_upgrade(obj_wep06, 0.10, up_firespeed);
   } else if(upgrades == 42) {
      siege_weapon_upgrade(obj_wep06, 0.10, up_damage);
   } else if(upgrades == 43) {
      siege_weapon_upgrade(obj_wep06, 0.12, up_maxammo);
   } else if(upgrades == 44) {
      siege_weapon_upgrade(obj_wep06, 0.15, up_reloadspeed);
   } else if(upgrades == 45) {
      siege_weapon_add(obj_wep07);
   } else if(upgrades == 46) {
      siege_weapon_upgrade(obj_wep07, 0.10, up_firespeed);
   } else if(upgrades == 47) {
      siege_weapon_upgrade(obj_wep07, 0.10, up_damage);
   } else if(upgrades == 48) {
      siege_weapon_upgrade(obj_wep07, 0.12, up_maxammo);
   } else if(upgrades == 49) {
      siege_weapon_upgrade(obj_wep07, 0.15, up_reloadspeed);
   } else if(upgrades == 50) {
      siege_weapon_add(obj_wep08);
   } else if(upgrades == 51) {
      siege_weapon_upgrade(obj_wep08, 0.10, up_firespeed);
   } else if(upgrades == 52) {
      siege_weapon_upgrade(obj_wep08, 0.10, up_damage);
   } else if(upgrades == 53) {
      siege_weapon_upgrade(obj_wep08, 0.12, up_maxammo);
   } else if(upgrades == 54) {
      siege_weapon_upgrade(obj_wep08, 0.15, up_reloadspeed);
   } else if(upgrades == 55) {
      siege_weapon_upgrade(obj_wep05, 0.10, up_firespeed);
   } else if(upgrades == 56) {
      siege_weapon_upgrade(obj_wep05, 0.10, up_damage);
   } else if(upgrades == 57) {
      siege_weapon_upgrade(obj_wep05, 0.12, up_maxammo);
   } else if(upgrades == 58) {
      siege_weapon_upgrade(obj_wep05, 0.15, up_reloadspeed);
   } else if(upgrades == 59) {
      siege_weapon_upgrade(obj_wep06, 0.10, up_firespeed);
   } else if(upgrades == 60) {
      siege_weapon_upgrade(obj_wep06, 0.10, up_damage);
   } else if(upgrades == 61) {
      siege_weapon_upgrade(obj_wep06, 0.12, up_maxammo);
   } else if(upgrades == 62) {
      siege_weapon_upgrade(obj_wep06, 0.15, up_reloadspeed);
   } else if(upgrades == 63) {
      siege_weapon_upgrade(obj_wep07, 0.10, up_firespeed);
   } else if(upgrades == 64) {
      siege_weapon_upgrade(obj_wep07, 0.10, up_damage);
   } else if(upgrades == 65) {
      siege_weapon_upgrade(obj_wep07, 0.12, up_maxammo);
   } else if(upgrades == 66) {
      siege_weapon_upgrade(obj_wep07, 0.15, up_reloadspeed);
   } else if(upgrades == 67) {
      siege_weapon_upgrade(obj_wep08, 0.10, up_firespeed);
   } else if(upgrades == 68) {
      siege_weapon_upgrade(obj_wep08, 0.10, up_damage);
   } else if(upgrades == 69) {
      siege_weapon_upgrade(obj_wep08, 0.12, up_maxammo);
   } else if(upgrades == 70) {
      siege_weapon_upgrade(obj_wep08, 0.15, up_reloadspeed);
   } else if(upgrades == 71) {
      siege_weapon_upgrade(obj_wep01, 0.10, up_firespeed);
   } else if(upgrades == 72) {
      siege_weapon_upgrade(obj_wep01, 0.10, up_damage);
   } else if(upgrades == 73) {
      siege_weapon_upgrade(obj_wep01, 0.12, up_maxammo);
   } else if(upgrades == 74) {
      siege_weapon_upgrade(obj_wep01, 0.15, up_reloadspeed);
   } else if(upgrades == 75) {
      siege_weapon_upgrade(obj_wep02, 0.12, up_firespeed);
   } else if(upgrades == 76) {
      siege_weapon_upgrade(obj_wep02, 0.50, up_damage);
   } else if(upgrades == 77) {
      siege_weapon_upgrade(obj_wep02, 0.10, up_maxammo);
   } else if(upgrades == 78) {
      siege_weapon_upgrade(obj_wep02, 0.12, up_reloadspeed);
   } else if(upgrades == 79) {
      siege_weapon_upgrade(obj_wep03, 0.12, up_firespeed);
   } else if(upgrades == 80) {
      siege_weapon_upgrade(obj_wep03, 0.12, up_damage);
   } else if(upgrades == 81) {
      siege_weapon_upgrade(obj_wep03, 0.20, up_maxammo);
   } else if(upgrades == 82) {
      siege_weapon_upgrade(obj_wep03, 0.12, up_reloadspeed);
   } else if(upgrades == 83) {
      siege_weapon_upgrade(obj_wep04, 0.12, up_firespeed);
   } else if(upgrades == 84) {
      siege_weapon_upgrade(obj_wep04, 0.12, up_damage);
   } else if(upgrades == 85) {
      siege_weapon_upgrade(obj_wep04, 0.25, up_maxammo);
   } else if(upgrades == 86) {
      siege_weapon_upgrade(obj_wep04, 0.25, up_reloadspeed);
   } else if(upgrades == 87) {
      siege_weapon_upgrade(obj_wep05, 0.10, up_firespeed);
   } else if(upgrades == 88) {
      siege_weapon_upgrade(obj_wep05, 0.10, up_damage);
   } else if(upgrades == 89) {
      siege_weapon_upgrade(obj_wep05, 0.12, up_maxammo);
   } else if(upgrades == 90) {
      siege_weapon_upgrade(obj_wep05, 0.15, up_reloadspeed);
   } else if(upgrades == 91) {
      siege_weapon_upgrade(obj_wep06, 0.10, up_firespeed);
   } else if(upgrades == 92) {
      siege_weapon_upgrade(obj_wep06, 0.10, up_damage);
   } else if(upgrades == 93) {
      siege_weapon_upgrade(obj_wep06, 0.12, up_maxammo);
   } else if(upgrades == 94) {
      siege_weapon_upgrade(obj_wep06, 0.15, up_reloadspeed);
   } else if(upgrades == 95) {
      siege_weapon_upgrade(obj_wep07, 0.10, up_firespeed);
   } else if(upgrades == 96) {
      siege_weapon_upgrade(obj_wep07, 0.10, up_damage);
   } else if(upgrades == 97) {
      siege_weapon_upgrade(obj_wep07, 0.12, up_maxammo);
   } else if(upgrades == 98) {
      siege_weapon_upgrade(obj_wep07, 0.15, up_reloadspeed);
   } else if(upgrades == 99) {
      siege_weapon_upgrade(obj_wep08, 0.10, up_firespeed);
   } else if(upgrades == 100) {
      siege_weapon_upgrade(obj_wep08, 0.10, up_damage);
   } else if(upgrades == 101) {
      siege_weapon_upgrade(obj_wep08, 0.12, up_maxammo);
   } else if(upgrades == 102) {
      siege_weapon_upgrade(obj_wep08, 0.15, up_reloadspeed);
   }
}
