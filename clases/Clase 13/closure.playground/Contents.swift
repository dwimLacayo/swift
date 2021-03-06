//Closures

/*
 {
 (<#parametros#>) -> <#return-type#> in
 <#statements#>
 }
 */

let closure1 = { () -> Void in
    print("HOLA MUNDO")
}

closure1()

let closure2 = {(name: String) -> Void in
    print("Hola\(name)")
}

closure2("Maria")

func TestCloure (funcion: (String) -> Void){
    funcion("Cadena")
}

TestCloure(funcion: closure2)

//Trailing clouser
//se reciben 2 paremetros, el primero es un entero y el segundo es un closure que no recibe ni devuelve nada
func imprimeClosure(num:Int,closure:()->Void){
    for _ in 0..<num{
        closure()
    }
}

let closure = {()->Void in
    print("HOLA MUNDO")
}

imprimeClosure(num: 5, closure: closure)
imprimeClosure(num: 2, closure: {print("Adios ...")})

imprimeClosure(num: 4){
    print("Trailing")
}

func imprimeClosure_2(num:Int, closure: (_: String)->Void){
    for _ in 0..<num{
        closure("pura función")
    }
}

imprimeClosure_2(num: 4){
    print("hola desde \($0)")
}

imprimeClosure_2(num: 10, closure: {_ in print("Adios---------.")})

let closure5: (String,String) -> Void = {
    print("\($0) \($1)")
}

closure5("Hola","mudo")

/*
let closure6 = { (String, String) in
  print("\($0) \($1)")
}*/

let closure7: () -> () = {
    print("HOLA de nuevo")
}
closure7()

print("---------------")
//Closures & Array

let alumnos = ["Maria","Lulu","Richie","Martha"]

alumnos.map{ nombre in
    print("Hola \(nombre)")
}
print("---------------")
alumnos.map{
    print("Hola alumnos \($0)")
}

print("---------------")
var mensajes = alumnos.map{
    (nombre: String) -> String in
        return "Bienvenido \(nombre)"
}

for mensaje in mensajes{
    print(mensaje)
}
