//
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-11-19
//  Version 1.0
//  Copyright (c) 2021 MTHS. All rights reserved.
//
//  The Hello World! program implements an application that
//  simply displays "Hello World!" to the standard output.

// Variables.
let speedOfLightSquared = Double(299792458 * 299792458)

// Inputs.
print("Please enter mass in kg: ")
var mass = readLine()

// Making an error case.
enum MyError: Error {
    case invalidInteger(String)
}

func calculateEnergy() throws {

    if let massDouble = Double(mass!) {

        // Calculations.
        let energy = massDouble * speedOfLightSquared

        // Outputs.
        print("If the mass is ", String(mass!),
            "kg then the energy is ", String(energy))
        print("\nDone.")

     } else {

        /* This throws the an error out of the called function
        and activates the catch statement.
        */

        throw MyError.invalidInteger("Error")
     }
}

do {
    // Calls the function to be tested fro errors.
    try calculateEnergy()
} catch {
    print("That was an invalid integer")
    print("\nDone.")
}
