import UIKit
//Решение задач первым способом на примере легковыз спроткаров. Здесь я не конца понял как выводить (и можно ли выводить) значения в консоль
struct SportCar {
    enum marka {
        case opel(opelValue: carValue)
        case bmw(bmwValue: carValue)
        case nissan(nisssanValue: carValue)
        case lada(ladaValue: carValue)
        enum carValue {
            case year(year: Int, howy: String)
            case bagageValue(bValueValue: Int, valueB: String)
            case openWindow(openWValue: Bool, opString: String)
            case startEngine(sEngineValue: Bool, sEstring: String)
            case fillBagage(fillBValue: Bool, fillValue: String)
        }
    }
}

var markaBmw = SportCar.marka.bmw(bmwValue: .year(year: 1999, howy: "года"))
markaBmw.self = .bmw(bmwValue: .startEngine(sEngineValue: true, sEstring: "engine true"))
markaBmw.self = .bmw(bmwValue: .openWindow(openWValue: true, opString: "windows open"))
markaBmw.self = .bmw(bmwValue: .fillBagage(fillBValue: true, fillValue: "bagageFill"))
markaBmw.self = .bmw(bmwValue: .bagageValue(bValueValue: 150, valueB: "Litr"))


var markaOpel = SportCar.marka.opel(opelValue: .year(year: 2012, howy: "Года"))
markaOpel.self = .opel(opelValue: .startEngine(sEngineValue: false, sEstring: "Engine not start"))
markaOpel.self = .opel(opelValue: .openWindow(openWValue: false, opString: "Windows Close"))
markaOpel.self = .opel(opelValue: .fillBagage(fillBValue: false, fillValue: "Bagage empty"))
markaOpel.self = .opel(opelValue: .bagageValue(bValueValue: 390, valueB: "Litr"))

//решение задач на примере грузовиков простым перечислением (можно решить и первое таким способом, но я хотел узнать можно ли другим способом)

enum markaTruck {
    case Volvo (volvo: String)
    case Renault (renault: String)
    case Mercedes (mercedes: String)
}
enum OpenWindows {
    case open
    case close
}
enum StartEngine {
    case start
    case stopped
}
enum FillBagage {
    case full
    case empty
}
struct TrunkCarStructure {
    var markaTruck: markaTruck
    var year: Int
    var bagVal: Int
    var openWind: OpenWindows
    var startEnVal: StartEngine
    var fillBVal: FillBagage
 
}

var truckcar = TrunkCarStructure(markaTruck: .Mercedes (mercedes: "Benz 211"), year: 1995, bagVal: 500, openWind: .open, startEnVal: .start, fillBVal: .empty)
truckcar.bagVal
truckcar.markaTruck
truckcar.fillBVal
truckcar.openWind
truckcar.startEnVal
truckcar.year
print("Name of auto is \(truckcar.markaTruck), made in \(truckcar.year) year, now engine of auto \(truckcar.startEnVal) and \(truckcar.openWind) all windows, but auto have \(truckcar.fillBVal) bagage which is \(truckcar.bagVal) liters ")


