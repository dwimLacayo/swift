// Arrays

let primos: Array<Int>

let primos2: [Int]
let primos3: [Int] = [2,3,5,7]

let primosNombres: [String] = ["two","three","five","seven"]

//Esta funcion espera un array
func saluda(nombre: String) -> String{
    return "Hola \(nombre)"
}

for item in primosNombres{
  print(saluda(nombre: item))
}

//Esta funcion espera un array
func saluda2(nombre: [String]) -> String{
    return "Hola \(nombre[0])"
}

print(saluda2(nombre: primosNombres))

//Formas de crear arreglos vacios
var listaAlumnos: [String] = []
var listaProfesores = [String]()

listaProfesores = ["Germnan", "Luis"]

var ceros = Array(repeating: 0, count: 10)
print(ceros)

var holas = Array(repeating: "hola mundo", count: 10)
print(holas)

var numeros = Array(0...7) //los 3 puntos indican que es un rango de valores
print(numeros)

//Modificando arreglos
var pares = [4,10,20]
print(pares)
pares[2] = 30
print(pares)

//Los arreglos tambien son objetos por lo que tienen propiedades
print(pares, pares.count)

pares.append(40) //Agrega un elemento más al arreglo
print(pares, pares.count)

pares += [50,60] //Concatena un arreglo con otro arreglo
print(pares, pares.count)

pares.insert(56, at: 5) //Se pueden agregar elementos en una posición especifica
print(pares, pares.count)

pares[1...4] = [1200, 1800] //Se quita un rango y se agrega el arreglo en esa posicion
print(pares, pares.count)

pares[2...2] = [24,44,88] //En una posición especifica agregamos el arreglo que le proporcionamos
print(pares, pares.count)

pares[...3] = [80,160,320]
//print(pares)
pares[4...] = [2000,400]
print(pares, pares.count)

//Eliminar elementos
pares.removeLast()
print(pares, pares.count)

pares.removeFirst()
print(pares, pares.count)

pares.remove(at: 3)
print(pares, pares.count)

pares.removeFirst(2)
print(pares, pares.count)

pares.removeAll()
print(pares, pares.count)

pares += [10,20,30,40,50,60]
print(pares, pares.count)

pares.removeSubrange(2...4)
print(pares, pares.count)

pares.removeAll(keepingCapacity: true) // guarda el espacio de memoria
print(pares)
print("El arreglo esta vacio?: \(pares.isEmpty)")
pares.removeAll()
print("El arreglo esta vacio?: \(pares.isEmpty)")
