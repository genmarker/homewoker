import UIKit

enum Speed {
    case speedOff
    case speedOn
}

enum fullBag {
    case isEmpty
    case isFull
}

class sportCar {
    var marka: String
    var release: Int
    init (marka: String, release: Int){
        self.marka = marka
        self.release = release
    }
}

class trunkCar: sportCar{
    var trunk: fullBag
    init(marka: String, release: Int, trunk: fullBag) {
        self.trunk = trunk
            super.init(marka: marka, release: release)
    }
    func trunkState(){
        if trunk == .isEmpty {
            print("бак пустой")
        }else {
            print("бак полный")
        }
    }
}

class speedCar: sportCar {
    var Faster: Speed
    init(marka: String, release: Int, Faster: Speed){
        self.Faster = Faster
        super.init(marka: marka, release: release)
    }
    func SpeedTest(){
        if Faster == .speedOn {
            print("Спорткар бысстрее буханки")
        }else{
            print("Спорткар медленнее буханки")
        }
    }
}

var Buhanka = trunkCar(marka: "BUHANKA", release: 1985, trunk: .isEmpty)
var lada = speedCar(marka: "LADA", release: 2001, Faster: .speedOn)
//print on console
print("When trunk car \(Buhanka.marka) have \(Buhanka.trunk) bac, then super speed car \(lada.marka) initializate \(lada.Faster) mode")




