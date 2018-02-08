///siege_upgrades()
kills = global.kills;
upgrades = global.upgrade;

if(kills % 2 != 0) { 
   exit; 
} else {
   if(upgrades == 0) {
      siege_weapon_upgrade(global.hg, 0.10, up_firespeed); 
   } else if(upgrades == 1) {
      siege_weapon_upgrade(global.hg, 0.30, up_damage);
   } else if(upgrades == 2) {    
      siege_weapon_upgrade(global.hg, 0.25, up_maxammo);
   } else if(upgrades == 3) {
      siege_weapon_upgrade(global.hg, 0.30, up_reloadspeed);
   } else if(upgrades == 4) {
      siege_weapon_add(global.mg);
   } else if(upgrades == 5) {
      siege_weapon_upgrade(global.mg, 0.12, up_firespeed); 
   } else if(upgrades == 6) {
      siege_weapon_upgrade(global.mg, 0.50, up_damage);
   } else if(upgrades == 7) {
      siege_weapon_upgrade(global.mg, 0.10, up_maxammo);
   } else if(upgrades == 8) {
      siege_weapon_upgrade(global.mg, 0.25, up_reloadspeed);
   } else if(upgrades == 9) {
      siege_weapon_add(global.sg);
   } else if(upgrades == 10) {
      siege_weapon_upgrade(global.sg, 0.12, up_firespeed);
   } else if(upgrades == 11) {      
   siege_weapon_upgrade(global.sg, 0.12, up_damage);
   } else if(upgrades == 12) {   
      siege_weapon_upgrade(global.sg, 0.20, up_maxammo);
   } else if(upgrades == 13) { 
      siege_weapon_upgrade(global.sg, 0.12, up_reloadspeed);
   } else if(upgrades == 14) {                                                             
      siege_weapon_add(global.rf);
   } else if(upgrades == 15) {
      siege_weapon_upgrade(global.rf, 0.12, up_firespeed);
   } else if(upgrades == 16) {
      siege_weapon_upgrade(global.rf, 0.12, up_damage);
   } else if(upgrades == 17) {
      siege_weapon_upgrade(global.rf, 0.25, up_maxammo);
   } else if(upgrades == 18) {
      siege_weapon_upgrade(global.rf, 0.25, up_reloadspeed);
   } else if(upgrades == 19) {
      siege_weapon_upgrade(global.hg, 0.10, up_firespeed);
   } else if(upgrades == 20) {
      siege_weapon_upgrade(global.hg, 0.10, up_damage);
   } else if(upgrades == 21) {
      siege_weapon_upgrade(global.hg, 0.12, up_maxammo);
   } else if(upgrades == 22) {
      siege_weapon_upgrade(global.hg, 0.15, up_reloadspeed);
   } else if(upgrades == 23) {
      siege_weapon_upgrade(global.mg, 0.12, up_firespeed);
   } else if(upgrades == 24) {
      siege_weapon_upgrade(global.mg, 0.50, up_damage);
   } else if(upgrades == 25) {
      siege_weapon_upgrade(global.mg, 0.10, up_maxammo);
   } else if(upgrades == 26) {
      siege_weapon_upgrade(global.mg, 0.12, up_reloadspeed);
   } else if(upgrades == 27) {
      siege_weapon_upgrade(global.sg, 0.12, up_firespeed);
   } else if(upgrades == 28) {
      siege_weapon_upgrade(global.sg, 0.12, up_damage);
   } else if(upgrades == 29) {
      siege_weapon_upgrade(global.sg, 0.20, up_maxammo);
   } else if(upgrades == 30) {
      siege_weapon_upgrade(global.sg, 0.12, up_reloadspeed);
   } else if(upgrades == 31) {
      siege_weapon_upgrade(global.rf, 0.12, up_firespeed);
   } else if(upgrades == 32) {
      siege_weapon_upgrade(global.rf, 0.12, up_damage);
   } else if(upgrades == 33) {
      siege_weapon_upgrade(global.rf, 0.25, up_maxammo);
   } else if(upgrades == 34) {
      siege_weapon_upgrade(global.rf, 0.25, up_reloadspeed);
   }
}
