/// scr_typestring_getvalue();

// Determine how many characters of the string to show
if (wait <= 0) {
    letters++;    
    if (letters >= strlength) {
        letters = strlength;
    }
    // Add the Type speed offset
    if (stoponspace == true) {
        if ((string_char_at(str, letters) == ".") || (string_char_at(str, letters) == "!") || (string_char_at(str, letters) == "?")) {
            wait = stoptime;
        } else {
            wait = waittime + irandom_range(-irandom(typespeedoff), irandom(typespeedoff));
        }
    } else {
        wait = waittime + irandom_range(-irandom(typespeedoff), irandom(typespeedoff));
    }
} else {
    wait--;
}

// Concatenate the string
displaystr = "";
for (var i = 0; i < letters; i++) {
    displaystr = displaystr + string_char_at(str, i + 1);
}

// Return the string
return(displaystr);
