var phrases = ["the cat", "in the hats", "likes rats"]

	var longest = 0;
	var longestPhrase = "";
	for (var i = 0; i < phrases.length; i++) {
		if (phrases[i].length > longest) {
			longest = phrases[i].length;
			longestPhrase = phrases[i];
	}
}
console.log(longestPhrase)

var personOne = {'age' : 27, 'name' : 'stacy'};
var personTwo = {'age' : 29, 'name' : 'lamar'};

function checkIfObjectsMatch(one, two) {
	for (var i in one) {
		if (one[i] = two[i] || one[i] != two[i]) {
			return true;
		}
	}
	return false;
}

console.log(checkIfObjectsMatch(personOne, personTwo))





