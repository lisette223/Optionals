//: [Previous](@previous)

import Foundation

/* ## Optionals and Functions

 Because optionals are types just like Arrays and Strings are, we can use them in the signature of a function. Optionals are useful because when writing some functions, you might not have a good value to return.
*/
//func firstOddNumber(in arr: [Int]) -> Int {
//    for value in arr {
//        if !value.isMultiple(of: 2) {
//            return value
//        }
//    }
// //   return
//    //  Need to return something!
//}

// Error: Missing return in a function expected to return 'Int'

/*
What number should firstOddNumber(in:) return if we pass in [2,4,6]? In many languages, functions return -1 if they don’t have a good answer to the question. But here, that would be pretty confusing because in the array [2, 8,-1, 5], -1 is the first odd number!

Fortunately, optionals give us a good solution to this problem. By returning an optional integer, we can make it clear that there was no good answer to the question:
*/
func firstOddNumber(in arr: [Int]) -> Int? {
    for value in arr {
        if !value.isMultiple(of: 2) {
            return value
        }
    }
    return nil
}
/* As you write more functions, you’ll see lots of places where optionals can be used!
*/


/*: ## Problem #8
 1. Define a function firstIndex(of:in) that takes in a String named “target” with an argument label “of’, and an array of optional strings named “arr” with an argument label “in”. The function should return an optional Int. Don’t worry if the code doesn’t compile at this point yet.
 2. This function should iterate over arr and return the first index the target string appears. If the target string is not in arr, the function should return nil. For example: */
let optionalLetters: [String?] = ["a", "b", nil, "c"]
 //firstIndex(of: "b", in: optionalLetters) // Should return 1
 //firstIndex(of: "d", in: optionalLetters) // Should return nil
 
/* In the body of the function:
Iterate over the indices in arr and unwrap each value
If the value is equal to the target, return the current index
After the for loop, return nil, because the target was not found in arr

3. Use an if let statement to bind firstIndex(of: "great", in: words) to a constant greatIndex, then print the value of greatIndex.

 4. Use an if let statement to bind firstIndex(of: "bad", in: words) to a constant badIndex, then print the value of badIndex. Add an else statement to the if let that prints “words does not contain the string ‘bad’”.

 */

let words = ["optionals", nil, "are", "great", nil, "at", "handling", nil, "values"]
func firstIndex(of target: String, in arr: [String?]) -> Int? {
    for i in arr.indices {
    // add code
    }
    
    // add code
    
}

//: [Next](@next)
