//
//  SDSDoubleLinkedListTests.swift
//  SwiftDataStructures
//
//  Created by sergio on 18/01/15.
//  Copyright (c) 2015 Freescapes Labs. All rights reserved.
//

import Foundation
import XCTest
import SwiftDataStructures

class SDSDoubleLinkedListTests : XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit() {

        let doubleLinkedList = SDSDoubleLinkedList<String>()
        XCTAssert(true, "Pass")
    }
    
    func testInitWithArray() {
        
        let doubleLinkedList = SDSDoubleLinkedList<String>(array:["a","b","c"])
        XCTAssert(doubleLinkedList.count() == 3, "Pass")
        
        let array = doubleLinkedList.allObjects()
        XCTAssert(array == ["a","b","c"], "Pass")
    }
    
    func testAppend() {
        
        let doubleLinkedList = SDSDoubleLinkedList<String>(array:["a","b","c"])
        doubleLinkedList.append("d")
        doubleLinkedList.append("e")
        doubleLinkedList.prepend(["1","2","3"])
        doubleLinkedList.append("f")
        XCTAssert(doubleLinkedList.count() == 9, "Pass")
        XCTAssert(doubleLinkedList.first() == "3", "Pass")
        XCTAssert(doubleLinkedList.last() == "f", "Pass")

        let array = doubleLinkedList.allObjects()
        XCTAssert(array == ["3","2","1","a","b","c","d","e","f"], "Pass")
    }
    
    func testPrepend() {
        
        let doubleLinkedList = SDSDoubleLinkedList<String>(array:["a","b","c"])
        doubleLinkedList.prepend("d")
        doubleLinkedList.append(["1","2","3"])
        doubleLinkedList.prepend("e")
        doubleLinkedList.prepend("f")
        XCTAssert(doubleLinkedList.count() == 9, "Pass")
        XCTAssert(doubleLinkedList.first() == "f", "Pass")
        XCTAssert(doubleLinkedList.last() == "3", "Pass")

        let array = doubleLinkedList.allObjects()
        XCTAssert(array == ["f","e","d","a","b","c","1","2","3"], "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testApply() {
     
        let doubleLinkedList = SDSDoubleLinkedList<String>(array:["a","b","c"])
        doubleLinkedList.apply( { (s : String) in
            println("iterating \(s)")
        })
    }
    
    func testContainsObject() {
        
        let doubleLinkedList = SDSDoubleLinkedList<String>(array:["a","b","c"])
        XCTAssert(containsObject("a", doubleLinkedList) == true, "Pass")
        XCTAssert(containsObject("d", doubleLinkedList) == false, "Pass")
    }
    
}
