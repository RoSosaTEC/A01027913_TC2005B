function ordenDescendente(arreglo,n){
        for (let i = 0; i < n-1; i++){
                for (let j = i+1;j < n; j++){
                        if (arreglo[i]<arreglo[j]){
                                let t = arreglo[i]
                                arreglo[i] = arreglo[j]
                                arreglo[j] = t
                        }
                }
        }
return arreglo;

}


let cuentaArreglo = 7
let arregloPrueba = [42,80,1,45,67,2,798]

ordenDescendente(arregloPrueba,cuentaArreglo)
        console.log(arregloPrueba)
