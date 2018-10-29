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
  var stressLevel: StressLevel
  var cohort: Cohort
  var gender: Gender
  var name: String
  var car: Car?
  var email: String
  var isLegalToDrink: Bool
  
  // default memberwise intializer provided
  // do not need to implement initializer
  
  // methods
  
  // instance method
  func getFellowInfo() {
    print("Fellow\'s name is \(name) and belongs to the \(cohort) cohort, current stress level is \(stressLevel)")
  }
}
