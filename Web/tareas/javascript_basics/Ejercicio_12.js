function medianaModa(lista){
	console.log("Array ordenado: " + lista.sort())
	//mediana
	let mediana = 0
	let mitad = (lista.length / 2)

	if (mitad % 2 === 0){
		let upperHalf = lista[mitad+1]
		let lowerHalf = lista[mitad]
		let avg = (upperHalf+lowerHalf)/2
		mediana = avg
	}
	else{
		let upperHalf = lista[mitad+0.5]
		let lowerHalf = lista[mitad-0.5]
		let avg = (upperHalf + lowerHalf)/2

		mediana = avg
	}
	console.log("Mediana: " + mediana)

	//moda
	let rep = 0
	let frecuencia = []
	let masFrecuente = 0
	let moda = 0

	for (let i = 0; i< lista.length; i++){
		for (let j = i; j<lista.length; j++){
			if(lista[i] === lista[j]){
				rep += 1
			}
		}
		frecuencia.push(rep)
		rep = 0
	}

	for (let k = 0; k< frecuencia.length;k++){
		if(frecuencia[k]>masFrecuente){
			masFrecuente = frecuencia[k]
		}
	}
	for(let x = 0; x < frecuencia.length; x++){
		if(frecuencia[x] == masFrecuente){
			moda = lista[x]
		}
	}
	console.log("Moda: " + moda)
}

let prueba = [1,4,4,2,4,1,7,7,0,4,1,2,3]
medianaModa(prueba)
