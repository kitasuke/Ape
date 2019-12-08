//
//  ObjectKind.swift
//  AST
//
//  Created by Yusuke Kita on 12/04/18.
//

public enum ObjectKind: String {
    case integer
    case boolean
    case string
    case array
    case null
    case `return`
    case function
    case builtin
    case hash
}
