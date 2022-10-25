//: [Previous](@previous)

import Foundation

/*: ## Optional Binding

 In the last exercise, we saw that force unwrapping allows us to access the underlying value of an optional, but can crash our program if the value is nil. Wouldn’t it be great if we could access optionals without crashing our code? We can with optional binding! Using optional binding, we can check if a value is not nil in an if statement, then make a new constant that stores the underlying value.

*/

var errorMessage: String? = nil
 
if let nonOptionalErrorMessage = errorMessage {
    print("Error: \(nonOptionalErrorMessage)")
} else {
    print("No error message")
}
/*: If errorMessage is not nil, a new constant nonOptionalErrorMessage of type String is created. Then the error message is printed. If errorMessage is nil, nonOptionalErrorMessage is never declared and the code in the else block is executed.

It’s common practice to use the same name for the new constant as the original optional variable.
*/
var errorMessage2: String? = nil
 
if let errorMessage2 = errorMessage2 {
    print("Error: \(errorMessage2)")
} else {
    print("No error message")
}
/* In the body of the if let statement, errorMessage refers to the newly created constant of type String.

 */
 
/*: ## Problem #3
 
 1. Define a variable firstName and assign it to your first name. Then define a variable lastName assigned to your last name.
 2. Declare a variable suffix of type String? and assign it to a non-nil value like Sr. or III.
 3. Use optional binding to print the message “Hello, firstName lastName nameOfUnwrappedSuffixVariable” if the suffix is non-nil.
4. Above the if let statement, reassign suffix to nil. Notice how nothing is printed now.
 5. Add an else block to the if let statement that prints “Hello, firstName lastName”
 */
//: [Next](@next)
