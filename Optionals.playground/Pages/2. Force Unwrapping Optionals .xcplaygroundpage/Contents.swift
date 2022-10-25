//: [Previous](@previous)

import Foundation


/*: ## Force Unwrapping Optionals
 Once you’ve created an optional, you’ll want to be able to access the value inside. However, if you just try to use the optional, you will get a compile-time error:
 */
var a = 4
var b: Int? = 3
// let sum = a + b // ERROR: Value of optional type 'Int?' must be unwrapped to a value of type 'Int'

/*
The easiest way to wrap an optional is using the ! operator. This process is called force unwrapping and will break open the optional and let you use the underlying value:
*/
var c = 4
var d: Int? = 3
let sum = c + d!
print(sum) // Prints 7

/*But be careful! If the underlying value is nil, your program will crash: */
var x = 4
var y: Int? = nil
// let sum = a + b! // Fatal error: Unexpectedly found nil while unwrapping an Optional value
print(sum)

/*Make sure to only use the ! operator if you are absolutely sure that the value isn’t nil.
*/


/*: ### Problem #2
 * Define a variable flightDistance of type Int with a value of 1000, and a variable connectingFlightDistance of type Int? with a value of 2000.
 * Write an if statement that checks if connectingFlightDistance is not nil.
 * In the body of the if statement, define a constant totalFlightDistance assigned to the sum of flightDistance and connectingFlightDistance. Then, print the totalFlightDistance.
 */




//: [Next](@next)
