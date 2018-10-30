//
//  Fellow.swift
//  Structs-and-Classes
//
//  Created by Alex Paul on 10/29/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

struct Fellow {
  // properties
  
  // stored properties
  var stressLevel: StressLevel
  var cohort: Cohort
  var gender: Gender
  var firstName: String
  var lastName: String
  var car: Car?
  var email: String
  var isLegalToDrink: Bool
  
  // computed property
  // fullName is a read-only property
  // fullName is a getter
  var fullName: String {
    return firstName + " " + lastName
  }
  
  // property observers
  var isEmployed: Bool {
    willSet { // called when value is about to get set
      print("Employment status pending.......")
    }
    
    didSet {
      let message1 = "Congratulations \(firstName) on the job, all that hardwork paid off"
      let message2 = "Pursuit Advance is always here for you"
      if isEmployed {
        print(message1)
      } else {
        print(message2)
      }
    }
  }
  
  // type property using static keyword
  static var currentYear: Date {
    return Date()
  }
  
  // default memberwise intializer provided
  // do not need to implement initializer
  
  // methods
  
  // instance method
  func getFellowInfo() {
    print("Fellow\'s name is \(firstName) and belongs to the \(cohort) cohort, current stress level is \(stressLevel)")
  }
  
  // using mutating on a value type function gives us the ability to mutate a property of the value type e.g lastName
  // mutating func only on value types
  mutating func updateLastName() {
    lastName = "Pursuit"
  }
}
