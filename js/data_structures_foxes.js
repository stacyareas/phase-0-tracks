var colors = ["magenta", "cyan", "emerald", "school bus yellow"];

var horseNames = ["Brownie", "Horsey", "Rosemund", "Ed"];

colors.push("periwinkle");
horseNames.push("Beau");


function combineArr(horseNames, colors) {
    var newObject = {};    
    for (var i = 0; i < horseNames.length; i++)
    newObject[horseNames[i]] = colors[i];
    return newObject;
}

console.log(combineArr(horseNames, colors));

function Car(color, year) {

//    console.log("New car:", this);

    this.color = color;
    this.year = year;
    this.honk = function() {console.log("*beep*"); };
}

console.log("-----")
var newCar = new Car("red", 1990);
console.log(newCar);
newCar.honk();

console.log("-----")
var newCar2 = new Car("blue", 1980);
console.log(newCar2);
newCar2.honk();

console.log("-----")
var newCar3 = new Car("black", 1995);
console.log(newCar3);
newCar3.honk();

console.log("-----")
var newCar4 = new Car("grey", 2016);
console.log(newCar4);
newCar4.honk();