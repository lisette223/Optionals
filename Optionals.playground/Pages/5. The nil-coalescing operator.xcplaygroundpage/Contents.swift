//: [Previous](@previous)

import Foundation

/*: ## The Nil-Coalescing Operator
 
 
 The nil-coalescing operator gives us another way to handle optional values by allowing us to provide a default value if the optional is nil. nil-coalescing uses the syntax optionalVal ?? defaultValue where optionalVal is some optional and defaultValue is the same type as the optional’s underlying type. If optionalVal is non-nil, this expression evaluates to optionalVal!.
 */

 var userLocation: String? = "Home"
 let displayedLocation = userLocation ?? "Unknown"
 print(displayedLocation) // Prints "Home"
 
/*If optionalVal is nil, this expression instead evaluates to defaultValue*/

 var secondUserLocation: String?
 let secondDisplayedLocation = secondUserLocation ?? "Unknown"
 print(secondDisplayedLocation) // Prints "Unknown"


/* The nil-coalescing operator is great for giving a quick default value to an optional!
 */

/*: ### Problem #5
 
 1. Declare a variable named favoriteFood of type String? with an initial value of nil.
 2. Print favoriteFood to the console. Notice the warnings that appear. Do you see a suggestion in the warnings that uses ???
3. Inside the print statement, use the nil-coalescing operator to give a default value of “No Favorite Food”.
 */




//: [Next](@next)
