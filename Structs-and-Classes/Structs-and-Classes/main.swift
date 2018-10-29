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

// STRUCTS

// let's model a struct object

// DIFFERENCES
