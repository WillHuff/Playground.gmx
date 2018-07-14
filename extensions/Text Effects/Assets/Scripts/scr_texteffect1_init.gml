/// scr_texteffect1_init(String, Draw Time, Delay Time, Reveal Time)

// Arguments
str         = argument0;
waittime    = argument1;
waittime2   = argument2;
waittime1   = argument3;

// Random Characters
randomstr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890`~!@$%^&*()-_=+[{]}\|;:',<.>/?";
randomstrlength = string_length(randomstr);

// Seperate the random Characters into an array list
for (var i = 0; i <= string_length(randomstr); i++) {
    randomcharacter[i] = string_char_at(randomstr, i + 1);
}


strlength = string_length(str);
for (var i = 0; i <= strlength; i++) {
    character[i] = string_char_at(str,i + 1);
}

// String to show on screen
displaystr = "";

// Timer Variables
wait = waittime;
wait1 = waittime1;
wait2 = waittime2;

// String Concatanation Variables
letters = 0;
realletter = 0;