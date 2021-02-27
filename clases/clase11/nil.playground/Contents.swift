
var name: String?  //Aqui se habilta name a ser nulo
name = "Armando"
print(name!) //El admiración es para confirmar

var nombreAlumno: String?
nombreAlumno = nil

if nombreAlumno != nil{
  print(nombreAlumno!)
}else{
  print("nombreAlumno no tiene valor")
}

// ??
print(nombreAlumno ?? "nombreAlumno tiene un nil")

nombreAlumno = "yui"

//Optional Binding
// If let
if let nombreTemp = nombreAlumno{
    print(nombreTemp)
}else{
    print("tiene un nil")
}

//Usando funciones
//Name shadowing
func nombreFuncion(_ nombreAlumno: String?){
    if let nombreAlumno = nombreAlumno{
        print(nombreAlumno)
    }else{
        print("error!!!")
    }
}
nombreFuncion(nombreAlumno)

// Guard Binding
// Guard Let

func valida(_ nombreParametro: String?) -> String{
    guard let nombreAlumno = nombreParametro else{ //Crea la variable nombreAlumno con el dato de nombreParametro
        return "Hay nulo" //En caso de que sea nulo te regresa de aqui la data
    }
    print("Mi variable sigue viva \(nombreAlumno)")
    
    return "ok"
}
