//
//  Vehicle.swift
//  Structs-and-Classes
//
//  Created by Alex Paul on 10/29/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

class Vehicle { // Vehicle is a base class - does not inherit from another class
  // properties - or attributes in some other languages
  
  // two ways to set properties:
  // 1. set default values e.g var wheels = 0
  // 2. using an initializer
  var wheels: Int
  var color: String
  var vehicleType: VehicleType
  
  // initializer - used when creating an instance of the Vehicle() class
  init(wheels: Int, color: String, vehicleType: VehicleType) {
    self.wheels = wheels // self refers to the current instance of Vehicle
    self.color = color
    self.vehicleType = vehicleType
  }
  
  // methods - refer to function of objects
  
  // instance methods 
  func getVehicleInfo() {
    print("This is a \(color) \(vehicleType.rawValue) vehicle")
  }
}
