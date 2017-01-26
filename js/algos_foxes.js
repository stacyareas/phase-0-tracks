var phrases = ["the cat", "in the hats", "likes rats"]

	var longest = 0;
	var longestPhrase = "";
	for (var i = 0; i < phrases.length; i++) {
		if (phrases[i].length > longest) {
			longest = phrases[i].length;
			longestPhrase = phrases[i];
	}
}
console.log(longestPhrase);

var personOne = {'age' : 27, 'name' : 'stacy'};
var personTwo = {'age' : 27, 'name' : 'lamar'};

function checkIfObjectContains(one, two){
   for (var key in one) {
     for (var secondKey in two) {
     		if (key === secondKey) {
     			if (one[key] === two[secondKey]) {
     				return true;
     			}
     		}
     	}
    }
    return false;
  }

  console.log(checkIfObjectContains(personOne, personTwo));

  function makeid()
{
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for( var i=0; i < 5; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text;
}

console.log(makeid());
