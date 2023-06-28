//
//  TV.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

class TV: Observer{
    func makeAdvertisement(name: String) {
        print("Внимание! Первый канал сообщает о новом магазине под названием - \(name)")
    }
}
