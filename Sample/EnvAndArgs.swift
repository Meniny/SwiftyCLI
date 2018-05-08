#!/usr/bin/env xcrun swift -F ./Rome/ -framework SwiftyCLI

import SwiftyCLI

// print(Env.get("PWD")!)
print("All Environment Variables")
print(Env.keys.joined(separator("\n"))

print("\nPrinting value of PWD")
print(Env.get("PWD"))

print("\nPrint all Arguments")
print(Args.all)

print("\nPrint parsed Arguments")
print(Args.parsed.flags["target"])
print(Args.parsed.flags["framework"])
print(Args.parsed.parameters)
