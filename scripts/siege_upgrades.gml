///siege_upgrades()
kills = global.kills;
upgrades = global.upgrade;

if(kills % 2 != 0) { exit; }
if(upgrades == 0) {
   siege_weapon_upgrade(obj_wep01, 0.2, up_firespeed);
} else if(upgrades == 1)  {
   siege_weapon_upgrade(obj_wep01, 0.2, up_damage);   
} else if(upgrades == 2) {
   siege_weapon_upgrade(obj_wep01, 0.25, up_maxammo);
} else if(upgrades == 3)  {
   siege_weapon_upgrade(obj_wep01, 0.3, up_reloadspeed);
} else if(upgrades == 4)  {
   siege_weapon_add(obj_wep02);
} else if(upgrades == 5) {
   siege_weapon_upgrade(obj_wep02, 0.25, up_firespeed);
} else if(upgrades == 6)  {
   siege_weapon_upgrade(obj_wep02, 1, up_damage);   
} else if(upgrades == 7) {
   siege_weapon_upgrade(obj_wep02, 0.20, up_maxammo);
} else if(upgrades == 8)  {
   siege_weapon_upgrade(obj_wep02, 0.25, up_reloadspeed);
} else if(upgrades == 9)  {
   siege_weapon_add(obj_wep03);
} else if(upgrades == 10) {
   siege_weapon_upgrade(obj_wep03, 0.25, up_firespeed);
} else if(upgrades == 11)  {
   siege_weapon_upgrade(obj_wep03, 0.25, up_damage);   
} else if(upgrades == 12) {
   siege_weapon_upgrade(obj_wep03, 0.2, up_maxammo);
} else if(upgrades == 13)  {
   siege_weapon_upgrade(obj_wep03, 0.25, up_reloadspeed);
} else if(upgrades == 14) {
   siege_weapon_upgrade(obj_wep01, 0.2, up_firespeed);
} else if(upgrades == 15)  {
   siege_weapon_upgrade(obj_wep01, 0.2, up_damage);   
} else if(upgrades == 16) {
   siege_weapon_upgrade(obj_wep01, 0.25, up_maxammo);
} else if(upgrades == 17)  {
   siege_weapon_upgrade(obj_wep01, 0.3, up_reloadspeed);
} else if(upgrades == 18) {
   siege_weapon_upgrade(obj_wep02, 0.25, up_firespeed);
} else if(upgrades == 19)  {
   siege_weapon_upgrade(obj_wep02, 1, up_damage);   
} else if(upgrades == 20) {
   siege_weapon_upgrade(obj_wep02, 0.20, up_maxammo);
} else if(upgrades == 21)  {
   siege_weapon_upgrade(obj_wep02, 0.25, up_reloadspeed);
} else if(upgrades == 22) {
   siege_weapon_upgrade(obj_wep03, 0.25, up_firespeed);
} else if(upgrades == 23)  {
   siege_weapon_upgrade(obj_wep03, 0.25, up_damage);   
} else if(upgrades == 24) {
   siege_weapon_upgrade(obj_wep03, 0.25, up_maxammo);
} else if(upgrades == 25)  {
   siege_weapon_upgrade(obj_wep03, 0.25, up_reloadspeed);
}
