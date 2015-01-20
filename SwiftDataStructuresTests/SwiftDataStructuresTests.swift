//
//  SwiftDataStructuresTests.swift
//  SwiftDataStructuresTests
//
//  Created by sergio on 17/01/15.
//  Copyright (c) 2015 Freescapes Labs. All rights reserved.
//

import Cocoa
import XCTest
import SwiftDataStructures

class SwiftDataStructuresTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        FSDSSingleLinkedList<String>.cons("sergio", tail : FSDSSingleLinkedList<String>.Nil())
        
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
