//
//  BarcodeFactory.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

class BarcodeFactory: ProductFactory{
    var method: CreateMethods = .barcode
    
    func createProduct(name: String, cost: Int) -> Product {
        return Product(name: name, cost: cost, code: "\(Int.random(in: 100000...150000))")
    }
}
