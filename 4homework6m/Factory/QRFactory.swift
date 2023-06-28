//
//  QRFactory.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

class QRFactory: ProductFactory{
    var method: CreateMethods = .qr
    
    func createProduct(name: String, cost: Int) -> Product {
        return Product(name: name, cost: cost, code: "\(Int.random(in: 100000...15000))")
    }
    
    
}
