//: [Previous](@previous)

import Foundation

/*: ## Multiple Optional Bindings
 if let statements are a great way to safely handle optional values. Sometimes, we might have a lot of optionals we need to unwrap! This can get very indented:
*/
 var a: Int? = 1
 var b: Int? = 2
 var c: Int? = 3
 var shouldPrintSum = true
  
 if let a = a {
     if let b = b {
         if let c = c {
             if shouldPrintSum {
                 print(a + b + c)
             }
         }
     }
 }
/*: Developers sometimes call this nested structure a Pyramid of Doom because it looks kind of like a sideways pyramid. To avoid these, Swift allows us to bind multiple variables with a single if let statement. */

 if let a = a, let b = b, let c = c, shouldPrintSum {
     print(a + b + c)
 }
/*
 Much easier to read! If all of the optionals are not nil and all of the bools are true, then the body is entered. Otherwise, that block is skipped. If the if let line becomes too long, you can break it up into multiple lines:
*/
 if let a = a,
    let b = b,
    let c = c,
    shouldPrintSum {
      print(a + b + c)
 }

/*
 ## Problem #4
 Refactor the code to use a single if let statement.
 */

var language = "Swift"
var firstRelease: Int? = 2014
var website: String? = "swift.org"
var designer: String? = "Chris Lattner"
var shouldDisplayMessage = true

// Refactor the code below to use a single if let statement

if let firstRelease = firstRelease {
    if let website = website {
        if let designer = designer {
            if shouldDisplayMessage {
                let message =
                    """
                    \(language) was first released in \(firstRelease).
                    Its website can be found at \(website).
                    It was designed by \(designer).
                    """
                print(message)
            }
        }
    }
}


//: [Next](@next)
