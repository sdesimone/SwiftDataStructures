//
//  FSDSSingleLinkedList.swift
//  SwiftDataStructures
//
//  Created by sergio on 19/01/15.
//  Copyright (c) 2015 Freescapes Labs. All rights reserved.
//

import Foundation

public struct FSDSSingleLinkedList<T> {

    public static func Nil() -> FSDSSingleLinkedList? {
        return .None
    }
    
    public static func cons(head : T, tail : FSDSSingleLinkedList?) -> (T, FSDSSingleLinkedList?) {
        return (head, tail)
    }
    
    public static func push() {
    }
    
    public static func apply() {
        
    }
}