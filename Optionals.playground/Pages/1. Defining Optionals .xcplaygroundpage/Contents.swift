import UIKit

/*:
 ## Optionals
 
 Optional types either contain a value or nil. An optional type is defined with a question mark:
 */

var letter: Character?


/*:
 Optionals can be assigned to either nil or an instance of the optional type. Its initial value will be nil unless you assign a value yourself:

 */

var fLetter: Character?
print(fLetter) // prints nil
fLetter = "a"
print(fLetter) // prints Optional("a")

/*
 Only optional types can be assigned to nil. If you attempt to assign a non-optional type to nil, you will get a compile-time error.

 */

var firstLetter: Character = "a"
//firstLetter = nil // ERROR: nil' cannot be assigned to type 'Character'

/*: ### Problem #1
1. Create a variable called hatColor of type optional String with an initial value of nil.
 2. Reassign hatColor to “blue”.
3. Reassign hatColor to nil.
4. Print the value of hatColor. The console should display some warnings letting us know that there’s more we can do to work with optionals!
*/


//: [Next](@next)
