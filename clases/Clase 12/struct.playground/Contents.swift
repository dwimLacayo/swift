//Structs
//Permite sobre carga de funciones
struct Animal: CustomStringConvertible{
    var nombre: String
    var edad: Int = 0
    var description: String{
        var mensaje = "Yo me llamo \(self.nombre)"
        if self.edad > 0 {
            mensaje = mensaje + " y tengo \(self.edad) años"
        }
        print(mensaje)
        return mensaje
    }
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    init(nombre: String, edad: Int){
        self.nombre = nombre
        self.edad = edad
    }
}

let perro = Animal(nombre: "Firulais")
let gato = Animal(nombre: "Neko",edad: 2)

//Las estructuras son tipos de dato que van por valor
