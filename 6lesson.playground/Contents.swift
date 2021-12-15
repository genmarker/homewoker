import UIKit

var isControl = true

func selfDrive(){
    if isControl{
        print("good")
    }else{
        print("bad")
    }
}


enum TeslaError: Error {
    case lostGPS
    case lowBattery
}

var lostGPS = true
var lowBattery = true

func autoDriveTeslaError() throws {
    if lostGPS {
        throw TeslaError.lostGPS
    }
    if lowBattery {
        throw TeslaError.lowBattery
    }
}

do {
    try autoDriveTeslaError()
}catch TeslaError.lostGPS {
    print("we lost")
}catch TeslaError.lowBattery{
    print("battery death")
}
// отладка оштбок списком

enum jsondownload: Error {
    case moreSizeFile
    case serverError(error: Int)
    case noNameFile
}

struct File {
    var image: String
    var size: Int
}

class downJSON {
    var fileDownload = [
        "dog.jpeg" : File(image: "dog", size: 12),
        "cat.jpeg" : File(image: "cat", size: 28)]
}

var sizeDownload = 10
var errorValue = 200

/*func downloadItem(itemName name: String, error: Int) throws {
    guard let file = fileDownload[name] else {
        throw jsondownload.noNameFile
    }
    guard file.size < sizeDownload else {
        throw jsondownload.moreSizeFile
    }
    guard error == 200 else {
        throw jsondownload.serverError(error: errorValue)
    }
    print("Donload \(file.image) value \(file.size)")
}*/

var array: [String] = ["🙈" , "🐸", "🐭", "🦊", "🐽"] // cntrl + win + space

print(array.map{_ in "🐭"})
print(array.filter{i in i == "🙈"})
print(array.contains{i in i == "🐸"})
//array.reverse()
print(array)
print(array.prefix(3))
print(array.suffix(3))











