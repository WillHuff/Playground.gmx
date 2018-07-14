/// scr_typestring_init(String, Type Speed, Type Speed Offset, Stop At Period, Stop Time)

// Arguments
str          = argument0;   // String Value
waittime     = argument1;   // Intger Value
typespeedoff = argument2;   // Intger Value
stoponspace  = argument3;   // Boolean Value
stoptime     = argument4;   // Intger Value

strlength = string_length(str);
for (var i = 0; i <= strlength; i++) {
    character[i] = string_char_at(str,i + 1);
}

// String to show on screen
displaystr = "";

// Timer Variables
wait = waittime;

// Visible characters in the string
letters = 0;
