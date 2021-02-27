// Diccionarios
// Dictionary<Key_Type>, <Value_type>

//Dictionary <String,Int>
let numeros = ["uno":1,"dos":2,"tres":3,"cuarto":4]

print(numeros)
print(numeros["dos"])

print(numeros["dos",default:0])

print(numeros["siete",default:0]) //Como no existe nada manda el default

var datos = [String: Int]()
datos["uno"] = 1
datos["dos"] = 2

datos["uno"] = 7000
datos["dos"] = 20

print(datos.count,datos)

print("---------------")
datos.removeValue(forKey: "uno")
print(datos.count,datos)

print("---------------")
datos.removeValue(forKey: "todos")
print(datos.count,datos)

datos["colores"] = 20
datos["quince"] = 15

for key in datos.keys{
    print(key,":",datos[key]!) //Cuando es por llave no sabe si existe
}

print("---------------")
for value in datos.values{
    print(value) //Cuando es por valor sabe que es
}

//Fast enumeration sobre un diccionario
print("---------------")
for dato in datos{
    print(dato.key,":",dato.value)
}

