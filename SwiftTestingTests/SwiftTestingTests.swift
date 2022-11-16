//
//  SwiftTestingTests.swift
//  SwiftTestingTests
//
//  Created by Fatih Filizol on 16.11.2022.
//

import XCTest
@testable import SwiftTesting

final class SwiftTestingTests: XCTestCase {

    let math = MatematicFunctions()
    
    func testAddIntegerFunction(){
        
        let result = math.addIntegers(x: 8, y: 4)
        
        XCTAssertEqual(result, 12)
        
    }
    
    func testMultiplyIntegerFunction(){
        
        let result = math.multiplyIntegers(x: 8, y: 4)
        
        XCTAssertEqual(result, 32)
        
    }
    
    func testDivideIntegerFunction(){
        
        let result = math.divideIntegers(x: 8, y: 4)
        
        XCTAssertEqual(result, 2)
        
    }
    
}
