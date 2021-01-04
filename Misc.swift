// Random functions that don't need their own module.

import Foundation

// Queue a function to run the given time after this function is called.
func queueFunc(_ ms: Int, toRun: @escaping() -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + Double(ms / 1000)) {
        toRun()
    }
}

// Generate a random integer in the given range.
func randInt(min: Int, max: Int) {
    return Int.random(in: min...max)
}
