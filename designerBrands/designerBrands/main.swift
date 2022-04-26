#!/usr/bin/env swift

import Foundation

let inputArgs = CommandLine.arguments.dropFirst()
guard let path = inputArgs.first else {
    fatalError("Missing input")
}

do {
    let contents = try String(contentsOfFile: path, encoding: .utf8)
    let report = ProductParser().parse(document: contents)
    print(report)
}
catch let error as NSError {
    print("Something went wrong: \(error)")
}
