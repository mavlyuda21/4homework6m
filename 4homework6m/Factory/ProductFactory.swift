//
//  ProductFactory.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

protocol ProductFactory: AnyObject{
    var method: CreateMethods {get}
    func createProduct(name: String, cost: Int) -> Product
}
