//Enumerations

enum Calificacion{
    case S
    case B
    case MB
}

var examenEvaluacion: Calificacion

//Acceder de forma inmediata a un valor
examenEvaluacion = .S
print(examenEvaluacion)

var calificacion = Calificacion.B
print(calificacion)
print(type(of: calificacion))

calificacion = .MB


enum Rubrica: CaseIterable{
  case NoAprobado
  case AprobadoSuficiente
  case Regular
  case Bueno
  case MuyBueno
  case Excelente
}

//Para obeter todos ellos es necesario usar un protocolo
let datosRubrica = Rubrica.allCases
print(datosRubrica, datosRubrica.count)

func evalua(from rubrica: Rubrica){
    switch rubrica {
    case .NoAprobado:
        print(5)
    case .AprobadoSuficiente:
        print(6)
    case .Regular:
        print(7)
    case .Bueno:
        print(8)
    case .MuyBueno:
        print(9)
    case .Excelente:
        print(10)
    //default:
    //    print("NP")
    @unknown default:
        print("NP")
    }
}

print("*********")
var examenParcial = Rubrica.Bueno
evalua(from: examenParcial)


//Podemos crear en un enum una funcion

enum Rubrica2: CaseIterable{
  case NoAprobado
  case AprobadoSuficiente
  case Regular
  case Bueno
  case MuyBueno
  case Excelente
    
    func evalua(){
        switch self {
        case .NoAprobado:
            print(5)
        case .AprobadoSuficiente:
            print(6)
        case .Regular:
            print(7)
        case .Bueno:
            print(8)
        case .MuyBueno:
            print(9)
        case .Excelente:
            print(10)
        //default:
        //    print("NP")
        @unknown default:
            print("NP")
        }
    }
    
}

print("*********")
let datosRubrica2 = Rubrica2.allCases
print(datosRubrica, datosRubrica.count)

var examenParcial2 = Rubrica2.MuyBueno
examenParcial2.evalua()

//Propiedad Calculada

enum Rubrica3: CaseIterable{
  case NoAprobado
  case AprobadoSuficiente
  case Regular
  case Bueno
  case MuyBueno
  case Excelente
    var evaluacion : Int{
        switch self {
        case .NoAprobado:
            return 5
        case .AprobadoSuficiente:
            return 6
        case .Regular:
            return 7
        case .Bueno:
            return 8
        case .MuyBueno:
            return 9
        case .Excelente:
            return 10
        //default:
        //    print("NP")
        @unknown default:
            print("NP")
        }
    }
}

print("*********")
var examenParcial3 = Rubrica3.Excelente
print(examenParcial3.evaluacion)


//
enum Rubrica4: Int{ //si te mando a imprimir que me das Int
  case NoAprobado
  case AprobadoSuficiente
  case Regular
  case Bueno
  case MuyBueno
  case Excelente
    var evaluacion : Int{
        switch self {
        case .NoAprobado:
            return 5
        case .AprobadoSuficiente:
            return 6
        case .Regular:
            return 7
        case .Bueno:
            return 8
        case .MuyBueno:
            return 9
        case .Excelente:
            return 10
        //default:
        //    print("NP")
        @unknown default:
            print("NP")
        }
    }
}

print("*********")
var examenParcial4 = Rubrica4.Regular
print(examenParcial4.rawValue)

enum Rubrica5: String{ //si te mando a imprimir que me das Int
  case NoAprobado
  case AprobadoSuficiente
  case Regular
  case Bueno = "MUY CREIDO"
  case MuyBueno
  case Excelente
    var evaluacion : Int{
        switch self {
        case .NoAprobado:
            return 5
        case .AprobadoSuficiente:
            return 6
        case .Regular:
            return 7
        case .Bueno:
            return 8
        case .MuyBueno:
            return 9
        case .Excelente:
            return 10
        //default:
        //    print("NP")
        @unknown default:
            print("NP")
        }
    }
}

print("*********")
var examenParcial5 = Rubrica5.Bueno
print(examenParcial5.rawValue)

var tarea = Rubrica5(rawValue: "MuyBueno")
print(tarea)
