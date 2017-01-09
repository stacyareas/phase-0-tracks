var arr = ['firstone', 'secondtwo', 'thirdthree']

var word_lgth = 0;
var longest;

for(var i = 0; i < arr.length; i++) {
    if(arr[i].length > word_lgth) {
        var word_lgth = arr[i].length;
        longest = arr[i];
    }
}

console.log(longest);

var person_1 = {name: "Steven", age: 54};
var person_2 = {name: "Tamir", age: 54};

console.log(person_1 == person_2);
