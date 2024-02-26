function cadenaCorta(texto){

	let splitWords = texto.split(" ")
	let palabraCorta = [splitWords[0]]

	for(let i = 1; i< splitWords.length; i++){
		if(splitWords[i].length < palabraCorta[0].length){
			palabraCorta = splitWords[i]
		}
		else if (splitWords[i].length===palabraCorta[0].length){
			palabraCorta.push(splitWords[i])
		}
	}
	console.log("cadena mas corta: " + palabraCorta)
}

let ejemplo = "yo me llamo patata esto es un texto de prueba"
cadenaCorta(ejemplo)
