// Create a function that takes a parameter
// Set variable to equal an empty -""- which splits into characters
// For each character we want to store into new variable and put 
// the characters in reverse order then join characters together
// returning our new string


function reverse(s) {
    var string = " ";
    for(var i = s.length - 1; i >= 0; i--)
    string += s[i];
    return string;
}

console.log(reverse("Cat in the hat"));