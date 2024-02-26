function medianaModa(lista){
	console.log("Array ordenado: " + lista.sort())
	//mediana
	let mediana = 0
	let mitad = (lista.length / 2)

	if (mitad % 2 === 0){
		mediana = lista[mitad]
	}
	else{
		let upperHalf = lista[mitad+0.5]
		let lowerHalf = lista[mitad-0.5]
		let avg = (upperHalf + lowerHalf)/2

		mediana = lista[avg]
	}
	console.log("Mediana: " + mediana)

	//moda
	let rep = 1
	let maxRep = 0
	let arrayRep = []

	for (let i = 0; i< lista.length; i++){
		
	}
}

let prueba = [1,4,4,2,9,4,1]
medianaModa(prueba)
