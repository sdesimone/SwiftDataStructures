//
//  SDSIterators.swift
//  SwiftDataStructures
//
//  Created by sergio on 19/01/15.
//  Copyright (c) 2015 Freescapes Labs. All rights reserved.
//

import Foundation

public protocol SDSIterable {

    typealias T
    func next(reset : Bool) -> T?
}

public protocol SDSReverseIterable {

    typealias T
    func prev(reset : Bool) -> T?
}
