///getString(string id) 
ini_open("strings.ini");
return ini_read_string(global.locale, argument[0], "");
ini_close();
