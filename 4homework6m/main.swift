//
//  main.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

let frunze = Shop(name: "Frunze",method: .barcode)
let radio = Radio()
let tv = TV()
frunze.addObserver(object: radio)
frunze.addObserver(object: tv)
frunze.notifyAll()

frunze.addProduct(name: "Milk", cost: 150)
frunze.addProduct(name: "Snickers", cost: 50)
frunze.addProduct(name: "Cola", cost: 60)

frunze.printCheck()
