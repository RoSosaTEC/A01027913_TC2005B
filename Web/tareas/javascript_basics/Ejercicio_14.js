function powerOfTwo(numero){
	let testNum = 0
	let i = numero
	while (numero%2 == 0){
		numero = numero/2

	}
	if (numero === 1){
		console.log("Este numero es potencia de 2")
	}
	else {
		console.log("Este numero no es potencia de 2")
	}
}

powerOfTwo(12)
