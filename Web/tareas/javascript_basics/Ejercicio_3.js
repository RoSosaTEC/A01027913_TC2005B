function reversa2(arreglo,n){
	let newArray =[]
	for (let i = n; i > -1; i--){
		newArray.push(arreglo[i])
	}
return newArray;
}



function reversa(arreglo,n){
	for (let i = 0 ; i < n/2; i++){
			let t = arreglo[i]
			arreglo[i]=arreglo[n]
			arreglo[n]=t
			n--
	}
}

let arregloTest = [1,2,3,4,5]
let n = 4

let newArray = reversa2(arregloTest,n)
console.log(newArray)

reversa(arregloTest,n)
console.log(arregloTest)
