import UIKit

var str = "Hello, playground"
// less6
struct InStack {
    var items = [Int]()
    
    mutating func push (_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}


//generic



struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() ->Element{
        return items.removeLast()
    }
}

var stackOfstr = Stack<String>()
stackOfstr.push("one")
stackOfstr.push("two")
print(stackOfstr.items)

var stackOfInt = Stack<Int>()


//
func findIndexStr(ofString valueToFind: String, in array: [String]) ->Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let stringArray = ["cat","dog","giraf"]
if let foundIndex = findIndexStr(ofString: "cat", in: stringArray){
    print("Index \(foundIndex)")
}




var named = ["sam","sawyer","jack","john","walter"]
var reverseName = named.sorted() {$0 > $1} //сортировка реверсивного алфавита
print(reverseName)
