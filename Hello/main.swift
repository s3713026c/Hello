//
//  main.swift
//  Hello
//
//  Created by Cuong, Truong Phu on 10/28/20.
//

//import Foundation
//
//print("Hello, World!")
//print("Good day","David!")
//
//var Welcome = "Hello"
//Welcome.insert("!", at: Welcome.endIndex)
//print(Welcome)
//
//
//let str = "Hello world!"
//let reversed = String(str.reversed())
//print(reversed)
//
//print("xxxxxxxxxx")
//
//
//
//
//func question1(){
//    let mileToKm = 1.609
//        print("Miles\tKilometers")
//        for i in 1...10 {
//            print(String(format: "%3d", i),String(format: "%10.3f", Double(i) * mileToKm))
//    }
//}
//
//print(question1())
//
//func question2(){
//    print("Enter string:", terminator:"")
//    let inputString = readLine() ?? "invalid"
//    let reversed = String(inputString.reversed())
//    print(reversed)
//}
//
//print(question2())
//
//func question3() {
//
//
//    print("Enter a string for socks:", terminator :"")
//    guard let socks = readLine() else { return }
//    print("Number of Sock Pairs is", sockPairs(socks : socks))
//}
//
//func sockPairs(socks:String) -> Int {
//    var sockPairsCount = 0
//    var sockDict: [ Character:Int8] = [:]
//
//    for sockIndex in socks.indices{
//        sockDict[socks[sockIndex]] = (sockDict[socks[sockIndex]] ?? 0) + 1
//    }
//
//    for count in sockDict.values{
//        sockPairsCount += Int(count / 2 )
//    }
//
//    return sockPairsCount
//
//
//
//}
//
//print(question3())

print("XXXXXXXXX")

//var someValue: Int? //Int? is read as Optional Int
//
//if someValue != nil {
//    print(someValue)
//}else{
//    print("no Value")
//
//}


var multiplyClosure:(Int, Int) -> Int

multiplyClosure = { (num1, num2) in
    return num1 * num2
    
}
print(multiplyClosure(5, 2))


print("XXXXXXXXX")
enum Direction {
    case north, south, east, west
    
}
var dir = Direction.west



dir = .east
print("\(dir)")


print("XXXXXXXX")
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
var char = ASCIIControlCharacter.tab.rawValue


print("XNXX")


struct Point {
    var x = 0.0, y = 0.0
    
}
struct Size {
    var width = 0.0, height = 0.0
    
}

struct Rect {
    var origin = Point()
    var size = Size()

var center: Point {
    get {
        let centerX = origin.x + (size.width / 2)
        let centerY = origin.y + (size.height / 2)
        return Point(x: centerX, y: centerY)
        
    }
    set(newCenter) {
        origin.x = newCenter.x - (size.width / 2)
        origin.y = newCenter.y - (size.height / 2)
        
         
    }
    
}
    
} // end of struct Rect

var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.originis now at (\(square.origin.x), \(square.origin.y))")



print("--Quest1--")
var squareInt = { (num: Int) -> Int in
    return num * num
}

print(squareInt(5))

print("--Quest2--")


func quest2(num: Int, closure: (Int)-> Int = {return squareInt($0)}) -> Int    {
    return closure(num)
}

print(quest2(num: 10))



