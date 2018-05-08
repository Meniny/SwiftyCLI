//
//  PromptReader.swift
//  PromptReader
//
//  Created by Elias Abel on 31/10/2015.
//  Copyright © 2015 Elias Abel. All rights reserved.
//


protocol PromptReader {
    func read() -> String?
}

class ConsolePromptReader: PromptReader {

    func read() -> String? {
        return readLine()
    }
}

class DummyPromptReader: PromptReader {

    var parametersToReturn: [String]

    init(toReturn: String...) {
        self.parametersToReturn = toReturn
    }

    func read() -> String? {
        return parametersToReturn.removeFirst()
    }
}
