import UIKit

// Протокол
/*
protocol SomeProtokol {
    // реализация\
    
}

struct SomeStruct: SomeProtokol, FirstProtokil, AnotherProtokol {
    
}

class SomeClass: SomeSuperClass, SomeProtokol{
    
}
*/

    protocol SomeProt { //let использовать нельзя
        var mustBeSttable: Int {get set}
        var doesNotBeSettable: Int {get}
        
        
    }

protocol FullyName {
    var fullName: String {get}
    
}

struct person: FullyName {
    var fullName: String
}

let john = person(fullName: "Джон")

class starShip: FullyName {
    var pre: String?
    var name: String
    
    init(name: String, pre: String? = nil) {
        self.name = name
        self.pre = pre
    }
    var fullName: String{
        return (pre != nil ? pre! + " " : "") + name
    }
}
 

var ncc1701 = starShip(name: "Enterprice", pre: "USS")
print(ncc1701.fullName)
//

struct Point {
    let x: Int
    let y: Int
    
    var Description: String {
        return "(\(x), \(y))"
    }
}

let p = Point(x: 10, y: 452)
print(p)












struct human {
    var name: String
}


struct animal {
    var name: String
}

func printOut (human: human) {
    human.name
}

func printOutAnimal (animal: animal){
    animal.name
}


protocol Printable {
    var name: String {get}
}
struct HumanP {
    var name: String
}

struct AnimalP {
    var name: String
    
}

func printOutP (object: Printable) {
    print(object.name)
}

var a = AnimalP(name: "tigr")
var q = HumanP(name: "not Tigr")
//printOutP(object: a)
//printOutP(object: q)











