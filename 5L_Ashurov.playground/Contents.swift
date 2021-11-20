import UIKit


enum OpenWindows{
    case open
    case close
    case halfOpen
}

enum FullBagage{
    case empty
    case fuul
}

enum SwitchEngine{
    case engineOn
    case engineOff
    case brokenEngine
}
//Создаем протокол Car
protocol Car{
    var nameCar: String{get}
    var yearCar: Int{get}
    var toEngine: SwitchEngine {get set}
    var toBagage: FullBagage {get set}
    var toWindows: OpenWindows{get set}
}
//Расширения к нему
extension Car {
    mutating func toEngineExt(toEngine: SwitchEngine){
        self.toEngine = toEngine
    }
    mutating func toFullBagExt(toBagage: FullBagage){
        self.toBagage = toBagage
    }
    mutating func toWindowExt(toWindows: OpenWindows){
        self.toWindows = toWindows
    }
}
// создаем класс для спорт  и грузовиков
class sportCar: Car{
    var nameCar: String
    var yearCar: Int
    var toWindows: OpenWindows = .halfOpen
    var toBagage: FullBagage = .empty
    var toEngine: SwitchEngine = .brokenEngine
    init(nameCar: String, yearCar: Int) {
        self.nameCar = nameCar
        self.yearCar = yearCar
    }
}

class truckCar: sportCar, CustomStringConvertible{
    var description: String {
    return "Kamaz can to go with \(toWindows) windows"
    }
    var truckWindows: OpenWindows = .close
}


var carKamaz = truckCar(nameCar: "Kamaz", yearCar: 2010)
carKamaz.toFullBagExt(toBagage: .empty)
carKamaz.toWindows = .close
carKamaz.toEngine = .engineOn
print(carKamaz.description)


class sportCarStr: sportCar, CustomStringConvertible{
    var description: String {
    return "Honda cant to go with \(toEngine)"
    }
    var spCarEngine: SwitchEngine = .brokenEngine
}

var carHonda = sportCar(nameCar: "Honda", yearCar: 2015)
carHonda.toEngineExt(toEngine: .brokenEngine)
carHonda.toBagage = .fuul
carHonda.toWindows = .open
//здесь не работает DESCRIPTION, так и не понял в чем проблема
//print(carHonda.description)


