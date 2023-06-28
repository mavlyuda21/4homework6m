//
//  DataBase.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

class DataBase{
    private var products: [Product] = []
    
    func addProduct(_ item: Product){
        products.append(item)
    }
    
    func getProduct(code: String) -> Product?{
        var model: Product? = nil
        for i in products{
            if i.code == code{
                model = i
            }
        }
        return model
    }
    
    func getCheck(){
        var totalString = ""
        var totalCost = 0
        for (index, product) in products.enumerated() {
            totalString += "\(index + 1). \(product.name). \(product.cost)\n"
            totalCost += product.cost
        }
        totalString += "Итого: \(totalCost) сом"
        print(totalString)
    }
    
}
