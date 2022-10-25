//: [Previous](@previous)

import Foundation
/*:  ## Optional Chaining
It’s common in Swift to chain properties and method calls on a variable:
*/
let instrument = "piano"
let firstUppercasedCharacter = instrument.uppercased().first
print(firstUppercasedCharacter) // prints “p”


/*But what if the variable is an optional? We can use the ! operator to force unwrap the optional: */

let instrument2: String? = "piano"
let firstUppercasedCharacter2 = instrument2!.uppercased().first
print(firstUppercasedCharacter2) // prints p

/*But this will crash if the optional is nil: */

let instrument3: String? = nil
let firstUppercasedCharacter3 = instrument3!.uppercased().first // Fatal error: Unexpectedly found nil while unwrapping an Optional value
print(firstUppercasedCharacter3)

/* Fortunately Swift gives us a way to safely chain different calls on an optional using optional chaining. By replacing the ! operator with the ? operator, our code can no longer crash. If the optional is nil, then the entire expression will evaluate to nil.
*/

let instrument4: String? = nil
let firstUppercasedCharacter4 = instrument4?.uppercased().first
print(firstUppercasedCharacter4) // Prints nil

/* If the optional is not nil, then it will be unwrapped and have the subsequent properties and methods called on it. Note that because the entire expression can be nil, it now evaluates to an optional as well:
*/
let instrument5: String? = "piano"
let firstUppercasedCharacter5 = instrument5?.uppercased().first
print(firstUppercasedCharacter5) //Prints “Optional(“P”)"


/*
 1. Use an if let statement and optional chaining to print the length of the president’s name in the form “The president’s name is presidentNameLength characters long”
 
2.  Use an if let statement and optional chaining to print the length of the vice president’s name in the form “The vice president’s name is vicePresidentNameLength characters long”. The key for the vice president would be “vicePresident” in the studentGovernment dictionary.

 3.  Add an else statement to the if let statement that binds the vice president’s name’s length. In the body of the else statement, print “There is no vice president”
 */

var studentGovernment = [
    "president": "Shristi",
    "treasurer": "Diego"
]

// Write your code below 🏛️

//: [Next](@next)
