import UIKit
//   Задание 1: решить квадратное уравноение
print("Задание 1")
print("Дано уравнение ax^2 + bx + c = 0")
var a: Double = 3
var b: Double = 9
var c: Double = 6
//var x11 =
print("где а = 3, b = 9, c = 6")
var D = (b*b) - (4*a*c)
if D==0 {
    print("Дискриминант имеет 1 корень")
} else if D > 0 {
    print("Дискриминант больше нуля и имеет два корня")
    let x1: Double = (-b - 2 * sqrt(D))/(2*a)
    let x2: Double = (-b + 2 * sqrt(D))/(2*a)
    print("x1 =", x1)
    print("x2 =", x2)
}else if D < 0 {
    print("не имеет корней")
}
//    Задание 2: Найти площадь; периметр и  гипотенузу прямоуг. треугольника
print("Залдание 2")
print("Дан прямоугольный треугольник со сторонами x,y,z, где x,y катеты z - гипотенуза")
var x: Double = 10
var y: Double = 15
print("где х = 10 см; у = 15 см. Найти площадь S, периметр Р и гипотенузу z")
var s = x*y/2
var z = Int(sqrt(x*x+y*y))
var p = Int(x+y+Double(z))
print("S = x * y / 2 =", s, "z^2 = x^2 + y^2 =", z, "P = x + y + z =", p)
// Задание 3* пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет
print("Задание 3")
var dep: Double = 250000
print("Пользователь ввел депозит в банк в размере", dep, "руб")
var perc: Double = 10
print("Годовой процент по депозиту составляет", perc, "%")
var someyear: Int = 5
var sum: Double = ((130000*perc*(Double(someyear)*365)/365)/100)+dep
print("Сумарная выплата через", someyear, "лет составит", sum, "рублей, где сумма процентов за", someyear, "лет составляет", sum - dep, "рублей")
//











