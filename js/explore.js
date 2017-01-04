// Create a function that takes a parameter
// Set 

function reverse(s) {
    var string = "";
    for(var i = s.length - 1; i >= 0; i--)
    string += s[i];
    return string;
}

console.log(reverse("Hello!"));