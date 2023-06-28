//
//  Shop.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

class Shop: Observable{
    var observers = NSMutableSet()
    
    func addObserver(object: Observer) {
        observers.add(object)
    }
    
    func removeObserver(object: Observer) {
        observers.remove(object)
    }
    
    func notifyAll() {
        for observer in observers{
            (observer as! Observer).makeAdvertisement(name: name)
        }
    }
    
    var name: String{
        didSet{
        notifyAll()
        }
    }
    
    private var dataBase = DataBase()
    private var method: CreateMethods? = nil
    private var productFactory: ProductFactory? = nil
    
    init(name: String,method: CreateMethods) {
        self.name = name
        self.method = method
        switch method {
        case .qr:
            self.productFactory = QRFactory()
        case .barcode:
            self.productFactory = BarcodeFactory()
        }
    }
    
    func addProduct(name: String, cost: Int){
        if let product = productFactory?.createProduct(name: name, cost: cost){
            dataBase.addProduct(product)
        }else{
            print("Error. Please try again")
        }
    }
    
    func printCheck(){
        dataBase.getCheck()
    }
}
