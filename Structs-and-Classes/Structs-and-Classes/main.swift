//
//  main.swift
//  Structs-and-Classes
//
//  Created by Alex Paul on 10/26/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

// vocabulary: object oriented programming, base class, object, properties, methods, instantiation, initialization, accessing properties, instance methods, type methods

// what is object oriented programming: a model that represents the concepts of objects through properties and methods

// CLASSES

// let's model a class object

// create an instance of the Vehicle() class
let myVehicle = Vehicle(wheels: 4, color: "Matte Black", vehicleType: .land)

// accessing instance methods
myVehicle.getVehicleInfo()

// access instance properties
print("vehicle is \(myVehicle.color)")

// create a subclass of the Vehicle() class called Car(), and created an instance called nissan
let nissan = Car.init(wheels: 4, color: "Black", vehicleType: .land, make: "Rogue", model: "Nissan", year: 2009, trickedOutRims: true)

// DOES NOT call parent method, but calles it own implemetentation because getVehicleInfo was overridden
nissan.getVehicleInfo()

// using type method getACar() to create a new Car()
var newCar = Car.getACar()
newCar.make = "Fancy Car"
newCar.getVehicleInfo()

// useing type method getCars() to return x number or instance of Car() 's
let cars = Car.getCars(numberOfCars: 5) // 
for car in cars {
  car.make = "Audi"
  car.getVehicleInfo()
}

//using the type method getDescription()
print(Car.carDescription())

// classes are reference types
let ford = nissan
ford.model = "Ford"
ford.color = "Green"

nissan.getVehicleInfo()



// STRUCTS

// let's model a struct object

// create a Fellow() instance
// Fellow is using the memberwise initializer
let eli = Fellow.init(stressLevel: .high, cohort: .iOS, gender: .female, name: "Elizabeth", car: nil, email: "elizabeth@pursuit.org", isLegalToDrink: true)

// access the getFellowInfo() instance method 
eli.getFellowInfo()

var nathalie = eli
nathalie.name = "Nathalie"

eli.getFellowInfo()

nathalie.getFellowInfo()

let antonio = Fellow.init(stressLevel: .low, cohort: .iOS, gender: .male, name: "Antonio", car: nissan, email: "antonio@aol.com", isLegalToDrink: true)

// an array of Fellow() 's
let fellows = [eli, nathalie, antonio]
for fellow in fellows {
  if let _ = fellow.car {
    print("\(fellow.name), can I get a ride to Pursuit tomorrow?")
  }
}

// filter for iOS women conference
let femaleFellows = fellows.filter { $0.gender == .female }
print("there will be \(femaleFellows.count) women fellows at the conference")


// DIFFERENCES
/*
 structs has a memberwise initializer
 structs are value types - gets a copy and NOT a reference
 
 classes can inherit from other classes
 classes also require an initializer if properties do not have default values
 classes are reference types, all objects points to the same reference
 - mutating a property, does so on all references
*/
