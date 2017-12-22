//
//  calculate.swift
//  UnitTests
//
//  Created by Colin van der Geld on 18-12-17.
//  Copyright © 2017 Colin van der Geld. All rights reserved.
//

import UIKit

class Calculate: NSObject {
    
    func multiply(numberOne:Int, numberTwo:Int) -> Int {
        return numberOne * numberTwo
    }
    
    func square(number:Int) -> Int{
        return number * number
    }

    func add(numberOne:Int, numberTwo:Int) -> Int {
        return numberOne + numberTwo
    }
    
}
