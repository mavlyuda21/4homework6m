//
//  Radio.swift
//  4homework6m
//
//  Created by mavluda on 28/6/23.
//

import Foundation

class Radio: Observer{
    func makeAdvertisement(name: String) {
        print("Внимание! Радио Рекорд сообщает о новом магазине под названием - \(name)")
    }
}
