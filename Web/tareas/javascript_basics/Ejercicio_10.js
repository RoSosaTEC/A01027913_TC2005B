function palindromo(texto){
	let textoReversa = texto.split("").reverse().join("")
	if (texto == textoReversa){
		console.log("esta palabra es un palindromo")
	}
	else{
		console.log("esta palabra no es un palindromo")
	}

}

let test= "reconocer"

palindromo(test)
