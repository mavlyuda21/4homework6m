//
//  Observable.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

protocol Observable: AnyObject{
    var name: String {get}
    var observers: NSMutableSet {get}
    
    func addObserver(object: Observer)
    
    func removeObserver(object: Observer)
    
    func notifyAll()
}
