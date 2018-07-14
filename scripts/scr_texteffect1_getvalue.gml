/// scr_texteffect1_getvalue();

// Calculate how many letters of the string to be on the screen
if (wait <= 0) {
    // Add a letter to the string
    letters++;
    // Cap the ammount of letters in the string to the length of the string
    if (letters >= strlength) {
        letters = strlength;
    }
    // Reset the wait time
    wait = waittime;
} else {
    // Substract from the wait
    wait--;
}

// Check to see if all the letters of the string have been created
if (letters == strlength) {
    if (wait2 <= 0) {
        if (wait1 <= 0) {
            // Add 1 real letter to the string
            realletter++;
            // Cap the real letters in the string to the length of the string
            if (realletter >= strlength) {
                realletter = strlength;
            }
        // Reset the wait1 timer
        wait1 = waittime1;
        } else {
            // Subtract from the wait1
            wait1--;
        }
    } else {
        wait2--;
    }
}

// Set the display string to nothing (used so the string doesnt become incredibly large each time we pass through the step event)
displaystr = "";    
for (var j = 0; j < realletter; j++) {
    // Add the real parts of the string
    displaystr = displaystr + string_char_at(str, j + 1);
}
for (var i = 0; i < letters - realletter; i++) {
    // Add the random part of the string to the end
    if (string_char_at(str, i + 1) == "#") {
        displaystr = displaystr + "#";
    }
    displaystr = displaystr + randomcharacter[irandom(randomstrlength)];
}

// Return the string
return(displaystr);
