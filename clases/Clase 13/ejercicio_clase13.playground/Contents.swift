/*
 Crear arreglo de 100 números
 2 closures - Uno dice si es pares y otro si es nones
 .map
 Arreglos de los Hacer un closure con .map y se imprime si es par y otro que imprime los nones
 */

let a = stride(from: 1, to: 100, by: 1)

let pares = a.map{ (numero:Int) -> Int in
    if(numero%2 == 0){
        return numero
    }else{
        return 0
    }
}

let nones = a.map{ (numero:Int) -> Int in
    if(numero%2 == 0){
        return numero
    }else{
        return 0
    }
}

print(pares)
print(nones)
//¿Cómo le hariamos? QUEDA DE TAREA MORAL
