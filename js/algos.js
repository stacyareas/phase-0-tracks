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



