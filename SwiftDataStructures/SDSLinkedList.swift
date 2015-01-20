//
//  SDSLinkedList.swift
//  SwiftDataStructures
//
//  Created by sergio on 17/01/15.
//  Copyright (c) 2015 Freescapes Labs. All rights reserved.
//

import Foundation

public protocol SDSLinkedList {
    typealias T

    func allObjects() -> Array<T>
//    func containsObject(anObject : T) -> Bool
//    func containsObject(satisfying doesSatisfy : T -> Bool) -> Bool
//    func containsObjectIdenticalTo(anObject : T) -> Bool
//    func count() -> Int
//    func firstObject() -> T
//    func lastObject() -> T
//    func indexOfObject(anObject : T) -> Int
//    func indexOfObjectIdenticalTo(anObject : T) -> Int
//    func isEqualToLinkedList(list : SDSLinkedList) -> Bool
//    func objectAtIndex(index : Int) -> T
//    func objectAtIndexes(indexes : NSIndexSet) -> Array<T>
//    
    func append(anObject : T)
    func prepend(anObject : T)
//    func addObjectsFromArray(anArray : Array<T>)
//    func exchangeObjectsAtIndex(index1 : Int, withObjectAtIndex index2 : Int)
//    func insertObject(anObject : T, atIndex index : Int)
//    func insertObjects(objects : Array<T>, atIndexes indexes : Array<Int>)
//    func prependObject(anObject : T)
//    func pop() -> T
//    func shift() -> T
//    func removeObject(anObject : T) -> T
//    func removeObjectAtIndex(index : Int) -> T
//    func removeObjectIdenticalTo(anObject : T) -> T
//    func removeObjectsAtIndexes(indexes : Array<Int>) -> Array<T>
//    func removeAllObjects()
//    func replaceObjectAtIndex(index : Int, withObject anObject : T)
}