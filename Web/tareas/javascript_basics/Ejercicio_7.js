function factoriza(x){
	let factorizados =[]
	let counter = 0

        for (let i = x; i > 0; i--){
                if (x%i===0){
                        factorizados.push(i)
                }
                        counter = counter + 1
        }
	console.log("factorizacion: " + factorizados)
}

casoPrueba = 50
factoriza(casoPrueba)
