function cadenaMasFrecuente(lista){
	let frecuencia = []
	let rep = 0
	let masFrecuente = 0
	let repetido = 0

	for (let i = 0; i < lista.length; i++){
		for(let j = 0; j < lista.length; j++){
			if (lista[i]===lista[j]){
				rep += 1
			}
		}
		frecuencia.push(rep)
		rep = 0
	}
	for (let x = 0; x < frecuencia.length; x++){
		if(frecuencia[x]>masFrecuente){
			masFrecuente = frecuencia[x]
		}
	}
	for(let y = 0; y < frecuencia.length; y++){
		if(frecuencia[y]==masFrecuente){
			repetido = lista[y]
		}
	}
	console.log("cadena mas repetida: " + repetido)
}

let cadenaPrueba =["hola","hola","ejemplo","rodrigo","paleta","hola"]
cadenaMasFrecuente(cadenaPrueba)
