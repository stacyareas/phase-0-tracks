// Create a function that takes a string as a parameter and reverse the string. 

// Create an empty string for each character
// Next create a FOR loop that takes the length of the sting and subtracts it by onw.
// Set it to be greater than or equals 0 so that it will keep looping until it 
// hits index 0
// Then set our new word to new word plus strings index
// Return word
// Print new reversed word

function reverse(str) {
	var word = "";
	for (var i = str.length - 1; i >= 0; i--) {
		word += str[i];
	}
	return word;
}

console.log(reverse('trains'));
console.log(reverse('trains')== reverse('trains'));
