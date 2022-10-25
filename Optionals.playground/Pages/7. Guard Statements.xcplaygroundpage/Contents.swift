//: [Previous](@previous)

import Foundation


/* ## Guard Statements
Guard statements give us another way to avoid overly nested code. A guard statement has the following form:
*/
func greetUser(isAuthenticated: Bool) {
    guard isAuthenticated else {
        print("Error: user is not authenticated")
        return
    }
    print("Hello user!")
}
/* One way to read this guard statement is: “Make sure that userAuthenticated is true. If it’s false, print “Error: user is not authenticated” and return. If it’s true, continue executing the rest of the code.”

Unlike if statements, a guard statement must have an else statement. The else statement after a guard has to exit the current scope. Guard statements can be used to exit the scope of loops as well:
*/
var nums = [3,1,0,6]
 
for num in nums {
    guard num != 0 else {
        print("Can't divide by zero!")
        continue
    }
    print("10 / \(num) = \(10 / num)")
}
 
// prints
// 10 / 3 = 3
// 10 / 1 = 10
// Can't divide by zero!
// 10 / 6 = 1
/* Guard statements can also be used to bind optionals just like with if let statements. They also support multiple assignments:
*/
func addOptionals(shouldPrintSum: Bool) {
    let a: Int? = 1
    let b: Int? = 2
    let c: Int? = 3
 
    guard let unwrappedA = a, let unwappedB = b, let unwrappedC = c, shouldPrintSum else {
        return
    }
    print(unwrappedA + unwappedB + unwrappedC)
}

/*: ### Problem #7
 Refactor the code to use a single guard statement. If any of the variables are nil or the Bool is false, return from the function.
 
 */

func runProgram() {
  let language = "Swift"
  let firstRelease: Int? = 2014
  let website: String? = "swift.org"
  let designer: String? = "Chris Lattner"
  let shouldDisplayMessage = true

  // Refactor the code below to use a single guard statement

  if let unwrappedRelease = firstRelease {
      if let unwrappedWebsite = website {
          if let unwrappedDesigner = designer {
              if shouldDisplayMessage {
                  let message =
                      """
                      \(language) was first released in \(unwrappedRelease).
                      Its website can be found at \(unwrappedWebsite).
                      It was designed by \(unwrappedDesigner).
                      """
                  print(message)
              }
          }
      }
  }
}

runProgram()
//: [Next](@next)
