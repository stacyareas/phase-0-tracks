// Create a function that takes a parameter
// Set variable to equal an empty -""- which splits into characters
// For each character we want to store into new variable and put 
// the characters in reverse order then join characters together
// set new string to a variable and print the results using  
// new variable 
// Add driver code that sets out to be true


function reverse(s) {
    var new_string = " ";
    for(var i = s.length - 1; i >= 0; i--) {
        new_string += s[i]
    }
    return new_string;
}

var result = reverse("cat in the hat");

console.log(result);
console.log(1 == 1);
