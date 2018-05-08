//
//  RunResult.swift
//  RunResults
//
//  Created by Elias Abel on 05/11/2015.
//  Copyright © 2015 Elias Abel. All rights reserved.
//

import Foundation


/**
 *  Structure to hold results from run
 */
public struct RunResults {

    /// Command exit status
    public let exitStatus: Int

    /// Command output stdout
    public let stdout: String

    /// Command output stderr
    public let stderr: String
}

// MARK:- Internal

func splitCommandToArgs(_ command: String) -> [String] {
    if command.contains(" ") {
        return command.components(separatedBy: " ")
    }

    return [command]
}

func readPipe(_ pipe: TaskPipe) -> String {
    let data = pipe.read()
    return String.init(data: data, encoding: .utf8) ?? ""
}
