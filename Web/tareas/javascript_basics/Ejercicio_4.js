function mayus(string){
	let splitWords = string.split(" ")
	for (let i = 0; i < splitWords.length; i++){
		splitWords[i] = splitWords[i][0].toUpperCase() + splitWords[i].substring(1)
	}
	let newString = splitWords.join(" ")
	console.log(newString)
}

let pruebaString = "este es un string de prueba en minusculas"
mayus(pruebaString)
