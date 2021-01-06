// SwiftUtils.
// Huge amounts of Swift functions.
//
// Copyright (C) 2020-2021, Ty Gillespie. All rights reserved.
// MIT License.

import Foundation

// Queue a function to run the given time after this function is called.
func queueFunc(_ ms: Int, toRun: @escaping() -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + Double(ms / 1000)) {
        toRun()
    }
}

// Generate a random integer in the given range.
func randInt(_ min: Int, _ max: Int) -> Int {
    // Todo: add the ability to say if max should be inclusive.
    return Int.random(in: min...max)
}

// Returns the number squared.
func getSquare(number: Int) -> Int {
    return number * number
}
