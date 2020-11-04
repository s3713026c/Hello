//
//  main.swift
//  Hello
//
//  Created by Cuong, Truong Phu on 10/28/20.
//

import Foundation

print("Hello, World!")
print("Good day","David!")

var Welcome = "Hello"
Welcome.insert("!", at: Welcome.endIndex)
print(Welcome)


let str = "Hello world!"
let reversed = String(str.reversed())
print(reversed)

print("xxxxxxxxxx")




func question1(){
    let mileToKm = 1.609
        print("Miles\tKilometers")
        for i in 1...10 {
            print(String(format: "%3d", i),String(format: "%10.3f", Double(i) * mileToKm))
    }
}

print(question1())

func question2(){
    print("Enter string:", terminator:"")
    let inputString = readLine() ?? "invalid"
    let reversed = String(inputString.reversed())
    print(reversed)
}

print(question2())

func question3() {
    

    print("Enter a string for socks:", terminator :"")
    guard let socks = readLine() else { return }
    print("Number of Sock Pairs is", sockPairs(socks : socks))
}
    
func sockPairs(socks:String) -> Int {
    var sockPairsCount = 0
    var sockDict: [ Character:Int8] = [:]
    
    for sockIndex in socks.indices{
        sockDict[socks[sockIndex]] = (sockDict[socks[sockIndex]] ?? 0) + 1
    }
    
    for count in sockDict.values{
        sockPairsCount += Int(count / 2 )
    }
    
    return sockPairsCount
    
    
    
}

print(question3())
