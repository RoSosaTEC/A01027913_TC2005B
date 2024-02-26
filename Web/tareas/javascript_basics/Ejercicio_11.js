function ordenAlfabetico(texto){

	let textoUnido = texto.split(" ")

 	for (let i = 0; i < textoUnido.length; i++) {
        	for (let j = i + 1; j < textoUnido.length; j++) {
            		if (textoUnido[i] > textoUnido[j]) {
                		let t = textoUnido[i];
                		textoUnido[i] = textoUnido[j];
                		textoUnido[j] = t;
            }
        }
    }

    console.log(textoUnido);
}

let prueba = "esta es una linea de texto"
ordenAlfabetico(prueba)


