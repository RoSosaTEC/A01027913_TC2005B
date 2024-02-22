function bubbleSort(arreglo,n){
	for (let i = 0; i < n-1; i++){
		for (let j = i+1;j < n; j++){
			if (arreglo[i]>arreglo[j]){
				let t = arreglo[i]
				arreglo[i] = arreglo[j]
				arreglo[j] = t
			}
		}
	}
return arreglo;

}


let cuentaArreglo = 6
let arregloPrueba = [88,12,79,4,84,0]

bubbleSort(arregloPrueba,cuentaArreglo)
	console.log(arregloPrueba)

