//
//  REPL.swift
//  REPL
//
//  Created by Yusuke Kita on 11/15/18.
//

import Syntax
import AST

public struct REPL {
    
    let environment: Environment
    
    public init() {
        environment = Environment()
    }
    
    public func start(with input: String) {
        let lexer = Lexer(input: input)
        let parser = Parser(lexer: lexer)
        do {
            let program = try parser.parse()

            let evaluator = Evaluator()
            let object = try evaluator.evaluate(node: program, with: environment)
            print(object.description)
        } catch let error as Error & CustomStringConvertible {
            print(error.description)
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
