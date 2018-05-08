//
//  PromptSettings.swift
//  PromptSettings
//
//  Created by Elias Abel on 02/11/2015.
//  Copyright © 2015 Elias Abel. All rights reserved.
//


class PromptSettings {

    static var reader: PromptReader = ConsolePromptReader()
    static var printer: PromptPrinter = ConsolePromptPrinter()

    class func read() -> String? {
        return reader.read()
    }

    class func print(_ string: String, terminator: String = "\n") {
        return printer.printString(string, terminator: terminator)
    }
}
