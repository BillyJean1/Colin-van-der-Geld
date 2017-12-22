//
//  UnitTestsTests.swift
//  UnitTestsTests
//
//  Created by Colin van der Geld on 18-12-17.
//  Copyright © 2017 Colin van der Geld. All rights reserved.
//

import XCTest
@testable import UnitTests

class UnitTestsTests: XCTestCase {
    var calculateClass: Calculate!
    
    override func setUp() {
        super.setUp()
        
        calculateClass = Calculate()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        calculateClass = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddition() {
        let value = calculateClass.add(numberOne: 1, numberTwo: 2)
        XCTAssert(value == 3)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testMultiply() {
        let value = calculateClass.multiply(numberOne: 4, numberTwo: 2)
        XCTAssert(value == 8)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testSquare() {
        let value = calculateClass.square(number: 4)
        XCTAssert(value == 16)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
