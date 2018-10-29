//
//  Car.swift
//  Structs-and-Classes
//
//  Created by Alex Paul on 10/29/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

// class Car() inherits from the Vehicle() class
class Car: Vehicle { // subclass of parent class Vehicle()
  // properties
  var make: String
  var model: String
  var year: Int
  var trickedOutRims: Bool
  
  // initializer
  // self is similar to "this" is Java, Javascript
  init(wheels: Int, color: String, vehicleType: VehicleType,
       make: String, model: String, year: Int, trickedOutRims: Bool) {
    self.make = make
    self.model = model
    self.year = year
    self.trickedOutRims = trickedOutRims
    // must call parent initializer
    // super: refers to parent class
    super.init(wheels: wheels, color: color, vehicleType: vehicleType)
  }
  
  // methods
  
  // overriding
  override func getVehicleInfo() {
    print("\(color) \(year) \(make) is a \(vehicleType) vehicle")
  }
}
