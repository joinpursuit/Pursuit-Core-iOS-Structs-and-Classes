//
//  Fellow.swift
//  Structs-and-Classes
//
//  Created by Alex Paul on 10/26/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

class Fellow {
  var name: String
  var stressLevel: Int
  var age: Int
  var cohort: Double
  
  // initializer needed here since the properties are not initialized above
  init(name: String, stressLevel: Int, age: Int, cohort: Double) {
    self.name = name
    self.stressLevel = stressLevel
    self.age = age
    self.cohort = cohort
  }
  
  // methods
  
}
