
let divisores =[]
let primos = [2,3,5,7,11,13]
let maxComDiv = 1

function mcd(x,y){
	let counter = 0
	while (counter <= 5){
		if (x%primos[counter] === 0 && y%primos[counter] === 0){
			x = x/primos[counter]
			y = y/primos[counter]
			divisores.push(primos[counter])
			counter = 0;
		}
		else{
			counter = counter + 1
		}
	}
	for (let i = 0; i< divisores.length; i++){
		maxComDiv*= divisores[i]
	}
	console.log("El Maximo Comun Divisor es:" + maxComDiv)
}

let xPrueba = 25
let yPrueba = 80

console.log("Primer valor:" + xPrueba)
console.log("segundo valor: " + yPrueba)
mcd(xPrueba,yPrueba)
