// Returns a String from the included file string.ini with the specified string Key.
///getString(string key) 
ini_open("strings.ini");
return ini_read_string(global.locale, argument[0], "");
ini_close();
