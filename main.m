//
//  main.m
//  objc-intro
//
//  Created by David Rifkin on 2/25/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Like a Swift terminal app, Main.m also defaults to printing Hello World
// function signature
// -> starts with return type (this returns int)
// -> name of the function
// -> in parens are arguments. int, char that is constant.
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Objc has "basic types". int, char, float. The rest of the types need to have a reference in memory (they are likely classes!) -> this reference comes from a pointer.
        
        // There's NO type inference in Objc. I can't say var a = 1
        // To end a line, we MUST put a semicolon. MUST. Compiler error otherwise :'((
        int a = 1;
        
        // we don't have a print function in Objc.
        // Logging is the process of sending some feedback about your program to another source. Locally, we'll log anything at any moment (maybe an error, maybe a way for us to debug some functions).
        // Ex: Firebase Analytics that send information to an API about the performance of the app, the usage (time using app, number of uses of app, etc).
        
        // NSLog does not do all the work of printing for us
        // Only can take a string, and you have to tell it where AND when to insert other types to be logged out
        // @ denotes a literal (talk more on Thursday)
        
        // In order to print stuff, we have to use string formatters in-text, with the values afterwards as arguments to the NSLog function
        // %f for decimals -> standard decimal in most languages is float, double has double the space
        // %@ for id -> which relates to objects
        // %d is for int!!!! we did it!
        
        NSLog(@"Hello, World! I declared an int. Let's print it using formatter d %d", a);
        
        //for-loop is going to work in a way that we're not all familiar with just yet/david didn't teach because it doesn't exist in Swift anymore
        //C-style loop - 3 arguments (expressions, really)
        // 1. initialize the variable to be used in the loop
        // 2. set a condition that remains true for the loop (if this condition is ever false, stop the loop)
        // 3. increment/decrement/etc our initialized variable.
        // can't say for i in 1...5
        // ++ just means increase by 1
        
        for (int a = 1 ; a > 0 ; a++ ) {
            // conditions to be evaluated must be in parens
            if (a % 2 == 0) {
                NSLog(@"here's the loop at this point");
            }
        }
    }
    return 0;
}


/*
 Objc - lets us stay objective? sure, Alex
 - is it the foundation for Swift? Not, but it works with it
 - we use its functions for when we make buttons, it interacts well with UIKit
 Why learn it?
 - looks good on a resume
 - built-in functions of Swift might not be as powerful as some from Objc
 - Swift is pretty new (came out in 2013) and iPhone came out a bunch of years before that, so apps were originally written in Objc
 Built on top of C-language
 - specifically, for the main reason, in its most useful form, to allow us to use Objects (have some properties, and have some behavior/do some stuff)
 - In swift, we've created objects using classes, structs, enums.
 - Swift's paradigm (the way we're meant to use it) is Protocol Oriented Programming. This means we can have objects but the way we tie everything together in our programs is to create protocols that share properties and behavior.
 - ObjC is meant for Object-Oriented Programming.
 
 4 Pillars of OOP
 - Encapsulation: Keeps data and functions safe from outside interference and misuse.
 - Inheritance: getting all the properties of your ancestors.
     - ancestor is the class that is the parent of your class (whether it's a superclass or a root class)
     - ex: ViewController: UIViewController (self.view, self.view.background, viewDidLoad, other lifecycle methods)
     - how is inheritance different than using a protocol
          - don't have to use everything that's inherited? Kinda
          - protocols are blueprints (no implementation unless extend them, set up some implementation in a class/struct), whereas with inheritance we actually HAVE properties and functions available to us.
 - Abstraction: take something complex and make it simple.
     - keep some things private so they can't be manipulated elsewhere.
     - giving our code a specific purpose for other people.
     - header file contains the interface - that's what a user can use this for.
     - .m file contains implementation for that interface's code (both what will be available to import via the interface, and any private functionality)
     - header files communicate between parts of the program, .m files are the "actual code" to execute
 - Polymorphism: derived from two greek words (many forms) a subclass can define its own behavior and share that behavior. TY JASON
     - Don't have to use a child in the same way you use the parent. Inheritance!!! overriding (viewDidLoad) and overloading (init??? same function with diff parameters) - use classes mainly.
         - Why not structs? Can mutate func but can't inherit functions/properties.
 
 What do these four pillars, and the fact that they almost always make use classes, mean for us when we use memory in Objc?
     - Classes have memory leaks
     - Classes are reference types, so almost everything we use is going to be a reference type.
     - We have to be careful with multiple references, and also we have to MANUALLY count our references.
EX:
 var a = SomeClassThing()
 var b = a
 //if I change a, it also changes b.
 
 Important Vocab Terms for next time.
 - Pointer: (hated by some) a var whose value is the address of another variable. Denoted by a *
 - Message-sending: objects in Objc don't actually have "methods" that we call. Instead, we say that they "send messages" to other objects.
     To make us feel better: the implementation is different than using a method in Swift, but... hey, everyone just calls them methods in Objc

 
 */

/*
 Brief tangent:
 What is a REPL
 - reads, evaluates, prints (loop that does this)
 Most coding interviews will be in a repl, not in XCode.
 some examples: coderpad.io, repl.it
 
 Compilers: how we BUILD our code
 Swift has the Swift compiler.
 ObjC has a compiler for multiple languages (built by Apple way back when) called CLANG.
 Both of these communicate with a system called LLVM to actually run your code.
 can create an executable file using clang in terminal
 */
