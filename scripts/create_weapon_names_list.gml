/// create_weapon_names_list
var names = ds_list_create();
for(i = 0; i <= 9; i++) {
    ds_list_add(names, getString("weapon_name_" + string(i)));
}
return names;
