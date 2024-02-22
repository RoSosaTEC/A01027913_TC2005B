function caracterNoRepetido(cadena){
	for (let i = 0; i < cadena.length; i++){
		let caracter = cadena[i]
		let unico  = true

		for (let j = 0; j < cadena.length; j++){
			if (i!== j && cadena[j]===caracter){
				unico = false
			}
		}
		if (unico){
			return caracter;
		}
	}
return null;
}


let cadenaEjemplo = "abacddbec"

let caracterUnico = caracterNoRepetido(cadenaEjemplo)

if (caracterUnico){
	console.log("caracter unico:" + caracterUnico)
}
else{
	console.log("No se han encontrado caracteres unicos.")
}
