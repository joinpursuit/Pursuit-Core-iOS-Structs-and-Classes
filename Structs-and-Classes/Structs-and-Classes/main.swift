//
//  main.swift
//  Structs-and-Classes
//
//  Created by Alex Paul on 10/26/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

// vocabulary
/*
 base class, encapsulation, inheritance, initialization, instantiation, properties, methods, object oriented programming
 object oriented programming - representing "objects" through properties and methods
 */

// create an instance of the Car() struct
// through use of property dot syntax update its values
var nissan = Car() // nissan is an instance of Car()
nissan.make = "Nissan"
nissan.model = "Rogue"
nissan.year = 2009

// uses the default struct memberwise initializer
// NB: only availble in structs, NOT classes
var ford = Car(make: "Ford", model: "Mustang", year: 1999)

// array of cars
let cars = [nissan, ford]

// iterating through the cars array
for car in cars {
  print("car make is \(car.make)")
}

// create Fellow() class instances
let antonio = Fellow(name: "Antonio", stressLevel: 10, age: 19, cohort: 5.3)
let diego = Fellow(name: "Diego", stressLevel: 9, age: 32, cohort: 5.3)
let ashli = Fellow(name: "Ashli", stressLevel: 5, age: 20, cohort: 5.3)

// create an array of fellows
let fellows = [antonio, diego, ashli]

// iterate through fellows
for fellow in fellows {
  print("Fellow\'s name is \(fellow.name)")
}
