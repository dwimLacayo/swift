//Maria Lacayo
//Closure que recibe 2 números enteros y que devuelva 1 double y un entero, el double es la division y el entero es la suma

print("HOLA MUNDO ")
let reto = { (dato1: Int, dato2: Int) -> (Int,Double) in
    let divide: Double = Double((dato1/dato2))
    let suma: Int = (dato1+dato2)
    print("LA SUMA ES: \(suma)")
    print("LA DIVISION ES: \(divide)")
    return (suma,divide)
}

print(reto(6,2))
