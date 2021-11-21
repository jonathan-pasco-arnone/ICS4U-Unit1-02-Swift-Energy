//
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-11-19
//  Version 1.0
//  Copyright (c) 2021 MTHS. All rights reserved.
//
//  This program calculates energy from mass.

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
    // Calls the function to be tested for errors.
    try calculateEnergy()
} catch {
    print("That was an invalid integer")
    print("\nDone.")
}
