function numRepetido(lista){
	for (i = 0; i < lista.length; i++){
		for (j = i+1; j < lista.length; j++){
			if (lista[i] == lista[j]){

				lista.splice(j,1)
				j--
			}
		}
	}
	console.log(lista)

}

let casoPrueba = [4,5,4,4,5,4]
numRepetido(casoPrueba)



