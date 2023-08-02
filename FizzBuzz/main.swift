//
//  main.swift
//  FizzBuzz
//
//  Created by Axel Cerkvenih on 02/08/2023.
//

import Foundation

var option = 0


while(option != 99){
    print("Enter a number (x) : ", terminator: " ")
    if let input = readLine(){
        if let number = Int(input){
            option = number
            print("Result : \(fizzBuzz(item: number))")
        }
        
    }
}

func fizzBuzz(item : Int) -> String {
    let numero = item
    var result : String
    
    if numero.isMultiple(of: 3) && numero.isMultiple(of: 5){
         result = "FizzBuzz"
    }
    else if numero.isMultiple(of: 3){
        result = "Fizz"
    }
    else if numero.isMultiple(of: 5){
        result = "Buzz"
    }
    
    else{
        result = String(numero)
    }
    
    return result
}
