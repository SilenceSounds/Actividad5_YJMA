import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/
class Persona{
    var nombre:String
    var pasos:Int

    init(nombre:String, pasos:Int){
        self.nombre = nombre
        self.pasos = pasos
    }

    func Saludar(nombre:String){
        print(nombre + ", mucho gusto")
    }

    func Caminar(pasos:Int){
        self.pasos = pasos
        print("Has caminado ", pasos, " pasos")
    }
    
}

var Yerik = Persona(nombre:"Yerik", pasos:5)
Yerik.Saludar(nombre: "Profesor")
Yerik.Caminar(pasos: 5)
//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla{
    var alto:Int
    var ancho:Int

    init(alto:Int, ancho:Int){
    self.alto = alto
    self.ancho = ancho
    }

    func DatosActuales() -> (Int, Int){
        return (self.alto, self.ancho)
    }
}

var Screen = Pantalla(alto:1920, ancho:1080)
Screen.DatosActuales()

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int{
    var horas:Int{
         return self * 24 * 60
    }

    func segundos() -> Int{
        return self * 24 * 60
    }
}
//Ambos metodos convierten las horas a segundos
5.horas
5.segundos()
//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7
extension String{
    var dia:String{
        switch self{
        case "Domingo":
            return("Domingo es el dia 1")
        case "Lunes":
            return("Lunes es el dia 2")
        case "Martes":
            return("Martes es el dia 3")
        case "Miércoles":
            return("Miércoles es el dia 4")
        case "Jueves":
            return("Jueves es el dia 5")
        case "Viernes":
            return("Viernes es el dia 6")
        case "Sábado":
            return("Sábado es el dia 7")
        default:
            return("Hubo un error, favor de verficar el dato ingresado")
        }
    }
}

"Martes".dia

/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/
var existe:Int?
//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]
let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]

existe = dias["DF"]
existe = dias["PUE"]

if let temp = dias["DF"]{
    print("Existe")
} else{
    print("No existe")
}




