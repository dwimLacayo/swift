
enum Rubrica: Int{
    case NoAprobado = 6
    case AprobadoSuficiente
    case Regular
    case Bueno
    case MuyBueno
    case Excelente
}

let calificacion = Rubrica.Bueno
print(calificacion.rawValue)


//Podemos asociar 2 enum
//cuando un enum va a ser asociado con otro enum se debe llamar desde el enum aosciado
//es decir asociamos Rubrica con Premio; entonces se llama desde Premio

enum Premio{
    case consolacion
    case basico
    case mediano(Rubrica) //El premio mediano se basara en la Rubrica
    case grandote
    case gigante
}

let textPremio = Premio.mediano(.Bueno)
print(textPremio)
print("***********")
//A enum Premio lo inyectamos a Rubrica inyectingcode
//Yo me saque el premio mediano porque saque 9


enum Rubrica2: Int{
    case NoAprobado = 6
    case AprobadoSuficiente
    case Regular
    case Bueno
    case MuyBueno
    case Excelente
}

enum Premio2{
    case consolacion(Rubrica2)
    case basico(Rubrica2)
    case mediano(Rubrica2) //El premio mediano se basara en la Rubrica
    case grandote(Rubrica2)
}

//extension sirbe para agregar más funcionalidad a una clase, enum, etc
extension Premio2: CustomStringConvertible{
    var description: String{
        var resultado: String
        switch self {
            case .consolacion(let rubrica):
            resultado = "Yo soy un premio de consolacion por que tuve una rubrica de \(rubrica.rawValue)"
            case .basico(let rubrica):
            resultado = "Yo soy un premio basico por que tuve una rubrica de \(rubrica.rawValue)"
            case .mediano(let rubrica):
                resultado = "Yo soy un premio mediano por que tuve una rubrica de \(rubrica.rawValue)"
            case .grandote(let rubrica):
            resultado = "Yo soy un premio grandote por que tuve una rubrica de \(rubrica.rawValue)"
            
            default:
                return "no saco nada"
        }
        return resultado
    }
}

let textPremio2 = Premio2.mediano(.Bueno)
print(textPremio2)

let premioConsolacion = Premio2.consolacion(.NoAprobado)
print(premioConsolacion)

let premioBasico = Premio2.basico(.AprobadoSuficiente)
print(premioBasico)

let premioMediano = Premio2.mediano(.MuyBueno)
print(premioMediano)

let premioGrandote = Premio2.grandote(.Excelente)
print(premioGrandote)
