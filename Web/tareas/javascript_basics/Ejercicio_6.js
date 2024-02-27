function hackerSpeak(lista){
	let resultado = ""

	for (let i = 0; i < lista.length; i++){
		if(lista[i]=="a"){
			resultado += "4"
		} else if (lista[i]== "e"){
			resultado += "3"
		} else if (lista[i]== "i"){
			resultado += "1"
		} else if (lista[i]== "o"){
			resultado += "0"
		} else{
			resultado += lista[i]
		}
	}
	console.log(resultado)
}

let prueba = "Javascript es divertido"
hackerSpeak(prueba)
