//
//  SDSDoubleLinkedList.swift
//  SwiftDataStructures
//
//  Created by sergio on 17/01/15.
//  Copyright (c) 2015 Freescapes Labs. All rights reserved.
//

import Foundation

class SDSDoubleLinkedListNode<T> {
    
    let object : T?
    var next_ : SDSDoubleLinkedListNode?
    var prev_ : SDSDoubleLinkedListNode?
    
    init(object:T, next:SDSDoubleLinkedListNode?) {
        
        self.object = object
        next_ = next
        prev_ = next?.prev_
        
        next_?.prev_ = self
        prev_?.next_ = self
    }

    init(object:T, prev:SDSDoubleLinkedListNode?) {
        
        self.object = object
        next_ = prev?.next_
        prev_ = prev
        
        next_?.prev_ = self
        prev_?.next_ = self
    }
    
    init() {
        object = .None
        next_ = .None
        prev_ = .None
    }
}

public class SDSDoubleLinkedList<T> : SDSLinkedList {
    
    private var head_ : SDSDoubleLinkedListNode<T>?
    private var tail_ : SDSDoubleLinkedListNode<T>?
    private var count_ = 0
    
    public init() {

//        self.head.next = self.tail
//        self.tail.prev = self.head
    }
    
    public convenience init(array : [T]?) {
    
        self.init()
        if let array = array as [T]! {
            for anObject in array {
                self.append(anObject)
            }
        }
    }
    
    public func allObjects() -> [T] {
        
        var array = [T]()
        var cursor : SDSDoubleLinkedListNode? = head_
        do {
            if let object = cursor?.object as T? {
                array.append(object)
            }
            cursor = cursor?.next_
        } while (cursor != nil)
        return array
    }

    public func append(anObject : T) {
        
        tail_ = SDSDoubleLinkedListNode(object:anObject, prev:tail_)
        if (head_ == nil) {
            head_ = tail_
        }
        count_++;
    }
    
    public func append(array : [T]) {
        for anObject in array {
            self.append(anObject)
        }
    }
    
    public func prepend(anObject : T) {
        
        head_ = SDSDoubleLinkedListNode(object:anObject, next:head_)
        if (tail_ == nil) {
            tail_ = head_
        }
        count_++;
    }
    
    public func prepend(array : [T]) {
        for anObject in array {
            self.prepend(anObject)
        }
    }
    
    public func count() -> Int {
        return count_
    }
    
    public func first() -> T? {
        return head_?.object
    }
    
    public func last() -> T? {
        return tail_?.object
    }

    public func apply(block : T? -> (), until: T? -> Bool) {
        
        var current = head_
        let flag = until(current!.object)
        while (current != nil && flag) {
            block(current!.object!)
            current = current?.next_
        }
    }
    
    public func apply(block : ((T) -> ())) {
        
        var current = head_
        while (current != nil) {
            block(current!.object!)
            current = current?.next_
        }
    }
    
//    func containsObjectIdenticalTo(anObject : T) -> Bool
//    func indexOfObject(anObject : T) -> Int
//    func indexOfObjectIdenticalTo(anObject : T) -> Int
//    func isEqualToLinkedList(list : SDSLinkedList) -> Bool
//    func objectAtIndex(index : Int) -> T
//    func objectAtIndexes(indexes : NSIndexSet) -> Array<T>
//    
//    func exchangeObjectsAtIndex(index1 : Int, withObjectAtIndex index2 : Int)
//    func insertObject(anObject : T, atIndex index : Int)
//    func insertObjects(objects : Array<T>, atIndexes indexes : Array<Int>)
//    func removeObject(anObject : T) -> T
//    func removeObjectAtIndex(index : Int) -> T
//    func removeObjectIdenticalTo(anObject : T) -> T
//    func removeObjectsAtIndexes(indexes : Array<Int>) -> Array<T>
//    func removeAllObjects()
//    func replaceObjectAtIndex(index : Int, withObject anObject : T)
//

}

// MARK: class functions

public func containsObject<T:Equatable>(anObject : T, aList : SDSDoubleLinkedList<T>) -> Bool {
    
    var found = false
    aList.apply(
        { (t : T?) -> () in
            
            if let t = t as T! {
                if (t == anObject) {
                    found = true
                }
            }
        },
        until: { (t : T?) -> Bool in
            
            if let t = t as T! {
                if (t == anObject) {
                    return true
                }
            }
            return false
    })
    return found
}
