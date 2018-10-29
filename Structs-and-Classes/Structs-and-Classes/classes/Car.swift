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
  
  // instance method -
  override func getVehicleInfo() {
    print("\(color) \(year) \(make) \(model) is a \(vehicleType) vehicle")
  }
  
  // type method or class method is called directly on the class
  // e.g Car.getACar()
  static func getACar() -> Car {
    let aCar = Car.init(wheels: 4, color: "White", vehicleType: .land, make: "Honda", model: "Civic", year: 2010, trickedOutRims: false)
    return aCar
  }
  
  // type method, class method, factory method
  // we are not accessing this method via an instance e.g nissan.getCars()
  // we are accessing this type method via the class name e.g Car.getCars()
  static func getCars(numberOfCars: Int) -> [Car] {
    var cars = [Car]()
    for _ in 1...numberOfCars {
      let car = Car.getACar()
      cars.append(car)
    }
    return cars
  }
  
  // write a class method to describe what a car is
  static func carDescription() -> String {
    return "a form of transportation"
  }
}


