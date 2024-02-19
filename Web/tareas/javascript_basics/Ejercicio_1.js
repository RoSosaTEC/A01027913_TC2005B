function caracterNoRepetido(cadena){
	for (let i = 1; i < cadena.length; i++){
		let caracter = cadena[i]
		for (let j = i + 1; j < cadena.length - 1; j++){
			(cadena[i]==cadena[j]) ? console.log(cadena[j]) : console.log("_")
		}
	}

}

const cadenaEjemplo = "abacddbec"

caracterNoRepetido(cadenaEjemplo)
