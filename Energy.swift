//
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-11-19
//  Version 1.0
//  Copyright (c) 2021 MTHS. All rights reserved.
//
//  The Hello World! program implements an application that
//  simply displays "Hello World!" to the standard output.

// Variables.
// Speed of light squared.
let SOLS = Double(299792458 * 299792458)

do {
    // Inputs.
    print("Please enter mass in kg: ")
    var mass = readLine()

    // Calculations.
    try Double(mass!)
    /* let energy = massDouble * SOLS

    // Outputs.
    print("If the mass is ", String(mass!),
    "kg then the energy is ", String(energy))
    */
} catch let localError {
    print(localError)
    print("\nDone.")
}
