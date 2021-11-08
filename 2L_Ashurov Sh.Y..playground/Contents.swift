import UIKit

// 1
print("Задание 1")
var narr = (1...15).map({_ in Int.random(in: 1...100)})
// из последовательности чисел от 1 до 100 получаем от 1 до 15 рандомных чисел (у меня попадаются повторы, пока не знаю как исключить их)
print("Из случайного массива", narr, "получаем следующие нечетные числа:")
//для переменной nodd ищем числа которые не делятся нацело на 2 и выводим
for nodd in narr{
    if nodd % 2 != 0 {
        print("\(nodd) - нечет")
    }
}
// 2
print("Задание 2")
print("Из вышеперечисленного массива \(narr) находим числа, которые делятся на 3 без остатка")
for nod3 in narr{
    if nod3 % 3 == 0 {
        print(nod3, "- делится без остатка")
    }
}
// 3
print("Задание 3")
print("Создаём возрасатющий массив от 1 до 100")
var n: Array<Int> = []
for i in 1...100{
    n.append(i)
}
print(n)
// 4
print("Задание 4")
print("Из массива выше, исключая четные и числа которые не делятся на 3 без остатка, получаем:")
for rmvtree in n{
    if rmvtree % 3 == 0 && rmvtree % 2 != 0 || rmvtree == 1{
        print(rmvtree, "- нечетный и/или нацело делится на 3")
    }
}
// 5
print("Задание 5")
print("50 последовательных чисел фибоначи:")
func fbncar (_ c: Int) -> [Double] {
    var fbnc: [Double] = [1, 1]
    (2...c).forEach{ i in
        fbnc.append(fbnc[i - 1] + fbnc[i - 2])
    }
    return fbnc
}
print(fbncar(50))

//print("ИЛИ альтернатива") альтернатива не получилась
// 5 и 6а- долго решал, Остальное решу позже, не хватает времени, да и немного не понял если честно, да и после работы плохо получается задачи решать :)
 print("Задание 6а")
print("Выписать подряд все целые числа")
func nn (ii: [Int]) -> [Int]{
    var newn: [Int] = []
    var newi = ii
    while let newr = newi.first {
        newn.append(newr)
        newi = newi.filter{$0 % newr != 0}
    }
    return newn
}
print(nn(ii: Array(2...100)))




